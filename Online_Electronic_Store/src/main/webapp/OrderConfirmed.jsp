<%@ page import="pack1.CustomerBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Confirmation</title>
    <link rel="stylesheet" type="text" href="bg.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 80px auto;
            background-color: #fff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #28a745;
        }

        p {
            font-size: 18px;
            margin: 15px 0;
            color: #333;
        }

        .btn-group {
            margin-top: 30px;
        }

        a.button {
            display: inline-block;
            padding: 10px 20px;
            margin: 0 10px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a.button:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <%
        CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
        String msg = (String) request.getAttribute("msg");

        String priceStr = request.getParameter("proprice");
        String qtyStr = request.getParameter("prorqty");

        if (cbean == null || priceStr == null || qtyStr == null) {
    %>
        <p class="error">❌ Please try again. Missing order details.</p>
    <%
        } else {
            try {
                int price = Integer.parseInt(priceStr);
                int qty = Integer.parseInt(qtyStr);
                int total = price * qty;
    %>
        <h2>✅ Order Confirmed!</h2>
        <p>Hello, <strong></strong>!</p>
        <p>You have been charged <strong><%= total %> Rs</strong> for your purchase.</p>
        <% if (msg != null) { %>
            <p><strong><%= msg %></strong></p>
        <% } %>
    <%
            } catch (NumberFormatException e) {
    %>
        <p class="error">⚠️ Invalid price or quantity.</p>
    <%
            }
        }
    %>

    <div class="btn-group">
        <a href="view2" class="button">🔙 View More Products</a>
        <a href="Logout" class="button">🚪 Logout</a>
    </div>
</div>

</body>
</html>
