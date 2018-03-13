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
	
	public ArrayList getAdminProducts() {
		ArrayList<Product> productlists = new ArrayList<>();
		
		String sql1 = "select * from secprg.product";		
		
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql1);
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

	public void deleteProduct(int id) {
		ArrayList<Product> product = new ArrayList<>();
		
		String sql = "DELETE FROM secprg." + Product.TABLE_NAME + " WHERE " + Product.IDPRODUCTS + " = " + id;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			st.executeUpdate();	

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList getSelectedProducts(Product p) {
		ArrayList<Product> productlists = new ArrayList<>();		
		String sql = "SELECT * FROM secprg." + Product.TABLE_NAME + " WHERE " + 
				Product.NAME + " LIKE" + " ? ";
		String what;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			what = "%" + p.getName() +"%"; 
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, what);
			ResultSet rs = st.executeQuery();
			
			
			while(rs.next()) {
				Product ap = new Product();
				
				ap.setName(rs.getString(Product.NAME));
				ap.setManufacturer(rs.getString(Product.MANUFACTURER));
				ap.setDescription(rs.getString(Product.DESCRIPTION));
				ap.setIdproducts(rs.getInt(Product.IDPRODUCTS));
				ap.setPrice(rs.getFloat(Product.PRICE));
				ap.setFilename(rs.getString(Product.FILENAME));
				System.out.println("asdasdas " + ap.getFilename());

				productlists.add(ap);
			}		

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return productlists;
	}
	
	
	
	public ArrayList getProduct(int id) {
		ArrayList<Product> product = new ArrayList<>();

		String sql = "SELECT * FROM secprg." + Product.TABLE_NAME + " WHERE " + Product.IDPRODUCTS + "=" + id;
		
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

				product.add(p);
			}		

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return product;
	}
	
	public ArrayList getAllProducts(String a){
		ArrayList<Product> productlists = new ArrayList<>();
		
		String sql1 = "select * from product where type =?";		
		
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql1);
			st.setString(1,a);
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
	
	public void addProducts(Product p) {
		String sql = "INSERT INTO secprg." + Product.TABLE_NAME + "("
				+ Product.NAME + ","
				+ Product.MANUFACTURER + ","
				+ Product.DESCRIPTION + ","
				+ Product.PRICE + ","
				+ Product.FILENAME + ")"
				+ "VALUES (?,?,?,?,?)";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, p.getName());
			st.setString(2, p.getManufacturer());
			st.setString(3, p.getDescription());
			st.setFloat(4, p.getPrice());
			st.setString(5, p.getFilename());
			st.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
}
