package com.shorturl.common;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shorturl.dao.ConfigDao;


public class ConfigFromDB {
		
	public static final ConfigDao dao = new ConfigDao();
	
	public static final Logger log = LoggerFactory.getLogger(ConfigFromDB.class);
	
	public static String getProperty( String key) {
		
		String value = Config.getProperty(key);
		
		if(log.isDebugEnabled())
		{
			log.debug("get Config from properties key={}|value={}",key,value);
		}
		if(StringUtils.isEmpty(value))
		{
			value = dao.getConfigValue(key);
			
			if(log.isDebugEnabled())
			{
				log.debug("get Config from DB key={}|value={}",key,value);
			}
		}
		
		if(null == value)
		{
			return "";
		}
		
        return value;
    }

    public static String[] getProperties(String key, String delimiter) {
    	
    	 String value = getProperty(key);
         String[] values = value.split(delimiter);
        for (int i = 0; i < values.length; ++i) {
            values[i] = values[i].trim();
        }
        return values;
        
    }

    public static int getIntProperty( String key) {
    	 String value = getProperty(key);
        if (StringUtils.isEmpty(value)) {
            return 0;
        }
        return Integer.parseInt(value);
    }

    public static boolean getBooleanProperty( String key) {
    	
    	 String value = getProperty(key);
        if (StringUtils.isEmpty(value)) {
            return false;
        }
        return value.equalsIgnoreCase("true") || value.equalsIgnoreCase("yes")
               || value.equalsIgnoreCase("on");
    }

}
