package com.footing.website.common.security.shiro.cache;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

import org.apache.shiro.cache.CacheException;

import com.footing.website.common.config.Global;
import com.footing.website.common.security.shiro.Cache;
import com.footing.website.common.security.shiro.CacheManager;

 
/**
 *  
 * <p>
 * Description:reids缓存管理者<br />
 * </p>
 * @title RedisCacheManager.java
 * @package com.footing.website.common.security.shiro.cache 
 * @author yubin
 * @version 0.1 2016年2月29日
 */
public class RedisCacheManager  implements CacheManager {

	private final ConcurrentMap<String, Cache> caches = new ConcurrentHashMap<String, Cache>();

	private RedisManager redisManager = null;

	
	private String keyPrefix = Global.rediskeyPrefix();
	
	
	public String getKeyPrefix() {
		return keyPrefix;
	}

	
	public void setKeyPrefix(String keyPrefix) {
		this.keyPrefix = keyPrefix;
	}
	
	@Override
	public Cache getCache(String name) throws CacheException {
//		logger.debug("获取名称为: " + name + " 的RedisCache实例");
		
		Cache c = caches.get(name);
		
		if (c == null) {

			c = new RedisCache(redisManager, getCachePrefixBy(keyPrefix,name));
			
			caches.put(name, c);
		}
		return c;
	}

	public RedisManager getRedisManager() {
		return redisManager;
	}

	public void setRedisManager(RedisManager redisManager) {
		this.redisManager = redisManager;
	}

	@Override
	public void addCache(String name) {
		Cache c = caches.get(name);
		
		if (c == null) {

			c = new RedisCache(redisManager, keyPrefix);
			
			caches.put(name, c);
		}
		
	}
	   
	private static String getCachePrefixBy(String keyPrefix,String cacheName){
		return keyPrefix+cacheName+":";
	}
}
