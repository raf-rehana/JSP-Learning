<%@ page import="dao.EmployeeDao,entity.Employee" %>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String department = request.getParameter("department");
String salaryStr = request.getParameter("salary");

if(name != null && email != null && department != null && salaryStr != null &&
   !name.trim().isEmpty() && !email.trim().isEmpty()
   && !department.trim().isEmpty() && !salaryStr.trim().isEmpty()) {

    double salary = Double.parseDouble(salaryStr);

    Employee e = new Employee();
    e.setName(name);
    e.setEmail(email);
    e.setDepartment(department);
    e.setSalary(salary);

    int status = EmployeeDao.save(e);

    if(status > 0){
        response.sendRedirect(request.getContextPath() + "/allEmployees.jsp");
    } else {
%>
        <h3 style="color:red;text-align:center;">Error saving employee!</h3>
<%
    }

} else {
%>
    <h3 style="color:red;text-align:center;">Invalid form submission!</h3>
<%
}
%>