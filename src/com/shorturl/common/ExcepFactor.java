/**
 *
 */
package com.shorturl.common;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

/**
 * 异常因素
 * 
 * @author yanglei
 * @version $Id: ExcepFactor.java, v 0.1 2015年1月30日 上午9:59:06 yanglei Exp $
 */
public enum ExcepFactor {

	/** 默认错误 */
	E_DEFAUL(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, 50001, "Error: system error!",
			"错误:系统错误!"),
	
	E_SHORTURL_SYSTEM_BUSY(HttpServletResponse.SC_SERVICE_UNAVAILABLE, 50302,
					"Error: Too many pending tasks, system is busy!", "错误:任务过多，系统繁忙!"),
	E_SHORTURL_JOB_EXPIRED(HttpServletResponse.SC_SERVICE_UNAVAILABLE, 50303,
							"Error: Job Expired", "错误: 任务超时。"),
	E_SHORTURL_RPC_ERROR(HttpServletResponse.SC_SERVICE_UNAVAILABLE, 50304,
									"Error: RPC ERROR", "错误: RPC错误。"),
									E_SHORTURL_PARAM_NULL(HttpServletResponse.SC_BAD_REQUEST, 50305,"Error: Parameter is null!",
											"错误：参数为null!"),
											E_SHORTURL_WRONG_REDIRECT(HttpServletResponse.SC_NOT_FOUND, 50306,"Error: Redirect failed!",
													"错误：资源不存在，重定向失败!"),
    
													E_SHORTURL_WRONG_PARAM_NUM(HttpServletResponse.SC_BAD_REQUEST, 40095,"Error: Wrong number of arguments!",
    		"错误：参数个数错误!"),
    E_SHORTURL_WRONG_PARAM_VALUE(HttpServletResponse.SC_BAD_REQUEST, 40096,"Error: Parameter value is not valid!",
    		"错误：参数值错误!"),
    E_SHORTURL_UNSUPPORT_FORMAT(HttpServletResponse.SC_BAD_REQUEST, 40097,"Error: Unsupported response format!",
    		"错误：不支持的返回格式！"),
    E_SHORTURL_LINK_FORBIDDEN(HttpServletResponse.SC_FORBIDDEN, 40390,"Error: Link Forbidden!",
			"错误:受禁止的链接！"),
	E_SHORTURL_IP_NOTAUTH(HttpServletResponse.SC_FORBIDDEN, 40391,"Error: IP not authenticated!",
			"错误:未认证的IP！"),
	E_SHORTURL_ILLEGAL_REQUEST(HttpServletResponse.SC_FORBIDDEN, 40392,"Error: Illegal Request!",
			"错误:非法请求！"),
	E_LONGURL_NOT_EXIST_MAPPING(HttpServletResponse.SC_FORBIDDEN, 40393,"Error: Illegal Request!",
			"错误:原有长连接未建立映射！");
	
	private int status;
	private int errorCode;
	private String errorMsg;
	private String errorMsgCn;

	ExcepFactor(int status, int errorCode, String errorMsg, String errorMsgCn) {
		this.status = status;
		this.errorCode = errorCode;
		this.errorMsg = errorMsg;
		this.errorMsgCn = errorMsgCn;
	}

	public int getStatus() {
		return status;
	}

	public int getErrorCode() {
		return errorCode;
	}

	public String getErrorMsg() {
		return errorMsg;
	}
	
	public String getErrorMsg(Object ...args){
		return String.format(errorMsg, args);
	}

	public String getErrorMsgCn() {
		return errorMsgCn;
	}
	
	public String toXML(String URI, Object ...args){
		StringBuilder sb = new StringBuilder();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
		sb.append("<hash>\n");
		sb.append("\t<request>").append(URI).append("</request>\n");
		sb.append("\t<error_code>").append(this.getErrorCode()).append("</error_code>\n");
		sb.append("\t<error>").append(this.getErrorMsg(args)).append("</error>\n");
		sb.append("</hash>\n");
		return sb.toString();
	}
	public String toJSON(String URI, Object ...args){
		StringBuilder sb = new StringBuilder();
		sb.append("{\n");
		sb.append("\t\"request\":\"").append(URI).append("\",\n");
		sb.append("\t\"error_code\":\"").append(this.getErrorCode()).append("\",\n");
		sb.append("\t\"error\":\"").append(this.getErrorMsg(args)).append("\"\n");
		sb.append("}\n");
		return sb.toString();
	}
	
	public String toString(){
		return "status:"+this.status+",error_code:"+this.errorCode
		+",errorMsg_cn:"+this.errorMsgCn;
	}
	
	public static void main(String[] args){
		List<ExcepFactor> explist = Arrays.asList(ExcepFactor.values());
		Collections.sort(explist, new Comparator<ExcepFactor>() {

			@Override
			public int compare(ExcepFactor o1, ExcepFactor o2) {
				return o1.getErrorCode() - o2.getErrorCode();
			}
			
		});
		filterByStatus(500,explist);
		filterByName("E_SHORTURL", explist);
	}
	private static void filterByName(String name,List<ExcepFactor> explist){
		for (ExcepFactor exp: explist){
			if (exp.name().contains(name)){
				System.out.println(exp.name()+" - "+exp.getErrorCode()+" : "+exp.getErrorMsgCn()+":"+exp.getErrorMsg());
			}
		}
	}
	private static void filterByStatus(int status,List<ExcepFactor> explist){
		for (ExcepFactor exp: explist){
			if (exp.getStatus()==status){
				System.out.println(exp.name()+" - "+exp.getErrorCode()+" : "+exp.getErrorMsgCn()+":"+exp.getErrorMsg());
			}
		}
	}

}
