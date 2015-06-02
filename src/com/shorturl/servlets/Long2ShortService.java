package com.shorturl.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;
import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;
import com.shorturl.model.UrlInfo;
import com.shorturl.model.UrlInfoVo;

/**
 * 长链接转短链接，请求参数只有一个长链接
 * 
 * @author yanglei
 * @version $Id: Long2Short.java, v 0.1 2015年1月30日 下午1:13:47 yanglei Exp $
 */
public class Long2ShortService extends HttpServlet implements FormatOutputServlet {

    private static Logger     log              = LoggerFactory.getLogger(Long2Short.class);

    private static final long serialVersionUID = -4995194185473101380L;

    @Override
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response)
                                                                                              throws ServletException,
                                                                                              IOException {

        final String url = request.getParameter(ServletConfig.PARAM_URL);

        if (url == null) {
            output.writeException(new ShorturlException(ExcepFactor.E_SHORTURL_PARAM_NULL),
                response, request);
            log.warn("param num error:" + url);
            return;
        }

        if (log.isDebugEnabled()) {
            log.debug("URLS:" + url);
        }

        try {
            final UrlInfo urlinfo = UrlInfo.getUrlInfoByLongUrl(url);
            UrlInfoVo urlinfovo = new UrlInfoVo();
            urlinfovo.setLongUrl(url);
            urlinfovo.setShortUrl(urlinfo.shortUrl);
            response.getWriter().print(JSON.toJSONString(urlinfovo));
        } catch (final ShorturlException e) {
            output.writeException(e, response, request);
            log.warn("exception:" + url + " " + e.getMessage());
        }

    }

    @Override
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response)
                                                                                               throws ServletException,
                                                                                               IOException {
        doGet(request, response);
    }

}
