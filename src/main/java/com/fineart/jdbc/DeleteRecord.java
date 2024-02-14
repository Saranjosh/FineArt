package com.fineart.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class DeleteRecord {
	
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fineart";
	 private static final String USERNAME = "root";
	 private static final String PASSWORD = "root";

    public static void deleteOneRow(int valueToDelete, String cname) {
    	try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            String query = "DELETE FROM "+ cname +" WHERE img =?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {                
            	preparedStatement.setInt(1, valueToDelete);
                preparedStatement.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void deleteAll(String cname) {
    	try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            String query = "DELETE FROM "+ cname;
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
