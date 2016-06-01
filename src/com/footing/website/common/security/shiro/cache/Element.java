package com.footing.website.common.security.shiro.cache;
/**
 * 
 * <p>
 * Description:元素<br />
 * </p>
 * @title Element.java
 * @package com.footing.website.common.security.shiro.cache 
 * @author yubin
 * @version 0.1 2016年2月29日
 */
public class Element {
	private Object objectKey;
	private Object objectValue;
	public Object getObjectKey() {
		return objectKey;
	}
	public void setObjectKey(Object objectKey) {
		this.objectKey = objectKey;
	}
	public Object getObjectValue() {
		return objectValue;
	}
	public void setObjectValue(Object objectValue) {
		this.objectValue = objectValue;
	}
	public Element(Object objectKey, Object objectValue) {
		super();
		this.objectKey = objectKey;
		this.objectValue = objectValue;
	}
	
	
}
