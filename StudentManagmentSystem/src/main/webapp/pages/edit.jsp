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
   /* Style for the form container */


/* Style for the form labels */
label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

/* Style for the form input fields */
a.input.form-control {
  width: 100%;
  padding: 8px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

/* Style for the submit button */
input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  cursor: pointer;
  margin-top: 18px;
}

/* Hover effect for the submit button */
input[type="submit"]:hover {
  background-color: #45a049;
}

/* Optional: Additional styles for better visual presentation */
.a {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
  padding: 20px;
}

h1 {
  text-align: center;
  margin-bottom: 20px;
}
 body{
  background-image: url('images/sms.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  }
   #css {
    border: 1px solid #ccc; /* Add the desired border properties here */
    border-radius: 8px; /* Optional: Add border radius for a rounded appearance */
    padding: 20px; /* Optional: Add some padding to the container */
    background-color:white;
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

<div class="container" id="a">
<div class="row">
<div class="col-sm-3 col-md-3"></div>
<div class="col-sm-6 col-md-6" style="margin-top: 55px;">
<h1>Student Edit Form</h1>
<form action="update" method="post" id="css">
<input class="form-control" type="hidden" id="id" name="id" value="${st.id}">

<label for="rollno">Roll NO:</label>
<input class="form-control" type="text" id="rollno" name="roll_no" value="${st.roll_no}">
<label for="name">Student Name:</label>
<input class="form-control" type="text" id="name" name="name" value="${st.name }">
<label for="grade">Grade</label>
<input class="form-control" type="text" id="grade" name="grade" value="${st.grade }">
<label for="subject">Subject:</label>
<input class="form-control" type="text" id="subject" name="subject" value="${st.subject}">
<input type="submit" value="Submit">
</form>
</div>
<div class="col-sm-3 col-md-3"></div>
</div>
</div>
</body>
</html>