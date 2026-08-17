<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.student.model.Student" %>
<%@ page import="com.student.dao.StudentDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Students</title>

<style>

body{
    font-family: Arial, sans-serif;
    background:#f4f6f9;
    margin:0;
    padding:0;
}

.header{
    background:#0d6efd;
    color:white;
    text-align:center;
    padding:20px;
}

.container{
    width:90%;
    margin:30px auto;
}

table{
    width:100%;
    border-collapse:collapse;
    background:white;
}

table th{
    background:#0d6efd;
    color:white;
    padding:12px;
}

table td{
    padding:10px;
    text-align:center;
    border:1px solid #ddd;
}

tr:nth-child(even){
    background:#f2f2f2;
}

.btn{
    padding:8px 15px;
    text-decoration:none;
    border-radius:5px;
    color:white;
}

.edit{
    background:orange;
}

.delete{
    background:red;
}

.back{
    background:green;
    padding:10px 20px;
    color:white;
    text-decoration:none;
    border-radius:5px;
}

</style>

</head>
<body>

<div class="header">
<h1>Student Management System</h1>
</div>

<div class="container">

<a href="index.jsp" class="back">➕ Add New Student</a>

<br><br>

<table>

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Course</th>
<th>Mobile</th>
<th>Action</th>
</tr>

<%

StudentDAO dao = new StudentDAO();

List<Student> list = dao.getAllStudents();

for(Student s : list){

%>

<tr>

<td><%= s.getId() %></td>

<td><%= s.getName() %></td>

<td><%= s.getEmail() %></td>

<td><%= s.getCourse() %></td>

<td><%= s.getMobile() %></td>

<td>

<a href="editStudent.jsp?id=<%= s.getId() %>" class="btn edit">
Edit
</a>

<a href="deleteStudent.jsp?id=<%= s.getId() %>"
   class="btn delete"
   onclick="return confirm('Are you sure you want to delete this student?');">
    Delete
</a>

</td>

</tr>

<%

}

%>

</table>

</div>

</body>
</html>