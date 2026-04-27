<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="header.jsp" %>

<h2>Welcome to Student Management System</h2>

<p>
    This system helps you manage student records easily.
    You can add, view, edit, and delete student information.
</p>

<div style="margin-top:20px;">
    <a href="allStudent.jsp" style="
        padding:10px 15px;
        background:#2c3e50;
        color:white;
        text-decoration:none;
        border-radius:5px;
        margin-right:10px;
    ">
        View Students
    </a>

    <a href="addStudent.jsp" style="
        padding:10px 15px;
        background:#27ae60;
        color:white;
        text-decoration:none;
        border-radius:5px;
    ">
        Add Student
    </a>
</div>

<%@ include file="footer.jsp" %>