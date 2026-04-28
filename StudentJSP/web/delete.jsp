<%@ page import="dao.StudentDao" %>

<%
try {
    String idParam = request.getParameter("id");

    if(idParam != null && !idParam.isEmpty()) {

        int id = Integer.parseInt(idParam);

        int status = StudentDao.delete(id);

        if(status > 0){
            response.sendRedirect("allStudent.jsp");
        } else {
%>
            <h3 style="color:red; text-align:center;">Delete failed!</h3>
<%
        }

    } else {
%>
        <h3 style="color:red; text-align:center;">Invalid ID!</h3>
<%
    }

} catch(Exception e) {
%>
    <h3 style="color:red; text-align:center;">
        Error: <%= e.getMessage() %>
    </h3>
<%
}
%>