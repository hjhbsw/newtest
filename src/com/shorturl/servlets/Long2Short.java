package com.shorturl.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;
import com.shorturl.model.UrlInfo;
import com.shorturl.model.UrlInfos;

/**
 * 长链接转短链接，请求参数可以是多个长链接
 * 
 * @author yanglei
 * @version $Id: Long2Short.java, v 0.1 2015年1月30日 下午1:13:47 yanglei Exp $
 */
public class Long2Short extends HttpServlet implements FormatOutputServlet {

    private static Logger     log              = LoggerFactory.getLogger(Long2Short.class);

    private static final long serialVersionUID = -4995194185473101382L;

    @Override
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response)
                                                                                              throws ServletException,
                                                                                              IOException {

        final String[] urls = request.getParameterValues(ServletConfig.PARAM_URL);

        if (urls == null || urls.length <= 0 || urls.length > ServletConfig.maxurls()) {
            output.writeException(new ShorturlException(ExcepFactor.E_SHORTURL_WRONG_PARAM_NUM),
                response, request);
            log.warn("param num error:" + Arrays.toString(urls));
            return;
        }

        if (log.isDebugEnabled()) {
            log.debug("URLS:" + Arrays.toString(urls));
        }

        try {
            final ArrayList<UrlInfo> urlinfos = new UrlInfos(urls, true).getUrlInfos();
            output.writeUrlInfoList(request, response, urlinfos);
        } catch (final ShorturlException e) {
            output.writeException(e, response, request);
            log.warn("exception:" + Arrays.toString(urls) + " " + e.getMessage());
        }

    }

    @Override
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response)
                                                                                               throws ServletException,
                                                                                               IOException {
        doGet(request, response);
    }

}
