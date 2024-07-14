package com.bankmaster.servlet;

import java.io.IOException;

import com.bankmaster.dao.CustomerDAO;
import com.bankmaster.model.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/createCustomer")
public class CreateCustomerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String city = req.getParameter("city");
		String phone = req.getParameter("phone");

		Customer customer = new Customer();
		customer.setName(name);
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setCity(city);
		customer.setPhone(phone);

		try 
		{
			int customerId = CustomerDAO.createCustomer(customer);
			System.out.println(customerId);
			resp.sendRedirect("create-account.jsp?customerId=" + customerId);
		}
		catch (Exception e) {
			resp.sendRedirect("register-error.jsp");
		}

	}
}
