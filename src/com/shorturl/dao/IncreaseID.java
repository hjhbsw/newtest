/**
 * 
 */
package com.shorturl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;

/**
 * 通过表sendnum获取自增的id，用来得到token
 * 
 * @author yanglei
 * @version $Id: IncreaseID.java, v 0.1 2015年1月30日 上午10:01:37 yanglei Exp $
 */
public class IncreaseID {

    private static Logger       log          = LoggerFactory.getLogger(IncreaseID.class);

    private static final String CREATE_SQL   = "CREATE TABLE IF NOT EXISTS "
                                               + "`sendnum` (`id` int(10) unsigned NOT NULL AUTO_INCREMENT,"
                                               + "PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8";
    private static final String TRUNCATE_SQL = "TRUNCATE TABLE `sendnum`";
    private static final String ALTER_SQL    = "ALTER TABLE `sendnum` " + " AUTO_INCREMENT=?";

    private static final String INSERT_SQL   = "INSERT INTO `sendnum` SET `id`=0";

    // private static final long truncate = 100000;

    public static boolean initID(final long newID) throws ShorturlException {
        Connection conn = null;
        PreparedStatement ps;
        String sql = null;

        try {
            conn = ConnManager.getInstance().getWriteConnection();
            sql = CREATE_SQL;
            ps = conn.prepareStatement(sql);
            ps.execute();
            ps.close();

            sql = TRUNCATE_SQL;
            ps = conn.prepareStatement(sql);
            ps.execute();
            ps.close();

            sql = ALTER_SQL;
            ps = conn.prepareStatement(sql);
            ps.setLong(1, newID);
            ps.execute();
        } catch (final SQLException e) {
            log.error("db error: " + sql, e);
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
        return true;
    }

    public static long getNextID() throws ShorturlException {
        Connection conn = null;
        try {
            conn = ConnManager.getInstance().getWriteConnection();
            final PreparedStatement ps = conn.prepareStatement(INSERT_SQL,
                Statement.RETURN_GENERATED_KEYS);
            ps.execute();
            final ResultSet rs = ps.getGeneratedKeys();

            if (rs != null && rs.next()) {
                final long id = rs.getInt(1);
                rs.close();
                ps.close();

                // if (id % truncate == 0) {
                // log.info("truncate table at id " + id);
                // initID(id);
                // }

                if (log.isDebugEnabled()) {
                    log.debug(DaoConfig.getIdcNum() + " " + id);
                }

                return Long.parseLong(DaoConfig.getIdcNum() + "" + id);
            } else {
                log.warn("no valid getGeneratedKeys");
                throw new ShorturlException(ExcepFactor.E_DEFAUL);
            }
        } catch (final SQLException e) {
            log.error("db error: " + INSERT_SQL, e);
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
