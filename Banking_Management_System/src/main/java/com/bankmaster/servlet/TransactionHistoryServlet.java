package com.bankmaster.servlet;

import java.io.IOException;
import java.util.List;

import com.bankmaster.dao.TransactionDAO;
import com.bankmaster.model.Transaction;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/transactionHistory")
public class TransactionHistoryServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private TransactionDAO transactionDAO = new TransactionDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int accountId = Integer.parseInt(req.getParameter("accountId"));
		
		try 
		{
			List<Transaction> transactions = transactionDAO.getTransactionsByAccountId(accountId);
			req.setAttribute("transactions", transactions);
			req.getRequestDispatcher("transactions.jsp").forward(req, resp);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
