<%@ include file="header.jsp" %>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f9;
    }

    .form-container {
        width: 420px;
        margin: 60px auto;
        background: #ffffff;
        padding: 25px 30px;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    .form-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #2c3e50;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        outline: none;
    }

    .form-group input:focus {
        border-color: #3498db;
        box-shadow: 0 0 5px rgba(52,152,219,0.3);
    }

    .btn {
        width: 100%;
        padding: 10px;
        background: #27ae60;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }

    .btn:hover {
        background: #219150;
    }

    .back {
        display: block;
        text-align: center;
        margin-top: 15px;
        text-decoration: none;
        color: #3498db;
    }
</style>

<div class="form-container">

    <h2>Add Employee</h2>

    <form action="<%=request.getContextPath()%>/saveEmployee.jsp" method="post">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" placeholder="Enter name" required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter email" required>
        </div>

        <div class="form-group">
            <label>Department</label>
            <input type="text" name="department" placeholder="Enter department" required>
        </div>

        <div class="form-group">
            <label>Salary</label>
            <input type="number" name="salary" placeholder="Enter salary" required>
        </div>

        <input type="submit" value="Save Employee" class="btn">

    </form>

    <a href="<%=request.getContextPath()%>/home.jsp" class="back">? Back to Home</a>

</div>

<%@ include file="footer.jsp" %>