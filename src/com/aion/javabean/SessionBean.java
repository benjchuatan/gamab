package com.aion.javabean;

import java.io.Serializable;
import java.util.Date;

public class SessionBean implements Serializable {
	public static final String  IPADD = "ipaddress";
	public static final String  ATTEMPTS = "attempts";
	public static final String LOGGED ="logged";
	public static final String USERID ="userid";
	
	private int userid;
	private String ipaddress;
	private int attempts;
	private Date logged;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getIpaddress() {
		return ipaddress;
	}
	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}
	public int getAttempts() {
		return attempts;
	}
	public void setAttempts(int attempts) {
		this.attempts = attempts;
	}
	public Date getLogged() {
		return logged;
	}
	public void setLogged(Date logged) {
		this.logged = logged;
	}
}
