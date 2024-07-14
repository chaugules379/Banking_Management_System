package com.bankmaster.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bankmaster.dbconnection.DatabaseConnection;
import com.bankmaster.model.Customer;

public class LoginDAO {

	public Customer loginAccount(String email, String password)
	{
		try 
		{
			Connection con = DatabaseConnection.getConnection();
			String query = "SELECT * FROM customer WHERE email = ? and password = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
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
