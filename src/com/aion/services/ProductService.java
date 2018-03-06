package com.aion.services;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.aion.db.DBManager;
import com.aion.javabean.Product;


public class ProductService {
	String url ="jdbc:mysql://localhost:3306/secprg";
	String username ="root";
	String password = "password";
	
	public ArrayList getAllProducts(){
		ArrayList<Product> productlists = new ArrayList<>();
		
		String sql = "SELECT * FROM secprg." + Product.TABLE_NAME;
		
		
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				Product p = new Product();
				
				p.setName(rs.getString(Product.NAME));
				p.setManufacturer(rs.getString(Product.MANUFACTURER));
				p.setDescription(rs.getString(Product.DESCRIPTION));
				p.setIdproducts(rs.getInt(Product.IDPRODUCTS));
				p.setPrice(rs.getFloat(Product.PRICE));
				p.setFilename(rs.getString(Product.FILENAME));
				System.out.println("asdasdas " + p.getFilename());

				productlists.add(p);
			}		

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return productlists;
	}
}
