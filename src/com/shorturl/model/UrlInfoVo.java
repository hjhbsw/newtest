package com.shorturl.model;

/**
 * 长短链接转换返回对象
 * 
 * @author yanglei
 * @version $Id: UrlInfoVo.java, v 0.1 2015年2月4日 下午2:33:46 yanglei Exp $
 */
public class UrlInfoVo {

    private String longUrl; //长链接
    private String shortUrl; //短链接

    public String getLongUrl() {
        return longUrl;
    }

    public void setLongUrl(String longUrl) {
        this.longUrl = longUrl;
    }

    public String getShortUrl() {
        return shortUrl;
    }

    public void setShortUrl(String shortUrl) {
        this.shortUrl = shortUrl;
    }
}
