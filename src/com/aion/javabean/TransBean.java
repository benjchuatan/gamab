package com.aion.javabean;

import java.io.Serializable;

public class TransBean implements Serializable {
	public static final String TABLE_NAME = "transhistory";
	public static final String TRANS_ID = "transID";
	public static final String USERNAME = "username";
	public static final String PRODUCTID = "productID";
	public static final String NAME ="name";
	public static final String PRICE ="price";
	public static final String DATE = "date";
	
	
	private int transID;
	private String username;
	private int productID;
	private String date;
	private int price;
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	private String name;
	public int getTransID() {
		return transID;
	}
	public void setTransID(int transID) {
		this.transID = transID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	

}
