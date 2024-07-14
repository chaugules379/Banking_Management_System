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

@WebServlet("/depositServlet")
public class DepositServlet extends HttpServlet {

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
		String amnt = req.getParameter("amount");
		double amount = Double.parseDouble(amnt);
		
		try 
		{
			Customer customer = customerDAO.getCustomerById(accountId);
			if(customer != null)
			{
				Account account = accountDAO.getAccountById(accountId);
				if(account != null)
				{
					account.setBalance(account.getBalance() + amount);
					accountDAO.updateAccount(account);
					
					Transaction transaction = new Transaction();
					transaction.setAccountId(accountId);
					transaction.setType("DEPOSIT");
					transaction.setAmount(amount);
					transaction.setTransactionTime(ldt.toLocalDate() + " " + ldt.toLocalTime());
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
