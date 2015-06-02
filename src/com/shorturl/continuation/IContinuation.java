/**
 * 
 */
package com.shorturl.continuation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author tangfulin
 * @param <Result>
 * 
 */
public interface IContinuation<Result> {

	/**
	 * call with result, when job done
	 * 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	void onResult(final HttpServletRequest request,
			final HttpServletResponse response, final Result result);

	/**
	 * deal with job expired
	 * 
	 * @param request
	 * @param response
	 */
	void onExpire(final HttpServletRequest request,
			final HttpServletResponse response);

	/**
	 * deal with job exception
	 * 
	 * @param request
	 * @param response
	 * @param e
	 * @throws Exception
	 */
	void onException(final HttpServletRequest request,
			final HttpServletResponse response, final Exception e);

}
