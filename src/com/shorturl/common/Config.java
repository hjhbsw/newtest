/**
 * 
 */
package com.shorturl.common;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 读取配置文件
 * 
 * @author yanglei
 * @version $Id: Config.java, v 0.1 2015年1月30日 上午9:58:18 yanlei Exp $
 */
public abstract class Config {

    private static Logger       log               = LoggerFactory.getLogger(Config.class);

    public static final String  projectName       = "shorturl";
    public static final String  configPrefix      = projectName + ".";
    public static final String  version           = "2.0";

    private static final String defaultConfigFile = "/shorturl.properties";
    private static Properties   props;

    static {
        init();
    }

    private Config() {
        // should not call
    }

    private static void init() {
        props = loadConfig();

        if (log.isDebugEnabled()) {
            for (final Object key : props.keySet()) {
                log.debug(key + " : " + props.getProperty((String) key));
            }
        }
    }

    private static Properties loadConfig() {
        final Properties p = new Properties();
        loadDefaultConfig(p);
        return p;
    }

    private static void loadDefaultConfig(final Properties props) {
        final InputStream input = Config.class.getResourceAsStream(defaultConfigFile);

        if (input == null) {
            System.err.println("default Config File not found: " + defaultConfigFile);
            System.exit(1);
        }

        try {
            props.load(input);
        } catch (final IOException e) {
            e.printStackTrace();
            System.err.println("load default Config File error: " + e.getMessage());
            System.exit(1);
        } finally {
            try {
                input.close();
            } catch (final IOException e) {
                e.printStackTrace();
            }
        }
    }

    private static String getProperty(final String key, final String defaultValue) {
        final String value = props.getProperty(configPrefix + key);
        if (value == null) {
            return defaultValue;
        }
        return value.trim();
    }

    public static String getProperty(final String key) {
    	
    	final String value = props.getProperty(configPrefix + key);
    	return value;
    }

    public static String[] getProperties(final String key, final String delimiter) {
        final String value = getProperty(key);
        final String[] values = value.split(delimiter);
        for (int i = 0; i < values.length; ++i) {
            values[i] = values[i].trim();
        }
        return values;
    }

    public static int getIntProperty(final String key) {
        final String value = getProperty(key, "0");
        if (value.length() <= 0) {
            return 0;
        }
        return Integer.parseInt(value);
    }

    public static boolean getBooleanProperty(final String key) {
        final String value = getProperty(key, "false");
        if (value.length() <= 0) {
            return false;
        }
        return value.equalsIgnoreCase("true") || value.equalsIgnoreCase("yes")
               || value.equalsIgnoreCase("on");
    }

    public static String getVersion() {
        return projectName + " Version:" + version;
    }

    public static String getProjectName() {
        return projectName;
    }

}
