<%@ page import="dao.EmployeeDao,java.util.*,entity.Employee" %>

<%@ include file="header.jsp" %>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f9;
    }

    h2 {
        text-align: center;
        margin-top: 20px;
        color: #2c3e50;
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
        margin: 15px 0;
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

    .edit-btn {
        background: #3498db;
        color: white;
        padding: 6px 10px;
        border-radius: 4px;
        text-decoration: none;
    }

    .delete-btn {
        background: #e74c3c;
        color: white;
        padding: 6px 10px;
        border-radius: 4px;
        text-decoration: none;
    }

    .edit-btn:hover { background: #2980b9; }
    .delete-btn:hover { background: #c0392b; }

    .no-data {
        text-align: center;
        padding: 15px;
        color: gray;
    }
</style>

<div class="container">

<h2>All Employees</h2>

<a href="<%=request.getContextPath()%>/addEmployee.jsp" class="add-btn">+ Add Employee</a>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Action</th>
    </tr>

<%
List<Employee> list = EmployeeDao.getAll();

if(list != null && !list.isEmpty()) {
    for(Employee e : list){
%>

    <tr>
        <td><%=e.getId()%></td>
        <td><%=e.getName()%></td>
        <td><%=e.getEmail()%></td>
        <td><%=e.getDepartment()%></td>
        <td><%=e.getSalary()%></td>
        <td>
            <a href="editEmployee.jsp?id=<%=e.getId()%>" class="edit-btn">Edit</a>
            <a href="deleteEmployee.jsp?id=<%=e.getId()%>" 
               class="delete-btn"
               onclick="return confirm('Are you sure?')">
               Delete
            </a>
        </td>
    </tr>

<%
    }
} else {
%>

    <tr>
        <td colspan="6" class="no-data">No Employees Found</td>
    </tr>

<%
}
%>

</table>

</div>

<%@ include file="footer.jsp" %>