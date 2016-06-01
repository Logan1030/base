package com.footing.website.modules.sys.security;

/**
 * 
 * <p>
 * Description:用户和密码（包含验证码）令牌类<br />
 * </p>
 * @title UsernamePasswordToken.java
 * @package com.footing.website.modules.sys.security 
 * @author yubin
 * @version 0.1 2016年3月2日
 */
public class UsernamePasswordToken extends org.apache.shiro.authc.UsernamePasswordToken {

	private static final long serialVersionUID = 1L;

	private String captcha;
	private boolean mobileLogin;
	
	public UsernamePasswordToken() {
		super();
	}

	public UsernamePasswordToken(String username, char[] password,
			boolean rememberMe, String host, String captcha, boolean mobileLogin) {
		super(username, password, rememberMe, host);
		this.captcha = captcha;
		this.mobileLogin = mobileLogin;
	}

	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}

	public boolean isMobileLogin() {
		return mobileLogin;
	}
	
}