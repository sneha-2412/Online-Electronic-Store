<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text" href="bg.css">
</head>
<body>
<center>
<h1>
<%
     AdminBean abean=(AdminBean)session.getAttribute("abean");
	String data=(String)request.getAttribute("msg");
	out.println("Hello"+abean.getFname()+"<br><br>");
	out.println(data);

%>
<a href="AddProduct.html">Add Product</a><br><br>
<a href="view1">View Product</a><br><br>
<a href="Logout">Logout</a><br><br>

</body>
</html>