<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <style>
  body{
  background-image: url('images/sms.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  }
  </style>
</head>
<body>
<!-- Nav Bar start -->
<nav class="navbar navbar-expand-sm " style="background-color:lightblue">
<div class="container">
<img src="images\th.jpeg" style="width:60px;">
<h2>Student Management System</h2>


  
    <ul class="navbar-nav">
     <li class="nav-item">
        <a class="nav-link" href="/">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="addstudent">Add Student</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="allstudent">Display All Student</a>
      </li>
      
    </ul>
<form action="search" method="post" class="d-flex">
        <input class="form-control me-2" type="text" name="q" placeholder="Search">
        <button class="btn btn-primary" type="submit">Search</button>
      </form>

</div>


</nav>
<!-- Nav bar End -->
</body>
</html>