<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.bankmaster.dao.CustomerDAO"%>
<%@ page import="com.bankmaster.dao.AccountDAO"%>
<%@ page import="com.bankmaster.model.Customer"%>
<%@ page import="com.bankmaster.model.Account"%>
<%
int customerId = Integer.parseInt(request.getParameter("customerId"));
CustomerDAO customerDAO = new CustomerDAO();
AccountDAO accountDAO = new AccountDAO();
Customer customer = null;
Account account = null;
try {
	customer = customerDAO.getCustomerById(customerId);
	account = accountDAO.getAccountByCustomerId(customerId);
} catch (Exception e) {
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="components/common_css_js.jsp"%>
<title>Account Details</title>
</head>
<body>

	<div class="container-fluid">
		<%@ include file="components/navbar2.jsp"%>
	</div>

	<div class="container pt-5">
		<div class="row">
			<div class="col-md-6 border rounded p-3">
				<h3>Customer Details</h3>
				<table class="table table-bordered table-striped">
					<tr>
						<td>Name</td>
						<td><%=customer.getName()%></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><%=customer.getEmail()%></td>
					</tr>
					<tr>
						<td>City</td>
						<td><%=customer.getCity()%></td>
					</tr>
					<tr>
						<td>Phone</td>
						<td><%=customer.getPhone()%></td>
					</tr>
				</table>
			</div>
			
			<div class="col-md-6 border rounded p-3">
				<h3>Account Details</h3>
				<table class="table table-bordered table-striped">
					<tr>
						<td>Account Number</td>
						<td><%=account.getAccountNumber()%></td>
					</tr>
					<tr>
						<td>Account Type</td>
						<td><%=account.getAccountType()%></td>
					</tr>
					<tr>
						<td>Balance</td>
						<td><%=account.getBalance()%></td>
					</tr>
				</table>
			</div>
			
		</div>

		<div class="row text-center">
			<div class="col-md-3 border rounded p-3">
				<form action="deposit.jsp" method="get">
					<input type="hidden" name="customerId" value="<%= customerId %>">
					<input type="hidden" name="accountId" value="<%= account.getAccountId() %>"> 
					<input class="btn header1-bg w-50" type="submit" value="Deposit">
				</form>
			</div>

			<div class="col-md-3 border rounded p-3">
				<form action="withdraw.jsp" method="get">
					<input type="hidden" name="customerId" value="<%= customerId %>">
					<input type="hidden" name="accountId" value="<%= account.getAccountId() %>"> 
					<input class="btn header1-bg w-50" type="submit" value="Withdraw">
				</form>
			</div>

			<div class="col-md-3 border rounded p-3">
				<form action="transfer.jsp" method="get">
					<input type="hidden" name="customerId" value="<%= customerId %>">
					<input type="hidden" name="accountId" value="<%= account.getAccountId() %>"> 
						<input class="btn header1-bg w-50" type="submit" value="Transfer">
				</form>
			</div>

			<div class="col-md-3 border rounded p-3">
				<a class="btn header1-bg" href="transactionHistory?accountId=<%= account.getAccountId() %>">View
					Transaction History</a>
			</div>
		</div>
	</div>

</body>
</html>
