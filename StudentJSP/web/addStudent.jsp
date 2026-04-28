<%@ include file="header.jsp" %>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f9;
    }

    .form-container {
        width: 400px;
        margin: 50px auto;
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
        color: #333;
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
</style>

<div class="form-container">
    <h2>Add Student</h2>

    <form action="<%=request.getContextPath()%>/saveStudent.jsp" method="post">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" placeholder="Enter student name" required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter email address" required>
        </div>

        <div class="form-group">
            <label>Course</label>
            <input type="text" name="course" placeholder="Enter course name" required>
        </div>

        <input type="submit" value="Save Student" class="btn">

    </form>
</div>

<%@ include file="footer.jsp" %>