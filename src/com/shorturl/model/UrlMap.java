package com.shorturl.model;

import java.util.HashMap;
import java.util.Map;


public class UrlMap {
	private Map<String, String> urlMap = new HashMap<String, String>();
		
	public Map<String, String> getUrlMap() {
	
		return urlMap;
	}

	
	public void setUrlMap(Map<String, String> urlMap) {
	
		this.urlMap = urlMap;
	}
	
	
}
