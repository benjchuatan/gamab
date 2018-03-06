package com.aion.javabean;

import java.io.Serializable;

public class UserBean implements Serializable {
	
	public static final String USERID2 = "iduser";
	public static final String USERNAME = "username";
	public static final String PASSWORD ="password";
	public static final String TABLE_NAME2 = "user";
	public static final String PRIVILEGE = "previlege";
	
	private int iduser;
	private  String username;
	private String password;
	private int previlege;
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPrevilege() {
		return previlege;
	}
	public void setPrevilege(int previlege) {
		this.previlege = previlege;
	} 

}
