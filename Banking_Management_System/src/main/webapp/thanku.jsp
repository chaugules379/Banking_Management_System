<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thank You</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-top: 50px;
            text-align: center;
        }
    </style>
</head>
<body>

<%
HttpSession session1 = request.getSession();
String name = (String) session1.getAttribute("name");
%>

    <div class="container">
        <h2>Thank You! <%= name %></h2>
        <p>Thank you for contacting us. We have received your message and will get back to you shortly.</p>
        <a href="home.jsp">Welcome</a>
    </div>
</body>
</html>
