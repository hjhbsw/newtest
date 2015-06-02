/**
 * 
 */
package com.shorturl.dao;

import com.shorturl.common.Config;
import com.shorturl.utils.MD5Util;

/**
 * 读取数据库配置
 * 
 * @author yanglei
 * @version $Id: DaoConfig.java, v 0.1 2015年1月30日 上午10:06:41 yanglei Exp $
 */
public class DaoConfig {

    public static final int     hashnum                = 256;

    public static final String  PHP_SERIALIZE_PREFIX   = "a:";
    public static final String  JSON_PREFIX            = "{";

    private static final String TABLE_NAME_PLACEHOLDER = "{TABLE_NAME}";
    private static final String URL_TABLE_PREFIX       = "shorturl_";
    private static final String MD5_TABLE_PREFIX       = "urlmd5_";

    public static final int getIdcNum() {
        return Config.getIntProperty("idc");
    }

    public static String getReadJdbcUrl() {
        return Config.getProperty("jdbcUrl.read");
    }

    public static String getWriteJdbcUrl() {
        return Config.getProperty("jdbcUrl.write");
    }

    public static String getRead0JdbcUrl() {
        return Config.getProperty("jdbcUrl.read0");
    }

    public static String getWrite0JdbcUrl() {
        return Config.getProperty("jdbcUrl.write0");
    }

    public static String getRead1JdbcUrl() {
        return Config.getProperty("jdbcUrl.read1");
    }

    public static String getWrite1JdbcUrl() {
        return Config.getProperty("jdbcUrl.write1");
    }

    public static String getRead2JdbcUrl() {
        return Config.getProperty("jdbcUrl.read2");
    }

    public static String getWrite2JdbcUrl() {
        return Config.getProperty("jdbcUrl.write2");
    }

    public static String getRead3JdbcUrl() {
        return Config.getProperty("jdbcUrl.read3");
    }

    public static String getWrite3JdbcUrl() {
        return Config.getProperty("jdbcUrl.write3");
    }

    public static String getC3P0Config(final String key) {
        return Config.getProperty("c3p0." + key);
    }

    public static int getIntC3P0Config(final String key) {
        return Config.getIntProperty("c3p0." + key);
    }

    public static boolean getBooleanC3P0Config(String key) {
        return Config.getBooleanProperty("c3p0." + key);
    }

    public static String getIDHash(final long id) {
                final long hash = id % hashnum;
                if (hash < 10) {
                    return "00" + hash;
                } else if (hash < 100) {
                    return "0" + hash;
                } else {
                    return "" + hash;
                }
//                return "001";
    }

    public static String getMD5Hash(final String md5) {
                final String hex = md5.substring(md5.length() - 4);
                final long hash = MD5Util.hexdec(hex) % hashnum;
                if (hash < 10) {
                    return "00" + hash;
                } else if (hash < 100) {
                    return "0" + hash;
                } else {
                    return "" + hash;
                }
//    	return "001";
    }

    public static String getMD5Sql(final String sql, final String md5) {
        final String tableName = MD5_TABLE_PREFIX + DaoConfig.getMD5Hash(md5);
        return sql.replace(TABLE_NAME_PLACEHOLDER, tableName);
    }

    public static String getUrlSql(final String sql, final long id) {
        final String tableName = URL_TABLE_PREFIX + DaoConfig.getIDHash(id);
        return sql.replace(TABLE_NAME_PLACEHOLDER, tableName);
    }

    /**
     * 
     * @方法名：isUseFullTableDS
     * @描述：(是否只用一个数据源)
     * @return
     * @输出：boolean
     * @作者：hejiahuan
     *
     */
    public static boolean isUseFullTableDS()
    {
    	return Config.getBooleanProperty("useFullDS");
    }
}
