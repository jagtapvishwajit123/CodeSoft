<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr {
            background-color: white;
        }
         body{
  background-image: url('images/sms.jpg');
   background-repeat: no-repeat;
  background-size: cover;
  opacity:0.9;
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
        <a class="nav-link" href="#">Display All Student</a>
      </li>
      
    </ul>
<form action="search" method="post" class="d-flex">
        <input class="form-control me-2" type="text" name="q" placeholder="Search">
        <button class="btn btn-primary" type="submit">Search</button>
      </form>

</div>


</nav>
<!-- Nav bar End -->
    <h1>Student List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Roll No</th>
            <th>Name</th>
            <th>Grade</th>
            <th>Subject</th>
             <th>Action</th>
        </tr>
        <tbody>
        <c:forEach var="e" items="${stud}">
        <tr>
            <td>${e.id}</td>
            <td>${e.roll_no}</td>
            <td>${e.name}</td>
            <td>${e.grade}</td>
            <td>${e.subject }</td>
            <td>
            <a href="edit?id=${e.id}"> <button style="font-size:16px; cursor:pointer;background:green;color:white;border-radius:5px;">EDIT</button></a>
            <a href="delete?id=${e.id }"> <button style="font-size:16px; cursor:pointer;background:red;color:white;border-radius:5px;">DELETE</button></a>
            </td>

        </tr>
        </c:forEach>
       </tbody>
        <!-- Add more rows for other students -->
    </table>
</body>
</html>
