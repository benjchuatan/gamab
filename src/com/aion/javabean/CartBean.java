package com.aion.javabean;

import java.io.Serializable;

public class CartBean implements Serializable {
	
	public static final String CARTID = "cartid";
	public static final String IDPRODUCT = "idproduct";
	
	public int getIdproducts() {
		return idproducts;
	}
	public void setIdproducts(int idproducts) {
		this.idproducts = idproducts;
	}
	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
	}
	private int idproducts;
	private int iduser;
}
