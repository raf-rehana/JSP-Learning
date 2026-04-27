<%@ include file="header.jsp" %>

<h2>Add Student</h2>

<form action="saveStudent.jsp" method="post">
Name: <input type="text" name="name"><br>
Email: <input type="text" name="email"><br>
Course: <input type="text" name="course"><br>
<input type="submit" value="Save">
</form>

<%@ include file="footer.jsp" %>