package com.shorturl.dao;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;
import com.shorturl.model.UrlInfo;

public class ShorturlLoad {
    private static Logger       log                      = LoggerFactory
                                                             .getLogger(ShorturlLoad.class);

    private static final String SELECT_URL_SQL_NOCONVERT = "SELECT id, url, ctime, type, ext FROM `{TABLE_NAME}` WHERE id=?";

    private static final String SELECT_MD5_SQL           = "SELECT "
                                                           + "urlmd5, id FROM `{TABLE_NAME}` WHERE urlmd5=?";

    private static final int    RETRY_TIMES              = 2;

    public static boolean loadURL(final UrlInfo urlinfo) throws ShorturlException {
        for (int i = 0; i < RETRY_TIMES; i++) {
            try {
                boolean ret = doloadURL(urlinfo);

                return ret;
            } catch (SQLException e) {
                if (i == RETRY_TIMES - 1) {
                    String sql = DaoConfig.getUrlSql(SELECT_URL_SQL_NOCONVERT, urlinfo.id);
                    log.error("db error: " + sql, e);
                    throw new ShorturlException(ExcepFactor.E_DEFAUL, e);
                }
            }
        }
        // 理论上不会执行到这里
        return false;
    }

    public static boolean doloadURL(final UrlInfo urlinfo) throws ShorturlException, SQLException {
        final long id = urlinfo.id;

        String subfix = DaoConfig.getIDHash(id);

        Connection conn = ConnManager.getInstance().getReadConnection(subfix);
        PreparedStatement ps;
        ResultSet rs;

        String sql = DaoConfig.getUrlSql(SELECT_URL_SQL_NOCONVERT, id);

        try {
            if (log.isDebugEnabled()) {
                log.debug("sql: " + sql.replace("?", id + ";"));
            }

            ps = conn.prepareStatement(sql);
            ps.setLong(1, id);
            ps.execute();
            rs = ps.getResultSet();
            if (rs != null && rs.next()) {

                byte[] url = rs.getBytes("url");
                urlinfo.longUrl = bytesToUTF8String(url);

                urlinfo.ctime = rs.getTimestamp("ctime").getTime();

                rs.close();
                ps.close();
                return true;
            } else {
                ps.close();
                return false;
            }
        } catch (final SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (final SQLException e) {
                log.warn(e.getMessage());
            }
        }
    }

    public static long getIDByMD5(final String md5) throws ShorturlException {
        for (int i = 0; i < RETRY_TIMES; i++) {
            try {
                long ret = doGetIDByMD5(md5);

                return ret;

            } catch (SQLException e) {
                if (i == RETRY_TIMES - 1) {
                    String sql = DaoConfig.getMD5Sql(SELECT_MD5_SQL, md5);
                    log.error("db error: " + sql, e);
                    throw new ShorturlException(ExcepFactor.E_DEFAUL, e);
                }
            }
        }
        // 理论上不会执行到这里
        return 0;
    }

    public static long doGetIDByMD5(final String md5) throws SQLException {
        String subfix = DaoConfig.getMD5Hash(md5);

        Connection conn = ConnManager.getInstance().getReadConnection(subfix);
        PreparedStatement ps;
        ResultSet rs;
        final String sql = DaoConfig.getMD5Sql(SELECT_MD5_SQL, md5);

        try {
            if (log.isDebugEnabled()) {
                log.debug("sql: " + sql.replace("?", "'" + md5 + "';"));
            }

            ps = conn.prepareStatement(sql);
            ps.setString(1, md5);
            ps.execute();
            rs = ps.getResultSet();
            if (rs != null && rs.next()) {
                final long id = rs.getLong("id");
                rs.close();
                ps.close();

                return id;
            } else {
                ps.close();
                return 0L;
            }
        } catch (final SQLException e) {
            throw e;
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (final SQLException e) {
                log.warn(e.getMessage());
            }
        }
    }

    private static final String bytesToUTF8String(byte[] bytes) {
        if (bytes == null) {
            return null;
        }

        try {
            String ret = new String(bytes, "utf-8");
            return ret;
        } catch (UnsupportedEncodingException e) {
            log.error("bytesToUTF8String error", e);
        }

        return null;
    }

}
