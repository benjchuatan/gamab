package com.aion.db;

import java.sql.Connection;
import java.sql.SQLException;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

public class DBManager {
	
	public static Connection getConnection() throws SQLException{
		BasicDataSource bds = new BasicDataSource();
		bds.setDriverClassName("com.mysql.jdbc.Driver");
		bds.setUrl("jdbc:mysql://localhost:3306/secprg");
		bds.setUsername("root");
		bds.setPassword("password");
		
		return bds.getConnection();
		
	}

}
