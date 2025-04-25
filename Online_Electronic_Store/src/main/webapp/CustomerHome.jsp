<%@page import="pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text" href="bg.css">
<meta charset="UTF-8">
<title>Welcome Page</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #dbe9f4, #ffffff);
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 500px;
        margin: 80px auto;
        background-color: #fff;
        padding: 40px 30px;
        text-align: center;
        border-radius: 12px;
        box-shadow: 0 6px 18px rgba(0,0,0,0.1);
    }

    h1 {
        color: #2c3e50;
        margin-bottom: 20px;
    }

    .message {
        font-size: 20px;
        margin-bottom: 30px;
        color: #555;
    }

    a.button {
        display: inline-block;
        margin: 10px;
        padding: 12px 24px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        font-weight: bold;
        border-radius: 6px;
        transition: background-color 0.3s, transform 0.2s;
    }

    a.button:hover {
        background-color: #0056b3;
        transform: scale(1.05);
    }

    a.logout {
        background-color: #dc3545;
    }

    a.logout:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>

<%
    CustomerBean abean = (CustomerBean) session.getAttribute("abean");
    String data = (String) request.getAttribute("msg");
    if (data == null) {
        data = "Welcome";
    }
%>

<div class="container">
    <h1>Dashboard</h1>
    <div class="message">
        <%= data %>  <strong><%= abean.getFname() %></strong> 👋
    </div>

    <a href="view2" class="button">🛍️ View Products</a>
    <a href="Logout" class="button logout">🚪 Logout</a>
</div>

</body>
</html>
