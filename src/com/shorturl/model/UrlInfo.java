package com.shorturl.model;

import java.io.StringWriter;

import org.dom4j.DocumentException;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.json.JSONWriter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shorturl.cache.CacheConfig;
import com.shorturl.cache.Memcache;
import com.shorturl.common.Config;
import com.shorturl.common.ConfigFromDB;
import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;
import com.shorturl.dao.IncreaseID;
import com.shorturl.dao.ShorturlLoad;
import com.shorturl.dao.ShorturlStore;
import com.shorturl.utils.Base62Util;
import com.shorturl.utils.MD5Util;
import com.shorturl.utils.ShortenUtil;

/**
 * 短链接基本信息类
 * 
 * @author cmcc
 * @version $Id: UrlInfo.java, v 0.1 2015年1月30日 上午10:13:20 cmcc Exp $
 */
public class UrlInfo {

    private static Logger       log              = LoggerFactory.getLogger(UrlInfo.class);

    public static final String  CACHE_PREFIX_ID  = "SHORTURL_id_";
    public static final String  CACHE_PREFIX_MD5 = "SHORTURL_md5_";

    public static final String SHORT_HOST =   ConfigFromDB.getProperty("shorthost");
    
    public long                 id               = 0;

    // short token, base62_encode(id), no http:// staff
    public String               token            = "";
    public String               shortUrl         = "";

    // with http:// staff
    public String               longUrl          = "";
    // a mark for the input url
    public String               inputUrl         = "";

    public String               md5              = "";

    public long                 ctime            = 0;

    // whether long/short url exist in db
    public boolean              exist            = false;

    //file type(pic,video,voice...)
    public String               type             = "";
    //file type(.doc,.jpg,.wma...)
    public String               ext              = "";

    public static final UrlInfo defaultUrlInfo   = new UrlInfo();

    private UrlInfo() {
        this.exist = true;
    }

    /**
     * this is for Short2Long
     * 
     * @param id
     * @param token
     * @throws ShorturlException
     */
    public UrlInfo(final long id, final String token) throws ShorturlException {
        this.id = id;
        this.token = token;
        this.shortUrl = "http://" + SHORT_HOST + "/" + this.token;
        this.inputUrl = this.shortUrl;
        loadUrlByID();//已知id和token从数据库获得长链接
    }

    /**
     * This is for Long2Short.
     * 
     * @param longUrl
     * @param secure
     * @throws ShorturlException
     */
    private UrlInfo(final String longUrl) throws ShorturlException {
        this(longUrl, true);//已知长链接获得短链接
    }

    /**
     * @param longUrl
     * @param isAutoCreate
     * @throws ShorturlException
     */
    protected UrlInfo(final String longUrl, boolean isAutoCreate) throws ShorturlException {

        this.ctime = System.currentTimeMillis();

        this.longUrl = longUrl.trim();

        this.md5 = MD5Util.md5Digest(this.longUrl);

        loadUrlByMD5(isAutoCreate);//根据md5压缩得到短链接，如果没有获得ext，提交了修复逻辑
    }

    private void loadUrlByID() throws ShorturlException {
        if (CacheConfig.isUseCache() && loadFromCacheById()) {
            return;
        }

        if (loadFromDBById()) {
            this.md5 = MD5Util.md5Digest(this.longUrl);
            storeUrlInfoToCache();
            return;
        }

        log.warn("id not exist:" + this);

        this.longUrl = "";//未找到对应的长链接
        this.exist = false;
        return;
    }

    private void loadUrlByMD5(boolean isAutoCreate) throws ShorturlException {
        if (CacheConfig.isUseCache() && loadFromCacheByMD5()) {//先检查缓存中是否有记录
            return;
        }
        if (loadFromDBByMD5()) {//如果缓存中没有再检查数据库，用md5从db中取到id，下面才得到token
            this.token = Base62Util.base62Encode(this.id);
            this.shortUrl = "http://" + SHORT_HOST + "/" + this.token;

            if (loadFromDBById()) {
                storeUrlInfoToCache();
                return;
            } else {
                log.warn("md5 exist but id not exist:" + this);
                // error: md5 exist but id not exist
                // fix : pass through to assign another id
                // and store to cache and db again
            }
        }

        // url not exist，数据库和缓存都无记录，需要存储
        this.exist = false;

        if (isAutoCreate) {
            this.id = IncreaseID.getNextID();//不是0吗，有什么意义？

            this.token = Base62Util.base62Encode(this.id);
            this.shortUrl = "http://" + SHORT_HOST + "/" + this.token;

            storeUrlInfoToDB();
            storeUrlInfoToCache();
        }
    }

    protected void storeUrlInfoToCache() {
        if (!CacheConfig.isUseCache()) {
            return;
        }

        final String cache = this.toCache();
        Memcache.setMCValue(CACHE_PREFIX_ID + this.token, cache);
        Memcache.setMCValue(CACHE_PREFIX_MD5 + this.md5, cache);

        if (log.isDebugEnabled()) {
            log.debug(" storeUrlInfoToCache " + this.toCache());
        }
    }

    protected void delUrlInfoCache() {
        Memcache.delMCKey(CACHE_PREFIX_ID + this.token);
        Memcache.delMCKey(CACHE_PREFIX_MD5 + this.md5);

        if (log.isDebugEnabled()) {
            log.debug(" delUrlInfoCache " + this);
        }
    }

    protected void storeUrlInfoToDB() throws ShorturlException {
        ShorturlStore.storeUrlInfo(this);

        if (log.isDebugEnabled()) {
            log.debug(" storeUrlInfoToDB " + this);
        }
    }

    private boolean loadFromCacheById() {
        boolean result = false;
        final String value = Memcache.getMCValue(CACHE_PREFIX_ID + this.token);
        if (value != null && loadFromCache(value)) {
            result = true;
        }
        this.exist = result;

        if (log.isDebugEnabled()) {
            log.debug(" loadFromCacheById " + result + this);
        }

        return result;
    }

    private boolean loadFromDBById() throws ShorturlException {
        final boolean result = ShorturlLoad.loadURL(this);
        this.exist = result;

        if (log.isDebugEnabled()) {
            log.debug(" loadFromDBById " + result + this);
        }

        return result;
    }

    private boolean loadFromCacheByMD5() {
        boolean result = false;
        final String value = Memcache.getMCValue(CACHE_PREFIX_MD5 + this.md5);
        if (value != null && loadFromCache(value)) {
            result = true;
        }
        this.exist = result;

        if (log.isDebugEnabled()) {
            log.debug(" loadFromCacheByMD5 " + result + this);
        }

        return result;
    }

    private boolean loadFromDBByMD5() throws ShorturlException {
        this.id = ShorturlLoad.getIDByMD5(this.md5);
        final boolean result = this.id > 0L;

        if (log.isDebugEnabled()) {
            log.debug(" loadFromDBByMD5 " + result + this);
        }

        return result;
    }

    private String toCache() {
        final StringWriter writer = new StringWriter();
        final JSONWriter jw = new JSONWriter(writer);
        try {
            jw.object();
            jw.key("id").value(this.id);
            jw.key("url").value(this.longUrl);
            jw.key("ctime").value(this.ctime);

            jw.endObject();
        } catch (final JSONException e) {
            log.warn("toCache error:" + e);
        }

        return writer.toString();
    }

    private boolean loadFromCache(final String value) {
        if (!CacheConfig.isUseCache()) {
            return false;
        }

        try {
            final JSONObject json = new JSONObject(new JSONTokener(value));
            this.id = json.getLong("id");
            this.longUrl = json.getString("url");
            this.ctime = json.getLong("ctime");

            this.exist = true;
            this.md5 = MD5Util.md5Digest(this.longUrl);
            this.token = Base62Util.base62Encode(this.id);
            this.shortUrl = "http://" + SHORT_HOST + "/" + this.token;

            return true;
        } catch (final JSONException e) {
            log.warn("loadFromCache:" + e);
            return false;
        }
    }

    // check if this url already exist
    public boolean urlExist() {
        return this.exist;
    }

    public static UrlInfo cleanCache(final String longUrl) throws ShorturlException {
        final UrlInfo urlinfo = new UrlInfo(longUrl, true);
        urlinfo.delUrlInfoCache();

        final UrlInfo urlinfo2 = new UrlInfo(longUrl, true);
        return urlinfo2;
    }

    public static UrlInfo getUrlInfoByShortUrl(final String shortUrl) throws ShorturlException {
        final String token = ShortenUtil.getToken(shortUrl);
        if (!ShortenUtil.checkToken(token)) {
            log.warn("token error: " + token);
            throw new ShorturlException(ExcepFactor.E_SHORTURL_WRONG_PARAM_VALUE);
        }
        final long id = Base62Util.base62Decode(token);
        final UrlInfo urlinfo = new UrlInfo(id, token);
        urlinfo.inputUrl = shortUrl;

        return urlinfo;
    }

    public static UrlInfo getUrlInfoByLongUrl(final String longUrl) throws ShorturlException {
        if (!ShortenUtil.validUrl(longUrl)) {
            log.warn("url not valid: " + longUrl);
            throw new ShorturlException(ExcepFactor.E_SHORTURL_WRONG_PARAM_VALUE);
        }
        final UrlInfo urlinfo = new UrlInfo(longUrl);

        urlinfo.inputUrl = longUrl;

        return urlinfo;
    }

    public String toXML() {
        final StringBuilder sb = new StringBuilder();

        sb.append("<urlinfo>");
        sb.append("<inputUrl>").append(this.inputUrl).append("</inputUrl>");
        sb.append("<shortUrl>").append(this.shortUrl).append("</shortUrl>");

        sb.append("<longUrl>").append(this.longUrl).append("</longUrl>");
        sb.append("<type>").append(this.type).append("</type>");
        sb.append("<ext>").append(this.ext).append("</ext>");
        //        sb.append("<longUrl></longUrl>");

        if (ctime < 1400000000) {
            sb.append("<ctime>").append(this.ctime).append("</ctime>");
        } else {
            sb.append("<ctime>").append(this.ctime / 1000).append("</ctime>");
        }

        sb.append("</urlinfo>");

        return sb.toString();
    }

    public String toJSON() throws ShorturlException {
        final StringWriter writer = new StringWriter();

        final JSONWriter jw = new JSONWriter(writer);
        try {
            jw.object();
            jw.key("inputUrl").value(this.inputUrl);
            jw.key("shortUrl").value(this.shortUrl);

            jw.key("longUrl").value(this.longUrl);
            jw.key("type").value(this.type);
            jw.key("ext").value(this.ext);

            //兼容错误时间
            if (ctime < 1400000000) {
                jw.key("ctime").value(this.ctime);
            } else {
                jw.key("ctime").value(this.ctime / 1000);
            }

            jw.endObject();
        } catch (final JSONException e) {
            log.warn("toJSON error:", e);
            throw new ShorturlException(ExcepFactor.E_DEFAUL);
        }

        return writer.toString();
    }

    @Override
    public String toString() {
        return " [id:" + id + " token:" + token + " long:" + longUrl + " exist:" + exist + " type:"
               + type + " ext:" + ext + " input:" + inputUrl + "] ";
    }

    public static UrlInfo getTestUrlInfo(String longurl) {
        UrlInfo urlinfo = new UrlInfo();
        urlinfo.longUrl = longurl;
        return urlinfo;
    }

    public static boolean checkToken(final String token) {
        if (token.length() < 5 || token.length() > 8) {
            return false;
        }
        // TODO check if token contains anything more than 0-9a-zA-Z ?
        return true;
    }

    public static UrlInfo getEmtyUrlInfo() {
        UrlInfo urlinfo = new UrlInfo();
        return urlinfo;
    }

    /**
     * @param args
     * @throws ShorturlException
     * @throws DocumentException
     * @throws JSONException 
     */
    public static void main(final String[] args) throws ShorturlException, DocumentException,
                                                JSONException {
        //        final UrlInfo urlinfo = UrlInfo.getUrlInfoByShortUrl("GNAII", true);
        //        log.debug(urlinfo.toJSON());
        // System.out.println(urlinfo.toXML());
    }

}
