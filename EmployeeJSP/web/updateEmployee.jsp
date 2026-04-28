<%@ page import="dao.EmployeeDao,entity.Employee" %>

<%
try {

    String idParam = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String department = request.getParameter("department");
    String salaryStr = request.getParameter("salary");

    if(idParam != null && !idParam.isEmpty()) {

        int id = Integer.parseInt(idParam);
        double salary = Double.parseDouble(salaryStr);

        Employee e = new Employee();
        e.setId(id);
        e.setName(name);
        e.setEmail(email);
        e.setDepartment(department);
        e.setSalary(salary);

        int status = EmployeeDao.update(e);

        if(status > 0){
            response.sendRedirect(request.getContextPath() + "/allEmployees.jsp");
        } else {
%>
            <h3 style="color:red;text-align:center;">Update failed!</h3>
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