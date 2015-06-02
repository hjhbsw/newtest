/**
 * 
 */
package com.shorturl.continuation;

import cn.sina.data.utils.CustomThreadPoolExecutor;
import cn.sina.data.utils.PriorityThreadPoolManager;
import cn.sina.data.utils.ThreadPoolManager;

import com.shorturl.common.Config;
import com.shorturl.common.ConfigFromDB;

/**
 * 未来任务的配置文件
 * 
 * @author yanglei
 * @version $Id: ContinuationConfig.java, v 0.1 2015年1月30日 下午2:11:29 yanglei Exp $
 */
public class ContinuationConfig {

    public static final int getTimeout() {
        return ConfigFromDB.getIntProperty("continuation.timeout");
    }

    public static int getMaxPoolSize() {
        return ConfigFromDB.getIntProperty("continuation.pool.max.size");
    }

    public static int getMaxPoolWait() {
        return ConfigFromDB.getIntProperty("continuation.pool.max.wait");
    }

    public static int getMinPoolSize() {
        return ConfigFromDB.getIntProperty("continuation.pool.min.size");
    }

    public static int getMinPoolWait() {
        return ConfigFromDB.getIntProperty("continuation.pool.min.wait");
    }

    public static int getNormalPoolSize() {
        return ConfigFromDB.getIntProperty("continuation.pool.normal.size");
    }

    public static int getNormalPoolWait() {
        return ConfigFromDB.getIntProperty("continuation.pool.normal.wait");
    }

    public static void initThreadPool() {
        ThreadPoolManager exec = TaskManager.getThreadPoolManager();
        if (exec == null) {
            final CustomThreadPoolExecutor maxPriorityExecutor = new CustomThreadPoolExecutor(
                ContinuationConfig.getMaxPoolSize(), ContinuationConfig.getMaxPoolWait());
            final CustomThreadPoolExecutor normalPriorityExecutor = new CustomThreadPoolExecutor(
                ContinuationConfig.getNormalPoolSize(), ContinuationConfig.getNormalPoolWait());
            final CustomThreadPoolExecutor minPriorityExecutor = new CustomThreadPoolExecutor(
                ContinuationConfig.getMinPoolSize(), ContinuationConfig.getMinPoolWait());

            exec = new PriorityThreadPoolManager(maxPriorityExecutor, normalPriorityExecutor,
                minPriorityExecutor);

            TaskManager.setThreadPoolManager(exec);
            TaskManager.setTimeout(getTimeout());
        }
    }

}
