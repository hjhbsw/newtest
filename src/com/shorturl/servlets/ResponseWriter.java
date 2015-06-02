package com.shorturl.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.shorturl.common.ConfigFromDB;
import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;
import com.shorturl.model.Formatter;
import com.shorturl.model.UrlInfo;

/**
 * 返回结果写回类
 * 
 * @author yanglei
 * @version $Id: ResponseWriter.java, v 0.1 2015年2月4日 下午2:44:44 yanglei Exp $
 */
public class ResponseWriter {

	private static final boolean FLUSH_WRITER = ConfigFromDB.getBooleanProperty("response.flushafterwrite");
    /**
     * 返回结果有xml,json,redirect三种形式，文件重定向使用redirect类型
     * 
     * @param request
     * @param response
     * @param urlinfos
     * @throws IOException
     */
    public void writeUrlInfoList(final HttpServletRequest request,
                                 final HttpServletResponse response, final List<UrlInfo> urlinfos)
                                                                                                  throws IOException {
        final Formatter.FORMAT format = Formatter.FORMAT.getFormat(request);
        response.setCharacterEncoding("UTF-8");

        switch (format) {
            case xml:
                response.setContentType(Formatter.MIME_XML);
                response.getWriter().print(Formatter.toXML(urlinfos));
                break;
            case json:
                response.setContentType(Formatter.MIME_JSON);
                response.getWriter().print(Formatter.toJSON(urlinfos));
                break;
            case redirect:
                response.setContentType(Formatter.MIME_STRING);
                if (urlinfos.size() == 1 && !"".endsWith(urlinfos.get(0).longUrl)) {
                    //短链接转长链接服务（只处理一个短链接get（0）），重定向到物理地址
                    response.sendRedirect(urlinfos.get(0).longUrl);
                } else {
                    writeException(new ShorturlException(ExcepFactor.E_SHORTURL_WRONG_REDIRECT),
                        response, request);
                }
                break;
            default:
                writeException(new ShorturlException(ExcepFactor.E_SHORTURL_UNSUPPORT_FORMAT),
                    response, request);
                break;
        }

        if (FLUSH_WRITER) {
            response.flushBuffer();
        }
    }

    public void writeException(final ShorturlException e, final HttpServletResponse response,
                               final HttpServletRequest request) throws IOException {

        final String URI = request.getRequestURI();
        final Formatter.FORMAT format = Formatter.FORMAT.getFormat(request);
        response.setCharacterEncoding("UTF-8");
        response.setStatus(e.getExpmodel().getStatus());

        switch (format) {
            case xml:
                response.setContentType(Formatter.MIME_XML);
                response.getWriter().print(e.getExpmodel().toXML(URI, ""));
                break;
            case json:
                response.setContentType(Formatter.MIME_JSON);
                response.getWriter().print(e.getExpmodel().toJSON(URI, ""));
                break;
            case redirect:
                response.setContentType(Formatter.MIME_STRING);
                response.getWriter().print(e.getExpmodel().toString());
                break;
            default:
                response.setContentType(Formatter.MIME_STRING);
                response.getWriter().print(e.getExpmodel().toString());
                break;
        }

        if (FLUSH_WRITER) {
            response.flushBuffer();
        }
    }

}
