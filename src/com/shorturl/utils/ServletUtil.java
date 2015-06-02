package com.shorturl.utils;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;


public class ServletUtil {
	/**
	 * @param req
	 * @return
	 * @throws IOException
	 */
	public static String getPayload(HttpServletRequest request) throws IOException {
		StringBuilder _payload = new StringBuilder();
		int _contentLength = getContentLength(request);
		// if content-length is null or 0, set it to 512
		_contentLength = _contentLength == 0 ? 512 : _contentLength;		
		
		char[] _charBuffer = new char[_contentLength];
		BufferedReader _reader = request.getReader();
		int _len;
		while ((_len = _reader.read(_charBuffer, 0, _charBuffer.length)) != -1) {
			_payload.append(_charBuffer, 0, _len);
		}
		
		return _payload.toString();
	}
	
	/**
	 * 查询Content-length长度
	 * @param req
	 * @return
	 */
	public static int getContentLength(HttpServletRequest req) {
		String _contentLengthStr = req.getHeader("content-length");
		int _contentLength = 0;
		if (StringUtils.isNotBlank(_contentLengthStr)) {
			_contentLength = Integer.parseInt(_contentLengthStr);
		}
		return _contentLength;
	}
}
