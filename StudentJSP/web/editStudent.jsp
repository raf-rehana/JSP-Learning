<%@ page import="dao.StudentDao,entity.Student" %>

<%@ include file="header.jsp" %>

<%
try {

    String idParam = request.getParameter("id");

    if(idParam != null && !idParam.isEmpty()) {

        int id = Integer.parseInt(idParam);

        Student s = StudentDao.getStudentById(id);

        if(s != null) {
%>

<h2 style="text-align:center;">Edit Student</h2>

<div style="width:400px;margin:30px auto;background:#fff;padding:20px;border-radius:8px;
            box-shadow:0 4px 10px rgba(0,0,0,0.1);">

    <form action="<%=request.getContextPath()%>/updateStudent.jsp" method="post">

        <input type="hidden" name="id" value="<%= s.getId() %>">

        Name:<br>
        <input type="text" name="name" value="<%= s.getName() %>" style="width:100%;padding:8px;"><br><br>

        Email:<br>
        <input type="email" name="email" value="<%= s.getEmail() %>" style="width:100%;padding:8px;"><br><br>

        Course:<br>
        <input type="text" name="course" value="<%= s.getCourse() %>" style="width:100%;padding:8px;"><br><br>

        <input type="submit" value="Update"
               style="width:100%;padding:10px;background:#3498db;color:white;border:none;border-radius:5px;">

    </form>

</div>

<%
        } else {
%>
    <h3 style="color:red;text-align:center;">Student not found!</h3>
<%
        }

    } else {
%>
    <h3 style="color:red;text-align:center;">Invalid ID!</h3>
<%
    }

} catch(Exception e) {
%>
    <h3 style="color:red;text-align:center;">
        Error: <%= e.getMessage() %>
    </h3>
<%
}
%>

<%@ include file="footer.jsp" %>