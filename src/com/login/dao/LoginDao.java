package com.login.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.aion.javabean.SessionBean;
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
	public int attempts(int id) {
		String sql = "Select attempts from secprg.sessiontracking where userid=?";
		SessionBean u = new SessionBean();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1,id);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}
	public boolean check(String uname, String pass) throws SQLException {
		
		String sql = "select * from user where username=? and password=SHA2(?, 256)";
		
		
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
	public int checktimer(int id) {
		String sql = "select time_to_sec(timediff(now(),logged)) from sessiontracking where userid=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				System.out.println(rs.getInt(1));
				return rs.getInt(1);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	public void addnewentry(int id) {
	  String sql = "INSERT INTO secprg.sessiontracking(attempts,logged,userid) values (1,now(),?)";
	  
	  try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, id);
		st.executeUpdate();
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	}
	
	public boolean checkifexists(int id) {
		String sql = "SELECT * FROM secprg.sessiontracking where userid=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs = st.executeQuery();
			if(!rs.next()) {
				return false;
			}else return true;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
	public void addattempts(int id) {
		String sql = "UPDATE secprg.sessiontracking set attempts = attempts + 1, logged=NOW() where userid=?";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			st.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
//	public void addrecord(int id) {
//		String sql = "INSERT INTO secprg.sessiontracking(attempts,logged,userid) VALUES('?','?','?')";
//	}
	
	public void lockaccounnt(int id) {
		String sql = "UPDATE secprg.user set locked=1 where iduser=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			st.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int checklock(int id) {
		String sql = "SELECT locked FROM secprg.user where iduser=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				System.out.println(rs.getInt(1));
				return rs.getInt(1);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
	public void unlockaccounnt(int id) {
		String sql = "UPDATE secprg.user set locked=0 where iduser=?";
		String sql1 = "Update secprg.sessiontracking set attempts=0 where userid=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			PreparedStatement st1 = con.prepareStatement(sql1);
			st.setInt(1, id);
			st1.setInt(1, id);
			st.executeUpdate();
			st1.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public boolean checkusername(String uname) {
		String sql = "select * from user where username=?";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
		
		
	}


}
