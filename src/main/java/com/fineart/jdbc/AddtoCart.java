package com.fineart.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AddtoCart {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fineart";
	 private static final String USERNAME = "root";
	 private static final String PASSWORD = "root";

   public static void InsertVal(String tableName, int img) {
       try {
       	Class.forName("com.mysql.cj.jdbc.Driver");
       	Connection conn = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
       	String checkQuery = "SELECT * FROM " + tableName + " WHERE img = ?";
        try (PreparedStatement checkStatement = conn.prepareStatement(checkQuery)) {
            checkStatement.setInt(1, img);
            try (ResultSet resultSet = checkStatement.executeQuery()) {
                if (resultSet.next()) {
                    int currentQty = resultSet.getInt("qty");
                    int newQty = currentQty + 1;
                    String updateQuery = "UPDATE " + tableName + " SET qty = ? WHERE img = ?";
                    try (PreparedStatement updateStatement = conn.prepareStatement(updateQuery)) {
                        updateStatement.setInt(1, newQty);
                        updateStatement.setInt(2, img);
                        updateStatement.executeUpdate();
                    }
                } else {
                    String insertQuery = "INSERT INTO " + tableName + " (img, qty) VALUES (?, 1)";
                    try (PreparedStatement insertStatement = conn.prepareStatement(insertQuery)) {
                        insertStatement.setInt(1, img);
                        insertStatement.executeUpdate();
                    }
                }
            }
        }

       } catch (Exception e) {
           e.printStackTrace(); // Handle the exception appropriately
       }
   }
}
