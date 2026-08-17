<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.student.dao.StudentDAO"%>
<%@ page import="com.student.model.Student"%>

<%
int id = Integer.parseInt(request.getParameter("id"));

String name = request.getParameter("name");
String email = request.getParameter("email");
String course = request.getParameter("course");
String mobile = request.getParameter("mobile");

Student student = new Student();

student.setId(id);
student.setName(name);
student.setEmail(email);
student.setCourse(course);
student.setMobile(mobile);

StudentDAO dao = new StudentDAO();

boolean status = dao.updateStudent(student);

if(status){
    response.sendRedirect("viewStudent.jsp");
}else{
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Failed</title>
</head>
<body>

<h2 style="color:red;text-align:center;">
Update Failed!
</h2>

<br>

<center>
<a href="viewStudent.jsp" class="back">Back to Students</a>
</center>

</body>
</html>

<%
}
%>