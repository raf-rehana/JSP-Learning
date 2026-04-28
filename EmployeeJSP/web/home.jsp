<%@ include file="header.jsp" %>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f9;
    }

    .dashboard {
        width: 90%;
        margin: 60px auto;
        text-align: center;
    }

    .title {
        font-size: 28px;
        color: #2c3e50;
        margin-bottom: 40px;
        font-weight: bold;
    }

    .card-container {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 15px;
    }

    .card {
        width: 200px;
        padding: 20px;
        border-radius: 6px;
        background: white;
        text-decoration: none;
        color: #2c3e50;
        border: 1px solid #ddd;
        transition: 0.2s;
    }

    .card:hover {
        border-color: #3498db;
        transform: translateY(-3px);
    }

    .card h3 {
        margin: 10px 0;
        font-size: 18px;
    }

    .card p {
        font-size: 13px;
        color: #666;
    }
</style>

<div class="dashboard">

    <div class="title">
        Employee Management System
    </div>

    <div class="card-container">

        <a href="<%=request.getContextPath()%>/addEmployee.jsp" class="card">
            <h3>Add Employee</h3>
            <p>Create new record</p>
        </a>

        <a href="<%=request.getContextPath()%>/allEmployees.jsp" class="card">
            <h3>View Employees</h3>
            <p>View all records</p>
        </a>

        <a href="<%=request.getContextPath()%>/allEmployees.jsp" class="card">
            <h3>Edit Employee</h3>
            <p>Update details</p>
        </a>

        <a href="<%=request.getContextPath()%>/allEmployees.jsp" class="card">
            <h3>Delete Employee</h3>
            <p>Remove records</p>
        </a>

    </div>

</div>

<%@ include file="footer.jsp" %>