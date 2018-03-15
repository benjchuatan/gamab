package com.login.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.aion.javabean.UserBean;

public class LoginDao {
	String url ="jdbc:mysql://localhost:3306/secprg";
	String username ="root";
	String password = "password";
	
	public int getiduser(String uname) {
		UserBean u = new UserBean();
		
		String sql = "SELECT iduser FROM secprg.user where username = ?";
		
		try {
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				u.setIduser(rs.getInt(UserBean.USERID2));
			}
			
			return u.getIduser();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return 0;
	}
	public boolean check(String uname, String pass) throws SQLException {
		
		String sql = "select * from user where username=? and password=?";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	
	public  int checkadmin(String uname) {
		
		String sql = "select privilege from user where username =?";
		UserBean u = new UserBean();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				u.setPrevilege(rs.getInt(UserBean.PRIVILEGE));
			}
			

			if(u.getPrevilege() != 4) {
				return u.getPrevilege();
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
		return 4;
	}


}
