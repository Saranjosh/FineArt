package com.fineart.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

public class CartTablePro {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fineart";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "root";

	public static Map<Integer, Integer> extractNumbers(String tableName){
		Map<Integer, Integer> resultMap = new HashMap<>();
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
		Statement statement = connection.createStatement();

            String query = "SELECT img, qty FROM " + tableName;
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                int img = resultSet.getInt("img");
                int qty = resultSet.getInt("qty");
                resultMap.put(img, qty);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultMap;
    }
    
    public static boolean hasRows(String tableName) {
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
           	Connection conn = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
           	String query = "SELECT COUNT(*) FROM " + tableName;
            try (PreparedStatement preparedStatement = conn.prepareStatement(query)) {
                ResultSet resultSet = preparedStatement.executeQuery();
                resultSet.next();
                int rowCount = resultSet.getInt(1);
                return rowCount > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false; // Handle exceptions appropriately in your application
        }
    }

}