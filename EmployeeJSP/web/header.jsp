<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management System</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f6f9;
        }

        .navbar {
            background-color: #2c3e50;
            padding: 15px 20px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar .logo {
            font-size: 18px;
            font-weight: bold;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-left: 15px;
            padding: 6px 10px;
            border-radius: 4px;
            transition: 0.3s;
        }

        .navbar a:hover {
            background: #34495e;
        }

        .container {
            padding: 20px;
        }
    </style>
</head>

<body>

<div class="navbar">
    <div class="logo">
        Employee Management System
    </div>

    <div class="menu">
        <a href="<%=request.getContextPath()%>/home.jsp">Home</a>
        <a href="<%=request.getContextPath()%>/addEmployee.jsp">Add Employee</a>
        <a href="<%=request.getContextPath()%>/allEmployees.jsp">View Employees</a>
    </div>
</div>

<div class="container">