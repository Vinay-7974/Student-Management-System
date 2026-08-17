<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>

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
    padding:20px;
    text-align:center;
    font-size:30px;
    font-weight:bold;
}

.container{
    width:450px;
    background:white;
    margin:40px auto;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 15px rgba(0,0,0,0.2);
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
    outline:none;
    border:1px solid #0d6efd;
}

button{
    width:100%;
    padding:12px;
    background:#0d6efd;
    color:white;
    border:none;
    border-radius:5px;
    font-size:17px;
    cursor:pointer;
}

button:hover{
    background:#084298;
}

.menu{
    display:flex;
    justify-content:space-between;
    margin-bottom:25px;
}

.menu a{
    text-decoration:none;
    background:#198754;
    color:white;
    padding:10px 15px;
    border-radius:5px;
    font-weight:bold;
}

.menu a:hover{
    background:#146c43;
}

.footer{
    text-align:center;
    margin-top:20px;
    color:gray;
    font-size:14px;
}

</style>

</head>
<body>

<div class="header">
Student Management System
</div>

<div class="container">

<h2>Student Registration</h2>

<div class="menu">
    
    <a href="viewStudent.jsp">View Students</a>
</div>

<form action="saveStudent.jsp" method="post">

<label>Student Name</label>
<input type="text" name="name" placeholder="Enter Student Name" required>

<label>Email</label>
<input type="email" name="email" placeholder="Enter Email" required>

<label>Course</label>
<input type="text" name="course" placeholder="Enter Course" required>

<label>Mobile Number</label>
<input type="text" name="mobile" placeholder="Enter Mobile Number" required>

<button type="submit">Register Student</button>

</form>

<div class="footer">
Developed using JSP | JDBC | MySQL
</div>

</div>

</body>
</html>