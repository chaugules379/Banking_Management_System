<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bankmaster.model.Customer"%>
<%@page import="com.bankmaster.dao.CustomerDAO"%>

<%
int customerId = Integer.parseInt(request.getParameter("customerId"));
CustomerDAO customerDAO = new CustomerDAO();
Customer customer = null;
try {
	customer = customerDAO.getCustomerById(customerId);
} catch (Exception e) {
	e.printStackTrace();
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="components/common_css_js.jsp"%>
<title>BankMaster - Account Register</title>
</head>
<body>

	<div class="container-fluid">
		<%@ include file="components/navbar.jsp"%>
		<%@ include file="components/navbar3.jsp"%>
	</div>

	<div class="container">
		<div class="row">
			<h1 class="text-center pt-5">Register Account</h1>
			<div class="col-md-6 offset-md-3 border rounded mt-3 mb-5"
				style="background-color: #f9f9f9; box-shadow: 2px 2px grey">

				<form action="createAccount" method="post" class="p-3">
					<input type="hidden" name="customerId" value="<%=customerId%>">
					<div class="mb-3">
						<label for="accountType" class="form-label">Account Type</label> <input
							type="text" class="form-control" name="accountType">
					</div>
					<div class="mb-3">
						<label for="balance" class="form-label">Initial Balance</label> <input
							type="number" class="form-control" name="balance">
					</div>

					<div class="mb-3 text-end">
						<button type="submit" class="btn header1-bg w-25">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<%@ include file="components/footer.jsp"%>
	</div>

</body>
</html>