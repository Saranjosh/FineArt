package com.fineart.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateDB {

	    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/";
	    private static final String DB_NAME = "fineart";
	    private static final String USER = "root";
	    private static final String PASSWORD = "root";

	    public static void CreateDataBase() {
	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
	        	Connection connection = DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
	            Statement statement = connection.createStatement();

	            if (!databaseExists(statement, DB_NAME)) {
	                statement.executeUpdate("CREATE DATABASE " + DB_NAME);
	            }
	            statement.executeUpdate("USE " + DB_NAME);
	            System.out.println("using DB");
	            if (!tableExists(statement, "users")) {
	            	System.out.println(true);
	                statement.executeUpdate("CREATE TABLE users (" +
	                        "email varchar(40), " +
	                        "name varchar(40), " +
	                        "password varchar(20), " +
	                        "cart_name varchar(6)" +
	                        ")");
	                
	            }
	            

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	      
	    }

	    private static boolean databaseExists(Statement statement, String dbName) throws SQLException {
	        return statement.executeQuery("SHOW DATABASES LIKE '" + dbName + "'").next();
	    }
	    
	    private static boolean tableExists(Statement statement, String tableName) throws SQLException {
	        return statement.executeQuery("SHOW TABLES LIKE '" + tableName + "'").next();
	    }

}

