/**
 * 
 */
package com.shorturl.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shorturl.common.ShorturlException;
import com.shorturl.model.UrlInfo;
import com.shorturl.utils.Base62Util;
import com.shorturl.utils.ShortenUtil;

/**
 * 处理短链接转换长链接，并获取相应文件的服务,每次请求只有一个短链接参数
 * 
 * @author yanglei
 * @version $Id: Short2LongService.java, v 0.1 2015年2月3日 下午5:09:53 yanglei Exp $
 */
public class Short2LongService extends HttpServlet implements FormatOutputServlet {

    private static Logger     log              = LoggerFactory.getLogger(Short2LongService.class);

    private static final long serialVersionUID = -4995194185473101384L;

    @Override
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response)
                                                                                              throws ServletException,
                                                                                              IOException {
        try {

            String path = request.getPathInfo();
            //去掉路径前的/获取token
            String token = path.substring(1);
            if(log.isDebugEnabled())
            {
            	log.debug("token=" + token);
            }

            if (!ShortenUtil.checkToken(token)) {
                log.warn("token error: " + token);
            }
            long id = Base62Util.base62Decode(token);
            UrlInfo urlinfo = new UrlInfo(id, token);
            ArrayList<UrlInfo> urlinfos = new ArrayList<UrlInfo>();
            urlinfos.add(urlinfo);
            //返回结果默认是string类型，即重定向到文件长链接物理地址
            output.writeUrlInfoList(request, response, urlinfos);
        } catch (ShorturlException e) {
            // TODO Auto-generated catch block
            output.writeException(e, response, request);
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response)
                                                                                               throws ServletException,
                                                                                               IOException {
        doGet(request, response);
    }

}
