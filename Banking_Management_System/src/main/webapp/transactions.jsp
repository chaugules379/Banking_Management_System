<%@page import="java.util.List"%>
<%@page import="com.bankmaster.model.Transaction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Transaction Details</title>
<%@ include file="components/common_css_js.jsp"%>
</head>
<body>

	<div class="container-fluid">
		<%@ include file="components/navbar2.jsp"%>
	</div>

	<div class="container-fluid">
		<h3 class="text-center py-3">Transaction Details</h3>
		<%
		List<Transaction> transactions = (List<Transaction>) request.getAttribute("transactions");
		if (transactions != null && !transactions.isEmpty()) {
		%>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Transaction ID</th>
					<th>Account ID</th>
					<th>Type</th>
					<th>Amount</th>
					<th>Transaction Time</th>
					<th>To Account ID</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Transaction trans : transactions) {
				%>
				<tr>
					<td><%=trans.getTransactionId()%></td>
					<td><%=trans.getAccountId()%></td>
					<td><%=trans.getType()%></td>
					<td><%=trans.getAmount()%></td>
					<td><%=trans.getTransactionTime()%></td>
					<td><%=(trans.getTargetAccountId() != null) ? trans.getTargetAccountId() : "N/A"%>
					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>

		<%
		} else {
		%>
		<p>No transactions found.</p>
		<%
		}
		%>
	</div>

</body>
</html>
