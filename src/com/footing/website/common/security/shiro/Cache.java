package com.footing.website.common.security.shiro;

import java.io.Serializable;

import com.footing.website.common.security.shiro.cache.Element;
 
/**
 * 
 * <p>
 * Description:缓存<br />
 * </p>
 * @title Cache.java
 * @package com.footing.website.common.security.shiro 
 * @author yubin
 * @version 0.1 2016年2月29日
 */
public interface Cache extends org.apache.shiro.cache.Cache<Object,Object>  {
	 public  Element get(Serializable key);

	 public  void put(Element element);
	 public Object remove(Object key);
	 
	 public Cache getCacheConfiguration();
	 public void setEternal(boolean param);
}
