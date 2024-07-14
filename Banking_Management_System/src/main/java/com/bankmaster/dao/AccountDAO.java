package com.bankmaster.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bankmaster.dbconnection.DatabaseConnection;
import com.bankmaster.model.Account;

public class AccountDAO {

	// Create Account
	public static int createAccount(Account account) {
		int status = 0;
		try {
			Connection con = DatabaseConnection.getConnection();
			String query = "INSERT INTO account(customerId, accountNumber, balance, accountType) VALUES(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, account.getCustomerId());
			ps.setString(2, account.getAccountNumber());
			ps.setDouble(3, account.getBalance());
			ps.setString(4, account.getAccountType());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return status;
	}

	// Get Account By Customer Id
	public Account getAccountByCustomerId(int customerId)
	{
		try 
		{
			Connection con = DatabaseConnection.getConnection();
			String query = "SELECT * FROM account WHERE customerId = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, customerId);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				Account account = new Account();
                account.setAccountId(rs.getInt("accountId"));
                account.setCustomerId(rs.getInt("customerId"));
                account.setAccountNumber(rs.getString("accountNumber"));
                account.setBalance(rs.getDouble("balance"));
                account.setAccountType(rs.getString("accountType"));
                return account;
			}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	// Get Account By Account Id
	public Account getAccountById(int accountId)
	{
		try 
		{
			Connection con = DatabaseConnection.getConnection();
			String query = "SELECT * FROM account WHERE accountId = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, accountId);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				Account account = new Account();
                account.setAccountId(rs.getInt("accountId"));
                account.setCustomerId(rs.getInt("customerId"));
                account.setAccountNumber(rs.getString("accountNumber"));
                account.setBalance(rs.getDouble("balance"));
                account.setAccountType(rs.getString("accountType"));
                return account;
			}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	// Update Account
	public void updateAccount(Account account) {
        String query = "UPDATE account SET accountNumber = ?, accountType = ?, balance = ? WHERE accountId = ?";
        try {
        	Connection con = DatabaseConnection.getConnection();
        	PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, account.getAccountNumber());
            ps.setString(2, account.getAccountType());
            ps.setDouble(3, account.getBalance());
            ps.setInt(4, account.getAccountId());
            ps.executeUpdate();
        }
        catch (Exception e) {
			System.out.println(e.getMessage());
		}
    }
        
}
