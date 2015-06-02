/**
 * 
 */
package com.shorturl.dao;

import java.sql.Connection;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * 获得数据库连接
 * 
 * @author yanglei
 * @version $Id: ConnManager.java, v 0.1 2015年1月30日 上午10:07:54 yanglei Exp $
 */
public class ConnManager {
    private static Logger         logger = LoggerFactory.getLogger(ConnManager.class);

    private static ConnManager    instance;
    // 000-255 老的3626端口，用于ID生成，未切换写时写入数据
    private ComboPooledDataSource dsFullTableWrite;
    private ComboPooledDataSource dsFullTableRead;
    
    // 000-063
    private ComboPooledDataSource dsWrite0;
    private ComboPooledDataSource dsRead0;
    // 064-127
    private ComboPooledDataSource dsWrite1;
    private ComboPooledDataSource dsRead1;
    // 128-191
    private ComboPooledDataSource dsWrite2;
    private ComboPooledDataSource dsRead2;
    // 192-255
    private ComboPooledDataSource dsWrite3;
    private ComboPooledDataSource dsRead3;

    private ConnManager() {
        try {
            init();
        } catch (Exception e) {
            logger.error("init conn manager error!", e);
            throw new RuntimeException("init failed!");
        }
    }

    private void init() throws Exception {
        // 老的3626端口初始化

    	dsFullTableRead = new ComboPooledDataSource();
    	dsFullTableRead.setJdbcUrl(DaoConfig.getReadJdbcUrl());
         setDataSourceCommonConfig(dsFullTableRead);
         
        dsFullTableWrite = new ComboPooledDataSource();
        dsFullTableWrite.setJdbcUrl(DaoConfig.getWriteJdbcUrl());
        setDataSourceCommonConfig(dsFullTableWrite);

        if(!DaoConfig.isUseFullTableDS())
        {
        	// 000-063
        	dsRead0 = new ComboPooledDataSource();
        	dsRead0.setJdbcUrl(DaoConfig.getRead0JdbcUrl());
        	setDataSourceCommonConfig(dsRead0);
        	
        	dsWrite0 = new ComboPooledDataSource();
        	dsWrite0.setJdbcUrl(DaoConfig.getWrite0JdbcUrl());
        	setDataSourceCommonConfig(dsWrite0);
        	
        	// 064-127
        	dsRead1 = new ComboPooledDataSource();
        	dsRead1.setJdbcUrl(DaoConfig.getRead1JdbcUrl());
        	setDataSourceCommonConfig(dsRead1);
        	
        	dsWrite1 = new ComboPooledDataSource();
        	dsWrite1.setJdbcUrl(DaoConfig.getWrite1JdbcUrl());
        	setDataSourceCommonConfig(dsWrite1);
        	
        	// 128-191
        	dsRead2 = new ComboPooledDataSource();
        	dsRead2.setJdbcUrl(DaoConfig.getRead2JdbcUrl());
        	setDataSourceCommonConfig(dsRead2);
        	
        	dsWrite2 = new ComboPooledDataSource();
        	dsWrite2.setJdbcUrl(DaoConfig.getWrite2JdbcUrl());
        	setDataSourceCommonConfig(dsWrite2);
        	
        	// 192-255
        	dsRead3 = new ComboPooledDataSource();
        	dsRead3.setJdbcUrl(DaoConfig.getRead3JdbcUrl());
        	setDataSourceCommonConfig(dsRead3);
        	
        	dsWrite3 = new ComboPooledDataSource();
        	dsWrite3.setJdbcUrl(DaoConfig.getWrite3JdbcUrl());
        	setDataSourceCommonConfig(dsWrite3);
        	
        }

    }

    public static ConnManager getInstance() {
        if (instance != null) {
            return instance;
        }
        instance = new ConnManager();
        return instance;
    }

    public Connection getReadConnection() throws SQLException {
        return dsFullTableRead.getConnection();
    }

    public Connection getWriteConnection() throws SQLException {
        return dsFullTableWrite.getConnection();
    }

    public Connection getReadConnection(String subfix) throws SQLException {

    	if(DaoConfig.isUseFullTableDS())
    	{
    		return getReadConnection();
    	}
        int hash = parseSubfix(subfix);

        if (hash >= 0 && hash <= 63) {
            return dsRead0.getConnection();
        } else if (hash >= 64 && hash <= 127) {
            return dsRead1.getConnection();
        } else if (hash >= 128 && hash <= 191) {
            return dsRead2.getConnection();
        } else if (hash >= 192 && hash <= 255) {
            return dsRead3.getConnection();
        } else {
            throw new SQLException("error subfix:" + subfix);
        }
    }

    public Connection getWriteConnection(String subfix) throws SQLException {

    	if(DaoConfig.isUseFullTableDS())
    	{
    		return getWriteConnection();
    	}
        int hash = parseSubfix(subfix);

        if (hash >= 0 && hash <= 63) {
            return dsWrite0.getConnection();
        } else if (hash >= 64 && hash <= 127) {
            return dsWrite1.getConnection();
        } else if (hash >= 128 && hash <= 191) {
            return dsWrite2.getConnection();
        } else if (hash >= 192 && hash <= 255) {
            return dsWrite3.getConnection();
        } else {
            throw new SQLException("error subfix:" + subfix);
        }
    }

    private int parseSubfix(String subfix) throws SQLException {
        try {
            int ret = Integer.valueOf(subfix);
            return ret;
        } catch (Exception e) {
            logger.error("parseSubfix error", e);
            throw new SQLException("error subfix:" + subfix);
        }
    }

    private void setDataSourceCommonConfig(ComboPooledDataSource ds) throws Exception {
        ds.setDriverClass(DaoConfig.getC3P0Config("driverClass"));
        ds.setMinPoolSize(DaoConfig.getIntC3P0Config("minPoolSize"));
        ds.setMaxPoolSize(DaoConfig.getIntC3P0Config("maxPoolSize"));
        ds.setIdleConnectionTestPeriod(DaoConfig.getIntC3P0Config("idleConnectionTestPeriod"));
        ds.setMaxIdleTime(DaoConfig.getIntC3P0Config("maxIdleTime"));
        ds.setPreferredTestQuery(DaoConfig.getC3P0Config("preferredTestQuery"));
        ds.setAcquireRetryAttempts(DaoConfig.getIntC3P0Config("acquireRetryAttempts"));
        ds.setAcquireRetryDelay(DaoConfig.getIntC3P0Config("acquireRetryDelay"));
        ds.setBreakAfterAcquireFailure(DaoConfig.getBooleanC3P0Config("breakAfterAcquireFailure"));
        ds.setCheckoutTimeout(DaoConfig.getIntC3P0Config("checkoutTimeout"));
        ds.setUser(DaoConfig.getC3P0Config("user"));
        ds.setPassword(DaoConfig.getC3P0Config("passwd"));
    }
}
