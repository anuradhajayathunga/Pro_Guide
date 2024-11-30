package com.guide.DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url="jdbc:mysql://localhost:3306/onlineguide";
	private static String user="root";
	private static String psw="root123";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user,psw);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Database connection is nt successful!!!");
		}
		
		
		return con;
	}
}
