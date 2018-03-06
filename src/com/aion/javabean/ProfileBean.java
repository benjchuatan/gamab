package com.aion.javabean;

import java.io.Serializable;
import java.util.Date;

public class ProfileBean implements Serializable {
	public static final String  USERID = "iduser";
	public static final String  FIRSTNAME = "first_name";
	public static final String LASTNAME ="last_name";
	public static final String EMAIL ="email";
	public static final String BIL_AD ="billing_add";
	public static final String SHI_AD ="shipping_add";
	public static final String TABLE_NAME = "profile";
	
	private int iduser;
	private String first_name;
	private String last_name;
	private String billing_add;
	private String shipping_add;
	private String email;
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getBilling_add() {
		return billing_add;
	}
	public void setBilling_add(String billing_add) {
		this.billing_add = billing_add;
	}
	public String getShipping_add() {
		return shipping_add;
	}
	public void setShipping_add(String shipping_add) {
		this.shipping_add = shipping_add;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
    
	
}
