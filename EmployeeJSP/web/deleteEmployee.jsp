<%@ page import="dao.EmployeeDao" %>

<%
try {

    String idParam = request.getParameter("id");

    if(idParam != null && !idParam.isEmpty()) {

        int id = Integer.parseInt(idParam);

        int status = EmployeeDao.delete(id);

        if(status > 0){
            response.sendRedirect(request.getContextPath() + "/allEmployees.jsp");
        } else {
%>
            <h3 style="color:red;text-align:center;">Delete failed!</h3>
<%
        }

    } else {
%>
        <h3 style="color:red;text-align:center;">Invalid ID!</h3>
<%
    }

} catch(Exception ex) {
%>
    <h3 style="color:red;text-align:center;">
        Error: <%=ex.getMessage()%>
    </h3>
<%
}
%>