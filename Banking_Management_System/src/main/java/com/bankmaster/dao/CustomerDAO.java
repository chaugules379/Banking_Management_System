package com.bankmaster.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bankmaster.dbconnection.DatabaseConnection;
import com.bankmaster.model.Customer;

public class CustomerDAO {

	// Create Customer
	public static int createCustomer(Customer customer)
	{
		int status = 0;
		try 
		{
			Connection con = DatabaseConnection.getConnection();
			String query = "INSERT INTO customer(name, email, password, city, phone) VALUES(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
			ps.setString(1, customer.getName());
			ps.setString(2, customer.getEmail());
			ps.setString(3, customer.getPassword());
			ps.setString(4, customer.getCity());
			ps.setString(5, customer.getPhone());
			status = ps.executeUpdate();
			
			ResultSet rs = ps.getGeneratedKeys();
			if(rs.next())
			{
				return rs.getInt(1);
			}
			else
			{
				System.out.println("Creating customer failed, no ID obtained.");
			}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return status;
	}
	
	// Get Customer By Customer Id
	public Customer getCustomerById(int customerId)
	{
		try 
		{
			Connection con = DatabaseConnection.getConnection();
			String query = "SELECT * FROM customer WHERE customerId = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, customerId);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				Customer customer = new Customer();
				customer.setCustomerId(rs.getInt("customerId"));
				customer.setName(rs.getString("name"));
				customer.setEmail(rs.getString("email"));
				customer.setPassword(rs.getString("password"));
				customer.setCity(rs.getString("city"));
				customer.setPhone(rs.getString("phone"));
				return customer;
			}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
}
