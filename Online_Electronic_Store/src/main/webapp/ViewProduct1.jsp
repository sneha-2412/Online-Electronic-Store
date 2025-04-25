<%@page import="java.util.Iterator"%>
<%@page import="pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<link rel="stylesheet" type="text" href="bg.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 90%;
        max-width: 800px;
        margin: 50px auto;
        background: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    h1 {
        text-align: center;
        color: #333;
    }

    .welcome {
        text-align: center;
        font-size: 18px;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    table, th, td {
        border: 1px solid #ccc;
    }

    th, td {
        padding: 10px;
        text-align: center;
    }

    th {
        background-color: #f0f0f0;
    }

    a.buy-btn {
        background-color: #007bff;
        color: white;
        padding: 6px 12px;
        text-decoration: none;
        border-radius: 4px;
    }

    a.buy-btn:hover {
        background-color: #0056b3;
    }

    .logout {
        display: block;
        text-align: center;
        margin-top: 30px;
        text-decoration: none;
        color: #d9534f;
        font-weight: bold;
    }

    .logout:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Product Catalog</h1>

    <%
        CustomerBean cbean = (CustomerBean) session.getAttribute("abean");
        ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("productList");

        if (cbean != null) {
    %>
        <div class="welcome">
            Welcome, <strong><%= cbean.getFname() %></strong>!
        </div>
    <%
        }

        if (al == null || al.size() == 0) {
    %>
        <p style="text-align:center;">No products available.</p>
    <%
        } else {
    %>
        <table>
            <tr>
                <th>Code</th>
                <th>Name</th>
                <th>Company</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Action</th>
            </tr>
            <%
                for (ProductBean bean : al) {
            %>
                <tr>
                    <td><%= bean.getPcode() %></td>
                    <td><%= bean.getPname() %></td>
                    <td><%= bean.getPcompany() %></td>
                    <td><%= bean.getPprice() %></td>
                    <td><%= bean.getPqty() %></td>
                    <td><a class="buy-btn" href="buy?pcode=<%= bean.getPcode() %>">Buy</a></td>
                </tr>
            <%
                }
            %>
        </table>
    <%
        }
    %>

    <a class="logout" href="Logout">Logout</a>
</div>

</body>
</html>
