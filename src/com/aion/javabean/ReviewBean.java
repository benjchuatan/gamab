package com.aion.javabean;

import java.io.Serializable;

public class ReviewBean implements Serializable {
	public final  String PRODUCTREVIEW = "productReview";
	public static final String PRODUCTID = "productID";
	public static final String USERID = "userID";
	
	String productReview;
	int productID;
	int userID;
	public String getProductReview() {
		return productReview;
	}
	public void setProductReview(String productReview) {
		this.productReview = productReview;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	
}
