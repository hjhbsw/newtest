package com.shorturl.utils;

import com.shorturl.common.Config;
import com.shorturl.common.ConfigFromDB;

/**
 * 短链接处理工具
 * 
 * @author cmcc
 * @version $Id: ShortenUtil.java, v 0.1 2015年1月30日 上午11:16:03 cmcc Exp $
 */
public class ShortenUtil {

    private static final String[] shorturlPrefix = ConfigFromDB.getProperties("shorturl.prefix", ";");

    private static final int MIN_URL_LEN =  ConfigFromDB.getIntProperty("params.minurllen");
    
    private static final int MAX_URL_LEN = ConfigFromDB.getIntProperty("params.maxurllen");
    
    public static boolean hasShortUrlPrefix(final String url) {
        for (final String hostname : shorturlPrefix) {
            if (url.toLowerCase().startsWith("http://" + hostname + "/")) {
                return true;
            }
        }
        return false;
    }

    public static void processToToken(final String[] urls) {
        for (int i = 0; i < urls.length; i++) {
            urls[i] = getToken(urls[i]);
        }
    }

    public static String getToken(final String url) {
        for (final String hostname : shorturlPrefix) {
            if (url.startsWith("http://" + hostname + "/")) {
                return url.substring(("http://" + hostname + "/").length(), url.length());
            } else if (url.startsWith("HTTP://" + hostname.toUpperCase() + "/")) {
                return url.substring(("HTTP://" + hostname.toUpperCase() + "/").length(),
                    url.length());
            }
        }
        return url;
    }

    public static boolean checkToken(final String token) {
        if (token.length() < 4 || token.length() > 8) {
            return false;
        }
        // TODO check if token contains anything more than 0-9a-zA-Z ?
        return true;
    }

    public static boolean validUrl(final String url) {
        if (url == null) {
            return false;
        }

        // http://
        if (url.length() <= MIN_URL_LEN
            || url.length() > MAX_URL_LEN) {
            return false;
        }

        final String lowUrl = url.toLowerCase();

        if (lowUrl.startsWith("http://") || lowUrl.startsWith("https://")) {
            return true;
        }

        return false;
    }
}
