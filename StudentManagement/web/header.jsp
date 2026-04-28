<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Management System</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #A7ABDE;
            padding: 15px;
            color: white;
        }

        .nav {
            margin-top: 10px;
        }

        .nav a {
            color: white;
            margin-right: 15px;
            text-decoration: none;
            font-weight: bold;
        }

        .nav a:hover {
            text-decoration: underline;
        }

        .container {
            padding: 20px;
        }
    </style>
</head>

<body>

<div class="header">
    <h2>Student Management System</h2>

    <div class="nav">
        <a href="home.jsp">Home</a>
        <a href="allStudent.jsp">All Students</a>
        <a href="addStudent.jsp">Add Student</a>
    </div>
</div>

<div class="container">