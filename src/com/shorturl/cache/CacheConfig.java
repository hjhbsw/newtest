/**
 * 
 */
package com.shorturl.cache;

import com.shorturl.common.Config;
import com.shorturl.common.ConfigFromDB;

/**
 * memcache配置
 * 
 * @author yanglei
 * @version $Id: CacheConfig.java, v 0.1 2015年1月30日 上午9:19:28 yanglei Exp $
 */
public class CacheConfig {

	public static final String[] MEMCACHE_SERVER = ConfigFromDB.getProperties("memcache.servers", ";");
	
	public static final boolean isUseCache = ConfigFromDB.getBooleanProperty("memcache");
	
	public static final int CACHE_TIMEOUT = ConfigFromDB.getIntProperty("memcache.timeout");
    
	public static boolean isUseCache() {
        return isUseCache;
    }

    public static int getCacheTimeout() {
        return CACHE_TIMEOUT;
    }

    public static String[] getMemcacheServers() {
        return MEMCACHE_SERVER;
    }

}
