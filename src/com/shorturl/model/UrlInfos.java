/**
 * 
 */
package com.shorturl.model;

import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.sina.data.utils.TooManyWaitingTaskException;

import com.shorturl.common.Config;
import com.shorturl.common.ConfigFromDB;
import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;
import com.shorturl.continuation.TaskManager;

/**
 * 多个UrlInfo的处理，请求参数url为多个
 * 
 * @author yanglei
 * @version $Id: UrlInfos.java, v 0.1 2015年2月3日 下午5:18:59 yanglei Exp $
 */
public class UrlInfos {

    private static Logger               log        = LoggerFactory.getLogger(UrlInfos.class);
    final ArrayList<UrlInfo>            urlinfos   = new ArrayList<UrlInfo>();
    final ArrayList<FutureTask<Object>> taskList   = new ArrayList<FutureTask<Object>>();
    public static final int             subTimeout = ConfigFromDB.getIntProperty("subtask.timeout");

    CountDownLatch                      countDown;

    public UrlInfos(final String[] longUrls, final boolean isSecure) throws ShorturlException {

        if (longUrls.length == 1) {
            final UrlInfo urlinfo = UrlInfo.getUrlInfoByLongUrl(longUrls[0]);
            urlinfos.add(urlinfo);
            return;
        }

        countDown = new CountDownLatch(longUrls.length);

        for (final String url : longUrls) {
            final FutureTask<Object> ftask = new FutureTask<Object>(new Long2ShortRunner(url,
                isSecure, countDown));
            try {
                TaskManager.submitFutureTask(ftask);
            } catch (final TooManyWaitingTaskException e) {
                log.warn("too many tasks", e);
                throw new ShorturlException(ExcepFactor.E_SHORTURL_SYSTEM_BUSY);
            }
            taskList.add(ftask);
        }
        waitForResult();
    }

    public UrlInfos(final String[] shortUrls) throws ShorturlException {

        if (shortUrls.length == 1) {
            urlinfos.add(UrlInfo.getUrlInfoByShortUrl(shortUrls[0]));
            return;
        }

        countDown = new CountDownLatch(shortUrls.length);

        for (final String url : shortUrls) {
            final FutureTask<Object> ftask = new FutureTask<Object>(new Short2LongRunner(url,
                countDown));
            try {
                TaskManager.submitFutureTask(ftask);
            } catch (final TooManyWaitingTaskException e) {
                log.warn("too many tasks", e);
                throw new ShorturlException(ExcepFactor.E_SHORTURL_SYSTEM_BUSY);
            }
            taskList.add(ftask);
        }
        waitForResult();
    }

    public UrlInfos(final Map<String,String> map) throws ShorturlException
    {
    	Set<String> set = map.keySet();
    	if(map.size() == 1)
    	{
    		for(String old:set)
    		{
    			urlinfos.add(new ChangeUrl(old, map.get(old)));
    		}
    	}
    	
    	 countDown = new CountDownLatch(map.size());

         for (final String url : set) {
             
        	 final FutureTask<Object> ftask = new FutureTask<Object>(new ChangeMapRunner(url,map.get(url),
                 countDown));
             try {
                 TaskManager.submitFutureTask(ftask);
             } catch (final TooManyWaitingTaskException e) {
                 log.warn("too many tasks", e);
                 throw new ShorturlException(ExcepFactor.E_SHORTURL_SYSTEM_BUSY);
             }
             taskList.add(ftask);
         }
         waitForResult();
    	
    }
    public ArrayList<UrlInfo> getUrlInfos() {
        return urlinfos;
    }

    private void waitForResult() {
        boolean result = false;
        try {
            result = countDown.await(subTimeout, TimeUnit.MILLISECONDS);
        } catch (final InterruptedException ex) {
            // go on
        }
        if (result) {
            // all done
            for (final FutureTask<Object> ftask : taskList) {
                try {
                    final Object obj = ftask.get();
                    if (obj != null && obj instanceof UrlInfo) {
                        urlinfos.add((UrlInfo) obj);
                    }
                } catch (final InterruptedException ex) {
                    log.warn("Interrupted", ex);
                } catch (final ExecutionException ex) {
                    log.warn("Execution error", ex.getCause());
                } catch (final CancellationException ex) {
                    log.warn("CancellationException", ex);
                }
            }
        } else {
            // time out
            for (final FutureTask<Object> ftask : taskList) {
                try {
                    final Object obj = ftask.get(10, TimeUnit.MILLISECONDS);
                    if (obj != null && obj instanceof UrlInfo) {
                        urlinfos.add((UrlInfo) obj);
                    }
                } catch (final TimeoutException ex) {
                    ftask.cancel(false);
                    log.warn("timeout", ex);
                } catch (final ExecutionException ex) {
                    log.warn("Execution error", ex.getCause());
                } catch (final InterruptedException ex) {
                    log.warn("InterruptedException error", ex);
                } catch (final CancellationException ex) {
                    log.warn("CancellationException", ex);
                }
            }
            log.warn("IncomingTasks: " + taskList.size() + " CompleteTasks: " + urlinfos.size());
        }
    }

    class Long2ShortRunner implements Callable<Object> {

        String               url;
        final boolean        isSecure;
        final CountDownLatch countDown;

        public Long2ShortRunner(final String url, final boolean isSecure, CountDownLatch countDown) {
            this.url = url.trim();
            this.isSecure = isSecure;
            this.countDown = countDown;
        }

        @Override
        public Object call() {
            try {
                String thread = Thread.currentThread().getName();
                if (thread.contains("Runner")) {
                    thread = "";
                }
                Thread.currentThread().setName(thread + "-l2sRunner-" + url);

                final UrlInfo urlinfo = UrlInfo.getUrlInfoByLongUrl(url);
                if (log.isDebugEnabled()) {
                    log.debug("Long2ShortRunner:" + urlinfo);
                }
                return urlinfo;
            } catch (final Exception e) {
                log.warn("getUrlInfoByLongUrl error: " + url + " " + e);
                return null;
            } finally {
                countDown.countDown();
            }

        }
    }

    class Short2LongRunner implements Callable<Object> {

        String               url;
        final CountDownLatch countDown;

        public Short2LongRunner(final String url, CountDownLatch countDown) {
            this.url = url.trim();
            this.countDown = countDown;
        }

        @Override
        public Object call() {
            try {
                String thread = Thread.currentThread().getName();
                if (thread.contains("Runner")) {
                    thread = "";
                }
                Thread.currentThread().setName(thread + "-s2lRunner-" + url);

                final UrlInfo urlinfo = UrlInfo.getUrlInfoByShortUrl(url);

                if (log.isDebugEnabled()) {
                    log.debug("Short2LongRunner:" + urlinfo);
                }

                return urlinfo;
            } catch (final Exception e) {
                log.warn("getUrlInfoByLongUrl error: " + url + " " + e);
                return null;
            } finally {
                countDown.countDown();
            }

        }
    }

    class ChangeMapRunner implements Callable<Object> {

        String               old;
        String 				newUrl;
        CountDownLatch countDown;
        
        public ChangeMapRunner(final String oldUrl,final String newUrl ,final CountDownLatch countDown) {
            this.old = oldUrl.trim();
            this.newUrl = newUrl.trim();
            this.countDown = countDown;
        }

        @Override
        public Object call() {
            try {
                String thread = Thread.currentThread().getName();
                if (thread.contains("Runner")) {
                    thread = "";
                }
                Thread.currentThread().setName(thread + "-sleRunner-");

                final UrlInfo urlinfo = ChangeUrl.getChangeUrl(old,newUrl);

                if (log.isDebugEnabled()) {
                    log.debug("Short2LongRunner:" + urlinfo);
                }

                return urlinfo;
            } catch (final Exception e) {
                log.warn("getUrlInfoByLongUrl error: " + old+"-2-"+newUrl + " " + e);
                return null;
            } finally {
                countDown.countDown();
            }

        }
    }
    @Override
    public String toString() {
        return Formatter.toString(urlinfos);
    }

    /**
     * @param args
     * @throws ShorturlException
     */
    public static void main(final String[] args) throws ShorturlException {
        final UrlInfos urlinfos = new UrlInfos(new String[] { "http://blog.fulin.org",
                "http://t.sina.com.cn/tangfl", "http://weibo.com", "http://reader.google.com" },
            true);

        System.out.println(urlinfos);
    }
}
