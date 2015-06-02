package com.shorturl.servlets;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.sina.data.utils.CustomThreadPoolExecutor;
import cn.sina.data.utils.PriorityThreadPoolManager;
import cn.sina.data.utils.ThreadPoolManager;

import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;
import com.shorturl.continuation.TaskManager;

public class ExceptionFilter implements Filter {

    private static final Logger logger                 = LoggerFactory
                                                           .getLogger(ExceptionFilter.class);

    private int                 maxPriorityPoolSize    = 100;
    private int                 normalPriorityPoolSize = 100;
    private int                 minPriorityPoolSize    = 100;
    private int                 maxPriorityPoolWait    = 1000;
    private int                 normalPriorityPoolWait = 1000;
    private int                 minPriorityPoolWait    = 1000;

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain chain)
                                                                                      throws IOException,
                                                                                      ServletException {
        HttpServletRequest request = (HttpServletRequest) arg0;
        HttpServletResponse response = (HttpServletResponse) arg1;
        try {
            chain.doFilter(request, response);
        } catch (Exception e) {
            new ResponseWriter().writeException(new ShorturlException(ExcepFactor.E_DEFAUL),
                (HttpServletResponse) response, request);
            logger.warn("on exception:" + request, e);
        }
    }

    @Override
    public void init(FilterConfig config) throws ServletException {

        ThreadPoolManager exec = TaskManager.getThreadPoolManager();
        if (exec == null) {
            logger.info("init ThreadPoolManager ");

            initPriorityPollConfig(config);

            final CustomThreadPoolExecutor maxPriorityExecutor = new CustomThreadPoolExecutor(
                maxPriorityPoolSize, maxPriorityPoolWait);
            final CustomThreadPoolExecutor normalPriorityExecutor = new CustomThreadPoolExecutor(
                normalPriorityPoolSize, normalPriorityPoolWait);
            final CustomThreadPoolExecutor minPriorityExecutor = new CustomThreadPoolExecutor(
                minPriorityPoolSize, minPriorityPoolWait);

            exec = new PriorityThreadPoolManager(maxPriorityExecutor, normalPriorityExecutor,
                minPriorityExecutor);

            TaskManager.setThreadPoolManager(exec);
        }
    }

    private void initPriorityPollConfig(final FilterConfig filterconfig) {
        if (filterconfig == null) {
            return;
        }
        if (filterconfig.getInitParameter("maxPriorityPoolSize") != null) {
            maxPriorityPoolSize = Integer.parseInt(filterconfig
                .getInitParameter("maxPriorityPoolSize"));
        }
        if (filterconfig.getInitParameter("maxPriorityPoolWait") != null) {
            maxPriorityPoolWait = Integer.parseInt(filterconfig
                .getInitParameter("maxPriorityPoolWait"));
        }
        if (filterconfig.getInitParameter("normalPriorityPoolSize") != null) {
            normalPriorityPoolSize = Integer.parseInt(filterconfig
                .getInitParameter("normalPriorityPoolSize"));
        }
        if (filterconfig.getInitParameter("normalPriorityPoolWait") != null) {
            normalPriorityPoolWait = Integer.parseInt(filterconfig
                .getInitParameter("normalPriorityPoolWait"));
        }
        if (filterconfig.getInitParameter("minPriorityPoolSize") != null) {
            minPriorityPoolSize = Integer.parseInt(filterconfig
                .getInitParameter("minPriorityPoolSize"));
        }
        if (filterconfig.getInitParameter("minPriorityPoolWait") != null) {
            minPriorityPoolWait = Integer.parseInt(filterconfig
                .getInitParameter("minPriorityPoolWait"));
        }
    }

}
