<%@page import="com.bankmaster.model.Account"%>
<%@page import="com.bankmaster.dao.AccountDAO"%>

<%
    int accountId = Integer.parseInt(request.getParameter("accountId"));
    AccountDAO accountDAO = new AccountDAO();
    Account account = null;
    try {
        account = accountDAO.getAccountById(accountId);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Check Balance</title>
</head>
<body>
    <h2>Account Balance</h2>
    <p>Account Number: <%= account.getAccountNumber() %></p>
    <p>Balance: <%= account.getBalance() %></p>
    <button onclick="location.href='account.jsp?customerId=<%= account.getCustomerId() %>'">Back to Account</button>
</body>
</html>
