<%@page import="java.util.Iterator"%>
<%@page import="pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><center><h1>
<%
 AdminBean abean=(AdminBean)session.getAttribute("abean");
ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("productList");

  out.println("<u> Hello" +abean.getFname()+" there are your product details!! </u><br><br>");
  if(al.size()==0)

  {
	  out.println("products not available");
	  
  }
  else
	  
  {
	  Iterator<ProductBean>i=al.iterator();
	  while(i.hasNext())
	  {
		  ProductBean  bean=i.next();
		  out.println (bean.getPcode()+" "+bean.getPname()+" "+bean.getPcompany()+" "+bean.getPprice()+" "+bean.getPqty()+" <a href='edit?pcode="+bean.getPcode()+" '>Edit</a>"+" "+ " <a href='delete?pcode="+ bean.getPcode()+" '>Delete</a>" +"<br><br>");
		  
	  }
	
	  
  }

%>

<a href="Logout">Logout</a>

</h1>


</body>
</html>