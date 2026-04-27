<%@ page import="dao.StudentDao,java.util.*" %>
<%@ page import="entity.Student" %>

<%@ include file="header.jsp" %>

<h2>All Students</h2>

<a href="addStudent.jsp" style="
    padding:8px 12px;
    background:#27ae60;
    color:white;
    text-decoration:none;
    border-radius:5px;
">+ Add Student</a>

<br><br>

<table border="1" cellpadding="10" cellspacing="0" width="100%">
    <tr style="background:#2c3e50; color:white;">
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Course</th>
        <th>Action</th>
    </tr>

<%
List<Student> list = StudentDao.getAllStudents();

if(list != null && !list.isEmpty()) {
    for(Student s : list){
%>

    <tr>
        <td><%= s.getId() %></td>
        <td><%= s.getName() %></td>
        <td><%= s.getEmail() %></td>
        <td><%= s.getCourse() %></td>
        <td>
            <a href="editStudent.jsp?id=<%=s.getId()%>">Edit</a> |
            <a href="delete.jsp?id=<%=s.getId()%>" 
               onclick="return confirm('Are you sure to delete?')">
               Delete
            </a>
        </td>
    </tr>

<%
    }
} else {
%>

    <tr>
        <td colspan="5" style="text-align:center;">No students found</td>
    </tr>

<% } %>

</table>

<%@ include file="footer.jsp" %>