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
import com.aion.javabean.ReviewBean;




public class ProductService {
	static String url ="jdbc:mysql://localhost:3306/secprg";
	static String username ="root";
	static String password = "password";
	
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
			st.executeUpdate();	

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void editArtworks(Product p) {
		String sql = "UPDATE secprg." + Product.TABLE_NAME + " SET " 
				+ Product.NAME + " = " + "? ,"
				+ Product.MANUFACTURER + " = " + "? ,"
				+ Product.DESCRIPTION + " = " + "? ,"
				+ Product.PRICE + " = " + "? "
				+ "WHERE " + Product.IDPRODUCTS + " = " + "?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, p.getName());
			st.setString(2, p.getManufacturer());
			st.setString(3, p.getDescription());
			st.setFloat(4, p.getPrice());
			st.setInt(5, p.getIdproducts());
			System.out.println(st);
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
				System.out.println("Eto quantity dapat " + rs.getInt(Product.QUANTITY));

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
				p.setQuantity(rs.getInt(Product.QUANTITY));
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
	
	public static ArrayList displayComment(int prodID) {
		ArrayList<ReviewBean> reviewlists = new ArrayList<>();
		String sql = "SELECT * FROM secprg.productreviews where productID = ?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1,prodID);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				ReviewBean r = new ReviewBean();
				r.setProductReview(rs.getString(r.PRODUCTREVIEW));
				
				System.out.println("comment: " + r.getProductReview());
				
				
				reviewlists.add(r);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return reviewlists;
		
		
	}
	
	public void addComment(int prodID,int userID, String review) {
		String sql = "INSERT INTO secprg.productreviews set productReview=?,userID=?,productID=?";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,review);
			st.setInt(2,userID);
			st.setInt(3,prodID);
			st.executeUpdate();
			System.out.println("gumagana naman");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
//	public boolean checkTrans(int userID, int prodID) {
//		
//		String sql = "SELECT * FROM secprg.transactions where productID = ? and iduser = ?";
//		
//		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection con = DriverManager.getConnection(url,username,password);
//			PreparedStatement st = con.prepareStatement(sql);
//			st.setInt(1,prodID);
//			st.setInt(2,userID);
//			ResultSet rs = st.executeQuery();
//			while(rs.next()) {
//				return true;
//			}
//			
//		} catch (ClassNotFoundException | SQLException e) {
//			
//			e.printStackTrace();
//		}
//		
//		return false;
//		
//	}
	
	public void addProducts(Product p) {
		String sql = "INSERT INTO secprg." + Product.TABLE_NAME + "("
				+ Product.NAME + ","
				+ Product.MANUFACTURER + ","
				+ Product.DESCRIPTION + ","
				+ Product.PRICE + ","
				+ Product.FILENAME + ","
				+ Product.TYPE + ","
				+ Product.QUANTITY + ")"
				+ "VALUES (?,?,?,?,?,?,?)";
		
		System.out.println("Hey this is the statement: " + sql); 
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, p.getName());
			st.setString(2, p.getManufacturer());
			st.setString(3, p.getDescription());
			st.setFloat(4, p.getPrice());
			st.setString(5, p.getFilename());
			st.setString(6, p.getType());
			st.setInt(7, p.getQuantity());
			st.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
}
