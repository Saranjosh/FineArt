package com.fineart.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.fineart.java.NameGenerator;

public class CartHandler {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fineart";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    public static String generateUniqueCart() {
        String randomWord = NameGenerator.generateRandomWord();

        
        while (isCartWordExists(randomWord)) {
            randomWord = NameGenerator.generateRandomWord();
        }

        
        return randomWord;
    }
    private static boolean isCartWordExists(String cartWord) {
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            String query = "SELECT cart_name FROM users WHERE cart_name = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, cartWord);
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    return resultSet.next(); 
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public static boolean isEmailExists(String email) {
    	
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
    		String query = "SELECT email FROM users WHERE email = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, email);
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    return resultSet.next();
                }
            }
        } catch (Exception e) {
            e.printStackTrace(); 
        }
        return false;
    } 
}
