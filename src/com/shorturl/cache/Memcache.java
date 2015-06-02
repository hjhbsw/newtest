package com.shorturl.cache;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.vika.memcached.MemCachedClient;
import cn.vika.memcached.SockIOPool;

import com.shorturl.common.Config;

/**
 * 缓存初始化，存取数据
 * 
 * @author yanglei
 * @version $Id: Memcache.java, v 0.1 2015年1月30日 上午9:57:05 yanglei Exp $
 */
public class Memcache {

    private static Logger                       log       = LoggerFactory.getLogger(Memcache.class);
    private static Map<String, SockIOPool>      pools     = new HashMap<String, SockIOPool>();

    private static ThreadLocal<MemCachedClient> mcClients = new ThreadLocal<MemCachedClient>();

    private Memcache() {
        // should not call
    }

    private static SockIOPool initSockPool(final String name, final String[] servers) {
        if (servers == null || servers.length <= 0) {
            throw new IllegalArgumentException("memcache servers not set: " + name);
        }

        for (int i = 0; i < servers.length; ++i) {
            servers[i] = servers[i].trim();
        }

        log.info("init sock pool for " + name + ", servers:" + servers[0] + " ... "
                 + servers.length);

        final SockIOPool pool = SockIOPool.getInstance(name);

        pool.setServers(servers);
        pool.setAliveCheck(true);
        // never fail over for mcdb
        pool.setFailover(false);
        pool.initialize();

        return pool;
    }

    public static String getMCValue(final String key) {
        final MemCachedClient mcClient = getMCClient();
        return (String) mcClient.get(key);
    }

    public static boolean setMCValue(final String key, final String value) {
        final MemCachedClient mcClient = getMCClient();
        return mcClient.set(key, value);
    }

    public static boolean delMCKey(final String key) {
        final MemCachedClient mcClient = getMCClient();
        return mcClient.delete(key);
    }

    public static MemCachedClient getMCClient() {
        MemCachedClient mcClient = mcClients.get();
        if (mcClient == null) {
            mcClient = getMCClient(Config.getProjectName(), CacheConfig.getMemcacheServers());
            mcClients.set(mcClient);
        }
        return mcClient;
    }

    public static MemCachedClient getMCClient(final String name, final String[] servers) {
        final String poolName = name + ":" + servers[0];
        final SockIOPool pool = pools.get(poolName);
        if (pool == null) {
            pools.put(poolName, initSockPool(poolName, servers));
        }

        MemCachedClient mc;

        mc = new MemCachedClient(poolName);
        // do not URLEncoder.encode( key, "UTF-8" )
        mc.setSanitizeKeys(false);
        // store all in String
        mc.setPrimitiveAsString(true);

        // do not record any error by default
        // mc.setErrorHandler(mcErrorHandler);

        return mc;
    }

    public static void shutdown() {
        for (final SockIOPool pool : pools.values()) {
            pool.shutDown();
        }
    }

    /**
     * @param args
     */
    public static void main(final String[] args) {
        final MemCachedClient client = getMCClient(Config.projectName + ".workqueue",
            CacheConfig.getMemcacheServers());
        client.set("a", "testValue11");
        System.out.println("test mc: " + client.get("a"));
    }
}
