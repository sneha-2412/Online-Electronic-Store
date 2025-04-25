<%@page import="pack1.CustomerBean"%>
<%@page import="pack1.ProductBean"%>
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

<%
AdminBean abean=(AdminBean)session.getAttribute("abean");
ProductBean pbean=(ProductBean)request.getAttribute("pbean");
out.println("<u>Hello"+abean.getFname() +" Please edit</u><br><br>");

%>
<form action="update" method="post">
Product Price <input type="text" name="pprice" value="<%=pbean.getPprice() %>"><br><br>
Product Quantity <input type="text" name="pqty" value="<%=pbean.getPqty() %>"><br><br>

<input type="hidden" name=pcode value="<%=pbean.getPcode() %>">

<input type="submit" value="update">
</form>

</body>
</html>