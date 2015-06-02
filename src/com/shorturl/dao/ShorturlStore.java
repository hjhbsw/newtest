package com.shorturl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;
import com.shorturl.model.UrlInfo;

public class ShorturlStore {

    private static Logger       log                      = LoggerFactory
                                                             .getLogger(ShorturlStore.class);

    private static final String INSERT_URL_SQL_NOCONVERT = "INSERT INTO `{TABLE_NAME}` "
                                                           + " (`id`, `url`, `ctime`, `type`, `ext`) values (?,?,?,?,?) "
                                                           + " ON DUPLICATE KEY UPDATE url=?, ctime=?, type=?,  ext=? ";

    private static final String INSERT_MD5_SQL           = "INSERT INTO `{TABLE_NAME}` "
                                                           + " (`urlmd5`, `id`) values(?,?) ON DUPLICATE KEY UPDATE urlmd5=? ";

    private static final String DELETE_MD5_SQL           = "DELETE FROM `{TABLE_NAME}` "
            + " WHERE urlmd5=? ";
    
    private static final String UPDATE_EXT_SQL_NOCONVERT = "UPDATE `{TABLE_NAME}` "
                                                           + " SET type=?, ext=? WHERE id=? ";

    public static void storeUrlInfo(final UrlInfo urlinfo) throws ShorturlException {
        insertShortUrl(urlinfo);
        insertUrlMd5(urlinfo);
    }

    private static void insertShortUrl(UrlInfo urlinfo) throws ShorturlException {
        String subfix = DaoConfig.getIDHash(urlinfo.id);

        Connection conn = null;
        PreparedStatement ps = null;

        String sql = DaoConfig.getUrlSql(INSERT_URL_SQL_NOCONVERT, urlinfo.id);

        try {
            conn = ConnManager.getInstance().getWriteConnection(subfix);

            if (log.isDebugEnabled()) {
                log.debug("sql: " + sql);
            }

            final Timestamp ts = new Timestamp(urlinfo.ctime);

            ps = conn.prepareStatement(sql);
            ps.setLong(1, urlinfo.id);
            ps.setString(2, urlinfo.longUrl);
            ps.setTimestamp(3, ts);
            ps.setString(4, urlinfo.type);
            ps.setString(5, urlinfo.ext);
            ps.setString(6, urlinfo.longUrl);
            ps.setTimestamp(7, ts);
            ps.setString(8, urlinfo.type);
            ps.setString(9, urlinfo.ext);

            ps.execute();
            ps.close();
        } catch (final SQLException e) {
            e.printStackTrace();
            log.error("insertShortUrl db error: " + sql, e);
            throw new ShorturlException(ExcepFactor.E_DEFAUL, e);
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

    private static void insertUrlMd5(UrlInfo urlinfo) throws ShorturlException {
        String subfix = DaoConfig.getMD5Hash(urlinfo.md5);

        Connection conn = null;
        PreparedStatement ps = null;
        String sql = DaoConfig.getMD5Sql(INSERT_MD5_SQL, urlinfo.md5);

        try {
            conn = ConnManager.getInstance().getWriteConnection(subfix);

            if (log.isDebugEnabled()) {
                log.debug("sql: " + sql);
            }

            ps = conn.prepareStatement(sql);
            ps.setString(1, urlinfo.md5);
            ps.setLong(2, urlinfo.id);
            ps.setString(3, urlinfo.md5);
            ps.execute();
            ps.close();

        } catch (final SQLException e) {
            log.error("insertUrlMd5 db error: " + sql, e);
            throw new ShorturlException(ExcepFactor.E_DEFAUL, e);
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

    public static void updateUrlExt(final UrlInfo urlinfo) throws ShorturlException {
        String subfix = DaoConfig.getIDHash(urlinfo.id);
        Connection conn = null;
        PreparedStatement ps = null;

        String sql = DaoConfig.getUrlSql(UPDATE_EXT_SQL_NOCONVERT, urlinfo.id);

        try {
            conn = ConnManager.getInstance().getWriteConnection(subfix);

            ps = conn.prepareStatement(sql);

            ps.setString(1, urlinfo.type);
            ps.setString(2, urlinfo.ext);
            ps.setLong(3, urlinfo.id);

            ps.execute();
            ps.close();
        } catch (final SQLException e) {
            log.error("db error: " + sql, e);
            throw new ShorturlException(ExcepFactor.E_DEFAUL);
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
    
    public static void deleteDM5(UrlInfo urlInfo) throws ShorturlException
    {
    	String subfix = DaoConfig.getMD5Hash(urlInfo.md5);

        Connection conn = null;
        PreparedStatement ps = null;
        String sql = DaoConfig.getMD5Sql(DELETE_MD5_SQL, urlInfo.md5);

        try {
            conn = ConnManager.getInstance().getWriteConnection(subfix);

            if (log.isDebugEnabled()) {
                log.debug("sql: " + sql);
            }

            ps = conn.prepareStatement(sql);
            ps.setString(1, urlInfo.md5);
            ps.execute();
            ps.close();

        } catch (final SQLException e) {
            log.error("insertUrlMd5 db error: " + sql, e);
            throw new ShorturlException(ExcepFactor.E_DEFAUL, e);
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
}
