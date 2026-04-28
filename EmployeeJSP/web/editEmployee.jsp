<%@ page import="dao.EmployeeDao,entity.Employee" %>

<%@ include file="header.jsp" %>

<%
String idParam = request.getParameter("id");

if(idParam != null && !idParam.isEmpty()) {

    int id = Integer.parseInt(idParam);

    Employee e = EmployeeDao.getById(id);

    if(e != null) {
%>

<style>
    body {
        font-family: Arial;
        background: #f4f6f9;
    }

    .form-container {
        width: 420px;
        margin: 60px auto;
        background: #fff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    input {
        width: 100%;
        padding: 10px;
        margin-bottom: 12px;
    }

    .btn {
        width: 100%;
        padding: 10px;
        background: #3498db;
        color: white;
        border: none;
    }
</style>

<div class="form-container">

<h2>Edit Employee</h2>

<form action="<%=request.getContextPath()%>/updateEmployee.jsp" method="post">

    <input type="hidden" name="id" value="<%=e.getId()%>">

    Name:
    <input type="text" name="name" value="<%=e.getName()%>" required>

    Email:
    <input type="email" name="email" value="<%=e.getEmail()%>" required>

    Department:
    <input type="text" name="department" value="<%=e.getDepartment()%>" required>

    Salary:
    <input type="number" name="salary" value="<%=e.getSalary()%>" required>

    <input type="submit" value="Update Employee" class="btn">

</form>

</div>

<%
    } else {
%>
    <h3 style="color:red;text-align:center;">Employee not found!</h3>
<%
    }

} else {
%>
    <h3 style="color:red;text-align:center;">Invalid ID!</h3>
<%
}
%>

<%@ include file="footer.jsp" %>