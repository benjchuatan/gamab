package com.aion.services;

public class CartService {
 
	String url ="jdbc:mysql://localhost:3306/secprg";
	String username ="root";
	String password = "password";
	
	public void addcart() {
		String sql = "Insert into cart(iduser,idproduct) values(?,?)";
		
	}
	
}
