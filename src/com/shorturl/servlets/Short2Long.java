/**
 * 
 */
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
 * 短链接转换成长链接，参数可以是多个短链接
 * 
 * @author yanglei
 * @version $Id: Short2Long.java, v 0.1 2015年2月3日 下午5:20:51 yanglei Exp $
 */
public class Short2Long extends HttpServlet implements FormatOutputServlet {

    private static Logger     log              = LoggerFactory.getLogger(Short2Long.class);

    private static final long serialVersionUID = -4995194185473101386L;

    @Override
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response)
                                                                                              throws ServletException,
                                                                                              IOException {

        final String[] urls = request.getParameterValues(ServletConfig.PARAM_KEY);

        if (urls == null || urls.length <= 0 || urls.length > ServletConfig.maxkeys()) {
            output.writeException(new ShorturlException(ExcepFactor.E_SHORTURL_WRONG_PARAM_NUM),
                response, request);
            log.warn("param num error:" + Arrays.toString(urls));
            return;
        }

        if (log.isDebugEnabled()) {
            log.debug("URLS:" + Arrays.toString(urls));
        }

        try {
            final ArrayList<UrlInfo> urlinfos = new UrlInfos(urls).getUrlInfos();

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

    /**
     * @param args
     */
    public static void main(final String[] args) {

    }

}
