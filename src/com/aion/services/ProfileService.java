package com.aion.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.aion.javabean.ProfileBean;
import com.aion.javabean.UserBean;

public class ProfileService {
	
	String sql = "select * from user where username=? and password=?";
	String url ="jdbc:mysql://localhost:3306/secprg";
	String username ="root";
	String password = "password";

	public ArrayList getSelectedUser(String a){
		ArrayList<ProfileBean> profilebeanlist = new ArrayList<>();
		String sql = "SELECT " + ProfileBean.FIRSTNAME + ","+ ProfileBean.LASTNAME +" FROM " + ProfileBean.TABLE_NAME + " "
				+ "Inner Join user on " + ProfileBean.USERID + " = " + UserBean.USERID + " Where "+UserBean.USERNAME+" = " + a;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				ProfileBean bean = new ProfileBean();
				bean.setFirstname(rs.getString(ProfileBean.FIRSTNAME));
				bean.setLastname(rs.getString(ProfileBean.LASTNAME));
				
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return profilebeanlist;
	}
}
