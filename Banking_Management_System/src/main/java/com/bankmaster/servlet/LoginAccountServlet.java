package com.bankmaster.servlet;

import java.io.IOException;

import com.bankmaster.dao.LoginDAO;
import com.bankmaster.model.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginAccount")
public class LoginAccountServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		try 
		{
			LoginDAO loginDAO = new LoginDAO();
			Customer customer = loginDAO.loginAccount(email, password);
			
			if(customer != null)
			{
				resp.sendRedirect("account.jsp?customerId=" + customer.getCustomerId());
			}
			else
			{
				resp.sendRedirect("login-error.jsp");
			}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
