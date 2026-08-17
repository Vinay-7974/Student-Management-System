<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.student.dao.StudentDAO"%>

<%
int id = Integer.parseInt(request.getParameter("id"));

StudentDAO dao = new StudentDAO();

boolean status = dao.deleteStudent(id);

if(status){
    response.sendRedirect("viewStudent.jsp");
}else{
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Failed</title>
</head>
<body>

<h2 style="color:red;text-align:center;">
Delete Failed!
</h2>

<br>

<center>
<a href="viewStudent.jsp">Back</a>
</center>

</body>
</html>

<%
}
%>