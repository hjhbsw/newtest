package com.shorturl.utils;

import com.shorturl.common.ConfigFromDB;
import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;

/**
 * 字母和数字共62个字符，由id得到token编码
 * 
 * @author cmcc
 * @version $Id: Base62Util.java, v 0.1 2015年1月30日 上午10:38:42 cmcc Exp $
 */
public class Base62Util {

    private static final String seed = ConfigFromDB.getProperty("base62.seed");
    private static final long   base = 62;

    public static String base62Encode(final long id) {
        final StringBuilder sb = new StringBuilder();
        long num = id;
        int value;
        while (num > 0) {
            value = (int) (num % base);
            num = num / base;
            sb.append(seed.charAt(value));
        }

        return sb.reverse().toString();
    }

    public static long base62Decode(final String str) throws ShorturlException {
        long num = 0;
        int pos;
        char c;
        for (int i = 0; i < str.length(); ++i) {
            c = str.charAt(i);
            pos = seed.indexOf(c);
            if (pos < 0) {
                throw new ShorturlException(ExcepFactor.E_SHORTURL_WRONG_PARAM_VALUE);
            }
            num = num * base + pos;
        }
        return num;
    }

    /**
     * @param args
     * @throws ShorturlException
     */
    public static void main(final String[] args) throws ShorturlException {
        System.out.println(base62Decode("sorry")); // 20 + 40195082
        System.out.println(base62Decode("aNvKqn"));
        System.out.println(base62Encode(100000));
        System.out.println(base62Encode(9000000));
        System.out.println(base62Encode(100000000));
    }

}
