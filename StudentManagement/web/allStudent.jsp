<%@ page import="dao.StudentDao,java.util.*,entity.Student" %>

<%@ include file="header.jsp" %>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f9;
    }

    h2 {
        text-align: center;
        margin-top: 20px;
    }

    .container {
        width: 90%;
        margin: auto;
    }

    .add-btn {
        display: inline-block;
        padding: 10px 15px;
        background: #27ae60;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        margin-bottom: 15px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background: white;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }

    table th, table td {
        padding: 12px;
        text-align: center;
    }

    table th {
        background: #2c3e50;
        color: white;
    }

    table tr:nth-child(even) {
        background: #f2f2f2;
    }

    .edit-btn, .delete-btn {
        padding: 6px 10px;
        border-radius: 4px;
        color: white;
        text-decoration: none;
    }

    .edit-btn { background: #3498db; }
    .delete-btn { background: #e74c3c; }

    .no-data {
        text-align: center;
        padding: 15px;
        color: #777;
    }
</style>

<div class="container">

<h2>All Students</h2>

<a href="<%=request.getContextPath()%>/addStudent.jsp" class="add-btn">+ Add Student</a>

<table>
    <tr>
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
        <td><%=s.getId()%></td>
        <td><%=s.getName()%></td>
        <td><%=s.getEmail()%></td>
        <td><%=s.getCourse()%></td>
        <td>
            <a href="<%=request.getContextPath()%>/editStudent.jsp?id=<%=s.getId()%>" class="edit-btn">Edit</a>
            <a href="<%=request.getContextPath()%>/delete.jsp?id=<%=s.getId()%>" class="delete-btn"
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
        <td colspan="5" class="no-data">No students found</td>
    </tr>

<% } %>

</table>

</div>

<%@ include file="footer.jsp" %>