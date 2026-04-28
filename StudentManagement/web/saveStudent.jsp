<%@ page import="dao.StudentDao,entity.Student" %>

<!DOCTYPE html>
<html>
<head>
    <title>Save Student</title>

    <style>
        body{
            font-family: Arial;
            background:#f4f6f9;
        }

        .box{
            width:400px;
            margin:100px auto;
            background:white;
            padding:25px;
            text-align:center;
            border-radius:8px;
            box-shadow:0 4px 12px rgba(0,0,0,0.1);
        }

        .success{
            color:green;
            font-size:18px;
        }

        .error{
            color:red;
            font-size:18px;
        }

        a{
            display:inline-block;
            margin-top:15px;
            padding:8px 12px;
            background:#3498db;
            color:white;
            text-decoration:none;
            border-radius:5px;
        }
    </style>
</head>

<body>

<div class="box">

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String course = request.getParameter("course");

if(name != null && email != null && course != null 
   && !name.trim().isEmpty() 
   && !email.trim().isEmpty() 
   && !course.trim().isEmpty()) {

    Student s = new Student();
    s.setName(name);
    s.setEmail(email);
    s.setCourse(course);

    int status = StudentDao.save(s);

    if(status > 0){
%>
        <div class="success">Student Saved Successfully!</div>
        <a href="<%=request.getContextPath()%>/allStudent.jsp">View Students</a>
<%
    } else {
%>
        <div class="error">Error saving student!</div>
        <a href="<%=request.getContextPath()%>/addStudent.jsp">Try Again</a>
<%
    }

} else {
%>
    <div class="error">Invalid Form Submission!</div>
    <a href="<%=request.getContextPath()%>/addStudent.jsp">Back to Form</a>
<%
}
%>

</div>

</body>
</html>