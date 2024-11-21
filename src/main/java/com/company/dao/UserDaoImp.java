package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.util.DBUtil;

public class UserDaoImp implements UserDao {

    @Override
    public boolean isValidUser(String username, String password) {
        
    	String query = "SELECT * FROM users WHERE username = ? AND password = ?"; // SQL query to check if a user exists with the provided username and password
        
        try ( // Try-with-resources ensures automatic closing of resources
        	
        	// 1. Load Driver
            Connection connection = DBUtil.getConnection(); // Establish a database connection (using a utility method DBUtil.getConnection)
            PreparedStatement preparedStatement = connection.prepareStatement(query)) { // Prepare the SQL query to prevent SQL injection
        	System.out.println("preparedStatement before: " + preparedStatement);
        	
            // Set the values for the placeholders in the query
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            System.out.println("preparedStatement after: " + preparedStatement);

            ResultSet resultSet = preparedStatement.executeQuery(); // Execute the query and store the results in a ResultSet
            System.out.println("resultSet: " + resultSet);
            
            boolean userExists = resultSet.next(); // resultSet.next() will be TRUE if a matching record is found, otherwise false
            System.out.println("result of resultSet.next(): " + userExists);
            System.out.println("Query executed successfully!");            
            return userExists;
                    
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // Return FALSE if any error occurs during database operations
        }
    }

	@Override
	public boolean addUser(User user) {
		String query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());

            int rowsAffected = preparedStatement.executeUpdate();

            System.out.println("User added");   
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
	}
}
