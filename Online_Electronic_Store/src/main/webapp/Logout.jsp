<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout Success</title>
<link rel="stylesheet" type="text" href="bg.css">
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #f6f9fc, #e0f7fa);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .card {
        background-color: #ffffff;
        padding: 40px 35px;
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        text-align: center;
        animation: fadeIn 0.6s ease-in-out;
        max-width: 400px;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .icon {
        font-size: 50px;
        color: #28a745;
        margin-bottom: 20px;
    }

    h1 {
        color: #333;
        font-size: 26px;
        margin-bottom: 10px;
    }

    .message {
        color: #555;
        font-size: 16px;
        margin-bottom: 30px;
    }

    .btn {
        display: inline-block;
        background-color: #007bff;
        color: #fff;
        padding: 12px 25px;
        border-radius: 6px;
        font-size: 16px;
        text-decoration: none;
        transition: background-color 0.3s, transform 0.2s;
    }

    .btn:hover {
        background-color: #0056b3;
        transform: scale(1.05);
    }
</style>
</head>
<body>

<%
    session.invalidate();
%>

<div class="card">
    <div class="icon">✅</div>
    <h1>Logout Successful</h1>
    <div class="message">You have been securely logged out of your account.</div>
    <a class="btn" href="index.html">🔙 Return to Home</a>
</div>

</body>
</html>
