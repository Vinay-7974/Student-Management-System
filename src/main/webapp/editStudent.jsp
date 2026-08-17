<%@ page import="com.student.dao.StudentDAO"%>
<%@ page import="com.student.model.Student"%>

<%
int id = Integer.parseInt(request.getParameter("id"));

StudentDAO dao = new StudentDAO();
Student s = dao.getStudentById(id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#f4f6f9;
}

.header{
    background:#0d6efd;
    color:white;
    text-align:center;
    padding:20px;
    font-size:30px;
    font-weight:bold;
}

.container{
    width:500px;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 15px rgba(0,0,0,0.2);
}

h2{
    text-align:center;
    color:#333;
    margin-bottom:25px;
}

label{
    font-weight:bold;
}

input{
    width:100%;
    padding:10px;
    margin-top:8px;
    margin-bottom:18px;
    border:1px solid #ccc;
    border-radius:5px;
    font-size:15px;
}

input:focus{
    border:1px solid #0d6efd;
    outline:none;
}

.btn{
    width:100%;
    padding:12px;
    background:#198754;
    color:white;
    border:none;
    border-radius:5px;
    font-size:17px;
    cursor:pointer;
}

.btn:hover{
    background:#157347;
}

.back{
    display:inline-block;
    margin-bottom:20px;
    text-decoration:none;
    color:white;
    background:#0d6efd;
    padding:10px 20px;
    border-radius:5px;
}

.back:hover{
    background:#0b5ed7;
}

</style>

</head>
<body>

<div class="header">
Student Management System
</div>

<div class="container">

<a href="viewStudent.jsp" class="back">← Back to Students</a>

<h2>Update Student</h2>

<form action="updateStudent.jsp" method="post">

<input type="hidden" name="id" value="<%= s.getId() %>">

<label>Student Name</label>
<input type="text" name="name" value="<%= s.getName() %>" required>

<label>Email</label>
<input type="email" name="email" value="<%= s.getEmail() %>" required>

<label>Course</label>
<input type="text" name="course" value="<%= s.getCourse() %>" required>

<label>Mobile Number</label>
<input type="text" name="mobile" value="<%= s.getMobile() %>" required>

<button class="btn" type="submit">Update Student</button>

</form>

</div>

</body>
</html>