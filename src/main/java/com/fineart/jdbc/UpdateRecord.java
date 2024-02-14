package com.fineart.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UpdateRecord {
	
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fineart";
	 private static final String USERNAME = "root";
	 private static final String PASSWORD = "root";

    public static void updateOneRow(int val, String tableName, int num) {
    	try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
        	String updateQuery;
            if (num == -1) {
                updateQuery = "UPDATE " + tableName + " SET qty = qty - 1 WHERE img = ?";
            } else if (num == 1) {
                updateQuery = "UPDATE " + tableName + " SET qty = qty + 1 WHERE img = ?";
            } else {
                throw new IllegalArgumentException("Invalid num value. It should be -1 or 1.");
            }

            try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
                preparedStatement.setInt(1, val);
                preparedStatement.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static boolean checkQty(String cname, int val) {
    	try {
    		System.out.println("check1");
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            String query = "SELECT img, qty FROM "+ cname +" WHERE img=?";
            try (PreparedStatement selectStatement = connection.prepareStatement(query)) {
            selectStatement.setInt(1, val);
            ResultSet resultSet = selectStatement.executeQuery();
            if (resultSet.next()) {
                int qty = resultSet.getInt(2);
                System.out.println("qty:"+qty);
                if (qty == 1) {
                	System.out.println(qty);
                    return true;
                }
            }
            return false;
    	}

        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }
}
