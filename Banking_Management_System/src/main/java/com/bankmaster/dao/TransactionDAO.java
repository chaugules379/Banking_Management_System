package com.bankmaster.dao;

import com.bankmaster.dbconnection.DatabaseConnection;
import com.bankmaster.model.Transaction;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class TransactionDAO {

	private LocalDateTime ldt = LocalDateTime.now();
	
	// Save Transactions
    public void saveTransaction(Transaction transaction) throws SQLException {
        String query = "INSERT INTO transaction (accountId, type, amount, transactionTime, targetAccountId) VALUES (?, ?, ?, ?, ?)";
        try {
        	Connection con = DatabaseConnection.getConnection();
        	PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, transaction.getAccountId());
            ps.setString(2, transaction.getType());
            ps.setDouble(3, transaction.getAmount());
            ps.setString(4, ldt.toLocalDate() + " " + ldt.toLocalTime());
            if (transaction.getTargetAccountId() != null) {
                ps.setInt(5, transaction.getTargetAccountId());
            } else {
                ps.setNull(5, java.sql.Types.INTEGER);
            }
            ps.executeUpdate();
        }
        catch (Exception e) {
			System.out.println(e.getMessage());
        }
    }
    
    // Get All Transaction By Account Id
    public List<Transaction> getTransactionsByAccountId(int accountId) throws SQLException {
        List<Transaction> transactions = new ArrayList<>();
        String sql = "SELECT * FROM transaction WHERE accountId = ?";
        try {
            Connection con = DatabaseConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
        	ps.setInt(1, accountId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Transaction transaction = new Transaction();
                transaction.setTransactionId(rs.getInt("transactionId"));
                transaction.setAccountId(rs.getInt("accountId"));
                transaction.setType(rs.getString("type"));
                transaction.setAmount(rs.getDouble("amount"));
                transaction.setTransactionTime(rs.getString("transactionTime"));
                int targetAccountId = rs.getInt("targetAccountId");
                if (!rs.wasNull()) {
                    transaction.setTargetAccountId(targetAccountId);
                }
                transactions.add(transaction);
            }
        }
        catch (Exception e) {
			System.out.println(e.getMessage());
		}
        return transactions;
    }
}
