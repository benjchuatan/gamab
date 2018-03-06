package com.aion.services;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.aion.db.DBManager;
import com.aion.javabean.Product;


public class ProductService {
	
	public ArrayList getAllProducts(){
		ArrayList<Product> productlists = new ArrayList<>();
		
		String sql = "SELECT * FROM" + Product.TABLE_NAME;
		
		BasicDataSource bds = new BasicDataSource();
		bds.setDriverClassName("com.mysql.jdbc.Driver");
		bds.setUrl("jdbc:mysql://localhost:3306/aion");
		bds.setUsername("root");
		bds.setPassword("password");
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Product p = new Product();
				
				p.setName(rs.getString(Product.NAME));
					System.out.println("asdasdas" + p.getName());
				p.setManufacturer(rs.getString(Product.MANUFACTURER));
				p.setDescription(rs.getString(Product.DESCRIPTION));
				p.setIdproducts(rs.getInt(Product.IDPRODUCTS));
				p.setPrice(rs.getFloat(Product.PRICE));
				p.setFilename(rs.getString(Product.FILENAME));
				productlists.add(p);
			}		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				rs.close();
				pstmt.close();
				conn.close();				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return productlists;
	}
}
