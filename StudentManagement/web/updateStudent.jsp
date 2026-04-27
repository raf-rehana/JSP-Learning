<%@ page import="dao.StudentDao" %>
<%@ page import="entity.Student" %>

<%
    // Read form data
    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String course = request.getParameter("course");

    // Set into Student object
    Student s = new Student();
    s.setId(id);
    s.setName(name);
    s.setEmail(email);
    s.setCourse(course);

    // Call DAO update method
    int status = StudentDao.update(s);

    // Redirect based on result
    if(status > 0){
        response.sendRedirect("allStudent.jsp");
    } else {
        out.println("Update failed!");
    }
%>