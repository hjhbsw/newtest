package com.shorturl.server;

import java.sql.Connection;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shorturl.cache.CacheConfig;
import com.shorturl.cache.Memcache;
import com.shorturl.continuation.ContinuationConfig;
import com.shorturl.dao.ConnManager;

public class ShorturlInitListener implements ServletContextListener {
    private static Logger log = LoggerFactory.getLogger(ShorturlInitListener.class);

    /**
     * Default constructor. 
     */
    public ShorturlInitListener() {

    }

    /**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0) {
    	System.out.println("---------------start init");
        try {
            initResources();
        } catch (Throwable e) {
            throw new RuntimeException("init shorturl failed!", e);
        }

        if (log.isDebugEnabled()) {
            log.debug("Shorturl init");
        }
    }

    /**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0) {

    }

    private static void initResources() throws Exception {

        // init continuation thread pool
        ContinuationConfig.initThreadPool();

        System.out.println("---------------init threadpool");
        // init c3p0
        Connection conn;

        conn = ConnManager.getInstance().getWriteConnection();
        conn.close();

        System.out.println("---------------init db");
		// init mc
		if(CacheConfig.isUseCache())
		{
			Memcache.getMCClient().get("test");
		}
		
		System.out.println("---------------init memcache");
    }

}