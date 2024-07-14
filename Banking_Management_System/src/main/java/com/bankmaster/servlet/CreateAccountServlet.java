package com.bankmaster.servlet;

import java.io.IOException;
import java.util.Random;

import com.bankmaster.dao.AccountDAO;
import com.bankmaster.model.Account;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/createAccount")
public class CreateAccountServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int customerId = Integer.parseInt(req.getParameter("customerId"));
		String accountNumber = generateAccountNumber();
		String bal = req.getParameter("balance");
		double balance = Double.parseDouble(bal);
		String accountType = req.getParameter("accountType");
		
		Account account = new Account();
		account.setCustomerId(customerId);
		account.setAccountNumber(accountNumber);
		account.setBalance(balance);
		account.setAccountType(accountType);
		
		try 
		{
			AccountDAO.createAccount(account);
			resp.sendRedirect("account.jsp?customerId=" + customerId);
		}
		catch (Exception e) {
			resp.sendRedirect("register-error.jsp");
		}
	}
	
	private String generateAccountNumber() {
        Random random = new Random();
        int accountNumber = 100000000 + random.nextInt(900000000);
        return String.valueOf(accountNumber);
    }
}
