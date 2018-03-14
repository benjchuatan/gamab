package com.aion.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.aion.javabean.TransBean;
import com.aion.javabean.TransBeana;

public class TransactionService {
	
	String url ="jdbc:mysql://localhost:3306/secprg";
	String username ="root";
	String password = "password";
	
	public void addTransactions(TransBeana b) {
		String sql = "insert into secprg.transactions"
				+ "(productID,iduser,Date) "
				+ "values(?,?,?)";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, b.getProductID());
			st.setInt(2, b.getIduser());
			st.setString(3, b.getDate());
			st.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
