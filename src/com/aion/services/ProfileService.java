package com.aion.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.aion.javabean.ProfileBean;
import com.aion.javabean.TransBean;
import com.aion.javabean.UserBean;

public class ProfileService {
	
	
	String url ="jdbc:mysql://localhost:3306/secprg";
	String username ="root";
	String password = "password";

	public  ArrayList<ProfileBean> getSelectedUser(String a){
		ArrayList<ProfileBean> profilebeanlist = new ArrayList<>();
		//String sql = "SELECT " + ProfileBean.FIRSTNAME + ","+ ProfileBean.LASTNAME +" FROM " + ProfileBean.TABLE_NAME + " "
		//	+ "Inner Join "+ UserBean.TABLE_NAME2 + " on profile.iduser  = user.iduser Where "+ UserBean.USERNAME+" = " + a;
		
		String sql = "select profile.first_name, profile.last_name,user.username from profile inner join user on profile.iduser = user.iduser where user.username =?";  
				
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, a);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				ProfileBean bean = new ProfileBean();
				bean.setFirst_name(rs.getString(ProfileBean.FIRSTNAME));
				
				bean.setLast_name(rs.getString(ProfileBean.LASTNAME));
				profilebeanlist.add(bean);
				
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//System.out.println(profilebeanlist);
		
		return profilebeanlist;
	}
	
	
	public  ArrayList<TransBean> getUserTrans(String a){
		ArrayList<TransBean> profilebeantrans = new ArrayList<>();
		
		String sql = "select transhistory.transID,transhistory.date,product.price,product.name from transhistory\r\n" + 
				     "inner join product on transhistory.productID = product.ProductID where transhistory.username=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, a);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				TransBean bean = new TransBean();
				bean.setName(rs.getString(TransBean.NAME));
				bean.setTransID(rs.getInt(TransBean.TRANS_ID));
				bean.setDate(rs.getString(TransBean.DATE));
				bean.setPrice(rs.getInt(TransBean.PRICE));
				profilebeantrans.add(bean);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return profilebeantrans;
	}
	
	public void addUsers(ProfileBean p, UserBean u) {
		String sql = "insert into secprg.user(username,password,privilege) values(?,?,4)";
		String sql1 = "insert into secprg.profile(iduser,first_name,last_name,email,shipping_add,billing_add) values(LAST_INSERT_ID(),?,?,?,?,?)";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			PreparedStatement st1 = con.prepareStatement(sql1);
			st.setString(1, u.getUsername());
			st.setString(2, u.getPassword());
			st1.setString(1,p.getFirst_name());
			st1.setString(2, p.getLast_name());
			st1.setString(3, p.getEmail());
			st1.setString(4,p.getShipping_add());
			st1.setString(5,p.getBilling_add());
			st.executeUpdate();
			st1.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	
	
	
}
