package com.fineart.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateCartTable {
	 private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fineart";
	 private static final String USERNAME = "root";
	 private static final String PASSWORD = "root";

    public static void createTable(String tableName) {
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            Statement statement = connection.createStatement();

            if (!isTableExists(statement, tableName)) {
                String query = "CREATE TABLE " + tableName + " (img INT, qty INT)";
                statement.executeUpdate(query);

                System.out.println("Table " + tableName + " created successfully.");
            } else {
                System.out.println("Table " + tableName + " already exists.");
            }
        } catch (Exception e) {
            e.printStackTrace(); 
        }
    }

    private static boolean isTableExists(Statement statement, String tableName) throws SQLException {
        String query = "SHOW TABLES LIKE '" + tableName + "'";
        return statement.executeQuery(query).next();
    }

}

