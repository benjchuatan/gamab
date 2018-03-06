package com.aion.javabean;

import java.io.Serializable;
import java.util.Date;

public class ProfileBean implements Serializable {
	public static final String  USERID = "iduser";
	public static final String  FIRSTNAME = "firstname";
	public static final String LASTNAME ="lastname";
	public static final String ADDRESS ="address";
	public static final String BDAY ="birthday";
	
	private int iduser;
	private String firstname;
	private String lastname;
    private String address;
    private Date birthday;
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
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
}
