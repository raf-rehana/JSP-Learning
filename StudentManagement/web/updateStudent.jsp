<%@ page import="dao.StudentDao,entity.Student" %>

<%
try {
    String idParam = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String course = request.getParameter("course");

    if(idParam != null && !idParam.isEmpty()) {

        int id = Integer.parseInt(idParam);

        Student s = new Student();
        s.setId(id);
        s.setName(name);
        s.setEmail(email);
        s.setCourse(course);

        int status = StudentDao.update(s);

        if(status > 0){
            response.sendRedirect("allStudent.jsp");
        } else {
            out.println("<h3 style='color:red;text-align:center;'>Update failed!</h3>");
        }

    } else {
        out.println("<h3 style='color:red;text-align:center;'>Invalid ID!</h3>");
    }

} catch(Exception e){
    out.println("<h3 style='color:red;text-align:center;'>Error: " + e.getMessage() + "</h3>");
}
%>