<%@page import="pack1.CustomerBean"%>
<%@page import="pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Update Product</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #dfe9f3, #ffffff);
        margin: 0;
        padding: 0;
        background-image:url('https://i.pinimg.com/236x/61/f5/a4/61f5a4afa923860f49fb29c50ab8ae25.jpg');
        background-size: cover;
	    background-repeat: no-repeat;
        
    }

    .form-container {
        background-color: #ffffff;
        margin: 60px auto;
        padding: 40px 35px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        max-width: 450px;
        width: 90%;
    }

    h1 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 10px;
    }

    .welcome {
        text-align: center;
        margin-bottom: 25px;
        color: #555;
        font-size: 16px;
    }

    label {
        display: block;
        margin: 15px 0 6px;
        font-weight: 600;
        color: #333;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.2);
    }

    input[type="submit"] {
        margin-top: 25px;
        width: 100%;
        background-color: #28a745;
        color: white;
        border: none;
        padding: 12px;
        font-size: 16px;
        font-weight: bold;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    input[type="submit"]:hover {
        background-color: #218838;
        transform: scale(1.03);
    }

    @media (max-width: 500px) {
        .form-container {
            padding: 30px 20px;
        }
    }
</style>
</head>
<body>

<%
    CustomerBean cbean = (CustomerBean) request.getAttribute("cbean");
    String uname = (String) request.getAttribute("uname");
    ProductBean pb = (ProductBean) request.getAttribute("pbean");
%>

<div class="form-container">
    <h1>Update Product</h1>
    <div class="welcome">Welcome,👋</div>
    
    <form action="newUpdate" method="post">
        <label>Product Code</label>
        <input type="text" name="procode" value="<%= pb.getPcode() %>" readonly>

        <label>Product Name</label>
        <input type="text" name="proname" value="<%= pb.getPname() %>">

        <label>Product Company</label>
        <input type="text" name="procomp" value="<%= pb.getPcompany() %>">

        <label>Product Price (₹)</label>
        <input type="number" step="0.01" name="proprice" value="<%= pb.getPprice() %>">

        <label>Product Quantity</label>
        <input type="number" name="proqty" value="<%= pb.getPqty() %>">

        <label>Required Quantity</label>
        <input type="number" name="prorqty">

        <input type="submit" value="Buy">
    </form>
</div>

</body>
</html>
