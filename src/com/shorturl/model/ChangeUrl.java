package com.shorturl.model;

import com.shorturl.cache.CacheConfig;
import com.shorturl.common.ExcepFactor;
import com.shorturl.common.ShorturlException;
import com.shorturl.dao.ShorturlStore;
import com.shorturl.utils.MD5Util;


public class ChangeUrl extends UrlInfo {
	
	private UrlInfo oldInfo;
	
	public static ChangeUrl getChangeUrl(String longUrl, String newLongUrl) throws ShorturlException {
		ChangeUrl bean = new ChangeUrl(longUrl,newLongUrl);
		
		if(!bean.exist)
		{
			throw new ShorturlException(ExcepFactor.E_LONGURL_NOT_EXIST_MAPPING);
		}
		
		bean.exchangeUrl();
		return bean;
	}
	
	protected ChangeUrl(String oldLongUrl,String newUrl) throws ShorturlException{
		super(oldLongUrl, false);
		
		this.oldInfo = UrlInfo.getEmtyUrlInfo();
		this.oldInfo.id = super.id;
		this.oldInfo.md5 = super.md5;
		this.oldInfo.token = super.token;
		
		String md5 = MD5Util.md5Digest(newUrl);
		super.md5 = md5;
		super.longUrl = newUrl;
	}
	
	public void exchangeUrl() throws ShorturlException
	{
		super.storeUrlInfoToDB();
		
		ShorturlStore.deleteDM5(oldInfo);		

		if(CacheConfig.isUseCache())
		{
			oldInfo.delUrlInfoCache();
			super.storeUrlInfoToCache();
		}
	}
	

}
