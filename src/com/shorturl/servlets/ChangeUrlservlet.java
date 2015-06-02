package com.shorturl.servlets;

import java.io.IOException;
import java.util.Map;

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
import com.shorturl.model.UrlInfos;
import com.shorturl.model.UrlMap;
import com.shorturl.utils.ServletUtil;


public class ChangeUrlservlet extends HttpServlet implements FormatOutputServlet {
	
	/**
	 * @名称：serialVersionUID
	 * @类型：long
	 */
	private static final long serialVersionUID = 3644487090992082576L;
	
	private static Logger     log              = LoggerFactory.getLogger(ChangeUrlservlet.class);

    @Override
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response)
                                                                                              throws ServletException,
                                                                                              IOException {
    	output.writeException(new ShorturlException(ExcepFactor.E_SHORTURL_ILLEGAL_REQUEST), response, request);
        
    }

    @Override
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response)
                                                                                               throws ServletException,
                                                                                               IOException {
    	String payload = ServletUtil.getPayload(request);
    	
    	try
    	{
    		UrlMap urlMap = JSON.parseObject(payload, UrlMap.class);
    		Map<String,String> map = urlMap.getUrlMap();
    		
    		if(!(map.size() >0))
    		{
    			throw new ShorturlException(ExcepFactor.E_SHORTURL_PARAM_NULL);
    		}
    		new UrlInfos(map);
    	}
    	catch(ShorturlException e)
    	{
    		output.writeException(e, response, request);
            log.warn("exception:" + payload + " " + e.getMessage());
    	}
    	catch (Exception e) {
			output.writeException(new ShorturlException(ExcepFactor.E_SHORTURL_WRONG_PARAM_VALUE, e), response, request);
		}
 
    }
}
