<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminDashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f4f8;
        margin: 0;
        padding: 0;
    }
    center {
        display: block;
        margin-top: 100px;
    }
    h1 {
        color: #333;
    }
    a {
        display: inline-block;
        margin: 10px 0;
        padding: 12px 24px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }
    a:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<center>
<h1>
<%
    AdminBean bean=(AdminBean)session.getAttribute("abean");
    out.println("Welcome Mr "+bean.getFname()+"<br><br>");
%>
</h1>
<a href="AddProduct.html">Add Product</a><br>
<a href="view1">View Product</a><br>
<a href="Logout">Logout</a>
</center>
</body>
</html>
