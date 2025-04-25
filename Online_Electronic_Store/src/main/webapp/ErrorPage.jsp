<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error - Insufficient Stock</title>
    <link rel="stylesheet" type="text" href="bg.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .error-message {
            color: red;
            font-size: 1.5em;
        }
        .actions {
            margin-top: 20px;
        }
        a {
            padding: 10px 20px;
            margin: 5px;
            text-decoration: none;
            color: white;
            background-color: #007bff;
            border-radius: 5px;
        }
        a:hover {
            background-color: #0056b3;
        }
        .logout {
            background-color: #dc3545;
        }
        .logout:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <h1>Error</h1>
    <p class="error-message">${msg}</p> 
    
    <div class="actions">
        
       <a href="view2" class="button">View More Products</a>
        <a href="Logout" class="button">Logout</a>
    </div>
</body>
</html>
