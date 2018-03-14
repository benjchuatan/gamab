package com.aion.javabean;

import java.io.Serializable;

public class TransBeana implements Serializable {
	public static final String TABLE_NAME = "transactions";
	public static final String TRANS_ID = "idtrans";
	public static final String IDUSER = "iduser";
	public static final String PRODUCTID = "productID";
	public static final String NAME ="name";
	public static final String PRICE ="price";
	public static final String DATE = "date";
	
	
	private int idtrans;
	public int getIdtrans() {
		return idtrans;
	}
	public void setIdtrans(int idtrans) {
		this.idtrans = idtrans;
	}
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	private int iduser;
	private int productID;
	private String date;
	private int price;
	
	

}
