<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.student.model.Student" %>
<%@ page import="com.student.dao.StudentDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Student</title>
</head>
<body>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String course = request.getParameter("course");
String mobile = request.getParameter("mobile");


Student student = new Student();

student.setName(name);
student.setEmail(email);
student.setCourse(course);
student.setMobile(mobile);


StudentDAO dao = new StudentDAO();

boolean status = dao.saveStudent(student);

if(status){
    out.println("<h2 style='color:green;text-align:center;'>Student Saved Successfully...</h2>");
}else{
    out.println("<h2 style='color:red;text-align:center;'>Failed to Save Student!</h2>");
}

%>

</body>
</html>