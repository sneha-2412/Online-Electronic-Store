<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text" href="bg.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<%

     String data=(String)request.getAttribute("msg");
      out.println("<h1>"+data+"</h1>");
%>
<jsp:include page="index.html"/>

</body>
</html>