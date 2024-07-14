<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Error</title>
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
        h1 {
            color: #e74c3c;
        }
        p {
            color: #555;
        }
        .btn {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login Error</h1>
        <p>We're sorry, but there was an error during your login process. Please try again.</p>
        <p>If the problem persists, please contact our support team for assistance.</p>
        <a href="login.jsp" class="btn header2-bg">Try Again</a>
    </div>
</body>
</html>
