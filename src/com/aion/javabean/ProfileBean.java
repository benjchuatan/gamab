package com.aion.javabean;

import java.io.Serializable;
import java.util.Date;

public class ProfileBean implements Serializable {
	public static final String  USERID = "iduser";
	public static final String  FIRSTNAME = "first_name";
	public static final String LASTNAME ="last_name";
	public static final String ADDRESS ="address";
	public static final String BDAY ="birthday";
	public static final String TABLE_NAME = "profile";
	
	private int iduser;
	private String first_name;
	private String last_name;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	private String address;
    private Date birthday;
	
}
