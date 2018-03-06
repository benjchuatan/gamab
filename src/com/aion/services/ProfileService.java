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

	public  ArrayList getSelectedUser(String a){
		ArrayList<ProfileBean> profilebeanlist = new ArrayList<>();
		String sql = "SELECT " + ProfileBean.FIRSTNAME + ","+ ProfileBean.LASTNAME +" FROM " + ProfileBean.TABLE_NAME + " "
				+ "Inner Join "+ UserBean.TABLE_NAME2 + " on profile.iduser  = user.iduser Where "+ UserBean.USERNAME+" = " + a;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
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
		
		
		
		return profilebeanlist;
	}
}
