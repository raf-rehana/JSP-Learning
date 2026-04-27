<%@ page import="dao.StudentDao" %>
<%@ page import="entity.Student" %>

<%@ include file="header.jsp" %>

<%
    // Get student id from URL
    int id = Integer.parseInt(request.getParameter("id"));

    // Fetch student from DAO
    Student s = StudentDao.getStudentById(id);
%>

<h2>Edit Student</h2>

<form action="updateStudent.jsp" method="post">

    <input type="hidden" name="id" value="<%= s.getId() %>">

    Name:
    <input type="text" name="name" value="<%= s.getName() %>"><br><br>

    Email:
    <input type="text" name="email" value="<%= s.getEmail() %>"><br><br>

    Course:
    <input type="text" name="course" value="<%= s.getCourse() %>"><br><br>

    <input type="submit" value="Update">

</form>

<%@ include file="footer.jsp" %>