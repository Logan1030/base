package com.footing.website.common.security.shiro;


/**
 * 
 * <p>
 * Description:缓存管理<br />
 * </p>
 * @title CacheManager.java
 * @package com.footing.website.common.security.shiro 
 * @author yubin
 * @version 0.1 2016年3月1日
 */
public interface CacheManager extends org.apache.shiro.cache.CacheManager {
	public void addCache(String name);
	public Cache getCache(String name);
}
