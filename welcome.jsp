<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Greeting Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
            background-color: #f4f4f9;
            text-align: center;
        }
        .welcome-card {
            display: inline-block;
            padding: 30px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="welcome-card">
    <% 
        // Retrieve the "username" parameter sent from the HTML form
        String name = request.getParameter("username"); 
        
        if (name == null || name.trim().isEmpty()) {
            name = "Guest";
        }
    %>
    
    <h1>Hello, <%= name %>!</h1>
    <p>Welcome to our JSP application. Your form submission was successful!</p>
    
    <br>
    <a href="index.html">← Go Back</a>
</div>

</body>
</html>
