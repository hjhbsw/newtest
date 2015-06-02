package com.shorturl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class ConfigDao {
	 
	private static Logger       log          = LoggerFactory.getLogger(ConfigDao.class);
	
	private static final String CONFIG_SQL = "select config_value from short_config where config_key = ? ";
	
	public  String getConfigValue( String key ){
	      
	        Connection conn = null ;
	        PreparedStatement ps;
	        ResultSet rs;
	        String value = null;
	        try {

	        	conn = ConnManager.getInstance().getReadConnection();
	            ps = conn.prepareStatement(CONFIG_SQL);
	            ps.setString(1, key);
	            ps.execute();
	            rs = ps.getResultSet();
	            if (rs != null && rs.next()) {
	                value = rs.getString("config_value");
	                rs.close();
	                ps.close();

	            } else {
	                ps.close();
	            }
	            
	            if(log.isDebugEnabled())
	            {
	            	log.debug("getConfig from db key={}|value={}",key,value);
	            }
	            
	            return value;
	        } catch (final SQLException e) {
	        	 log.warn(e.getMessage());
	        	return null;
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
