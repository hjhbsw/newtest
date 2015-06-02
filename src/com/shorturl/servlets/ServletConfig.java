/**
 * 
 */
package com.shorturl.servlets;

import com.shorturl.common.Config;
import com.shorturl.common.ConfigFromDB;

/**
 * servlet参数设置
 * 
 * @author cmcc
 * @version $Id: ServletConfig.java, v 0.1 2015年1月30日 下午1:09:14 cmcc Exp $
 */
public class ServletConfig {

    public static final String PARAM_URL  = "url";
    public static final String PARAM_TYPE = "type";

    public static final String PARAM_KEY  = "url"; //in order to unitify params for long2short and short2long modified by wangjian 

    public static final int MAX_URLS = ConfigFromDB.getIntProperty("params.maxurls");
   
    public static final int MAX_KEYS = ConfigFromDB.getIntProperty("params.maxkeys");
    public static final int maxurls() {
        return MAX_URLS;
    }

    public static final int maxkeys() {
        return MAX_KEYS;
    }

    /**
     * @param args
     */
    public static void main(final String[] args) {

    }

}
