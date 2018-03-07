package com.aion.javabean;

import java.io.Serializable;

public class UserBean implements Serializable {
	
	public static final String USERID2 = "iduser";
	public static final String USERNAME = "username";
	public static final String PASSWORD ="password";
	public static final String TABLE_NAME2 = "user";
	public static final String PRIVILEGE = "privilege";
	
	private int iduser;
	private  String username;
	private String password;
	private int privilege;
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
		return privilege;
	}
	public void setPrevilege(int privilege) {
		this.privilege = privilege;
	} 

}
