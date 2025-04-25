<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text" href="bg.css">
    <title>Customer Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            margin: 50px;
        }
        .container {
            background: white;
            padding: 30px;
            width: 400px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
        }
        .message {
            color: green;
            font-weight: bold;
            margin-bottom: 15px;
            text-align: center;
        }
        .error {
            color: red;
            font-weight: bold;
            margin-bottom: 15px;
            text-align: center;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #28a745;
            border: none;
            padding: 10px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Customer Login</h2>

    <!-- Display message passed from servlet -->
    <c:if test="${not empty msg}">
        <div class="message">${msg}</div>
    </c:if>

    <form action="clog" method="post">
        <label for="uname">Username:</label>
        <input type="text" name="uname" id="uname" required>

        <label for="pwd">Password:</label>
        <input type="password" name="pwd" id="pwd" required>

        <input type="submit" value="Login">
    </form>
</div>

</body>
</html>
