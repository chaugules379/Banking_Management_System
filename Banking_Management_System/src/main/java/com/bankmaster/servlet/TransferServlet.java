package com.bankmaster.servlet;

import java.io.IOException;
import java.time.LocalDateTime;

import com.bankmaster.dao.AccountDAO;
import com.bankmaster.dao.CustomerDAO;
import com.bankmaster.dao.TransactionDAO;
import com.bankmaster.model.Account;
import com.bankmaster.model.Customer;
import com.bankmaster.model.Transaction;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/transferServlet")
public class TransferServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private LocalDateTime ldt = LocalDateTime.now();

	private CustomerDAO customerDAO = new CustomerDAO();
	private AccountDAO accountDAO = new AccountDAO();
	private TransactionDAO transactionDAO = new TransactionDAO();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int accountId = Integer.parseInt(req.getParameter("accountId"));
		int targetAccountId = Integer.parseInt(req.getParameter("targetAccountId"));
		String amnt = req.getParameter("amount");
		double amount = Double.parseDouble(amnt);
		
		try 
		{
			Customer customer = customerDAO.getCustomerById(accountId);
			if(customer != null)
			{
				Account account = accountDAO.getAccountById(accountId);
				Account sourceAccount = accountDAO.getAccountById(accountId);
	            Account targetAccount = accountDAO.getAccountById(targetAccountId);
				
				if(sourceAccount != null && targetAccount != null && sourceAccount.getBalance() >= amount)
				{
					sourceAccount.setBalance(sourceAccount.getBalance() - amount);
	                targetAccount.setBalance(targetAccount.getBalance() + amount);

	                accountDAO.updateAccount(sourceAccount);
	                accountDAO.updateAccount(targetAccount);
					
					Transaction transaction = new Transaction();
					transaction.setAccountId(accountId);
					transaction.setType("TRANSFER");
					transaction.setAmount(amount);
					transaction.setTransactionTime(ldt.toLocalDate() + " " + ldt.toLocalTime());
					transaction.setTargetAccountId(targetAccount.getAccountId());
					transactionDAO.saveTransaction(transaction);
					
					resp.sendRedirect("account.jsp?customerId="+ customer.getCustomerId() +"&accountId=" + account.getAccountId());
				}
				else
				{
					resp.sendRedirect("transaction-error.jsp");
				}
			}
			else
			{
				resp.sendRedirect("transaction-error.jsp");
			}
			
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
