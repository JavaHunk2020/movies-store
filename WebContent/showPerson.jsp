<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.kuebiko.dao.entity.PersonEntity"%>
<%@page import="java.util.List"%>
<%@page import="com.kuebiko.dao.PersonDaoImpl"%>
<%@page import="com.kuebiko.dao.PersonDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <title>Persons!!</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
<link rel="stylesheet" href="css/style.css">

</head>
<body>
   <header  style="height: 30px;background-color: #21c9ff;">
     <b style="margin-left: 50px;">Hello! Mr. Jack
       ${msg}
     </b>
   </header>
   <div class="container">
      <img src="img/student.png"  style="height: 139px">
          <a href="persons"> 
         <button type="button" class="btn btn-primary">Manage Users</button>
         </a>
   				  <button type="reset" class="btn btn-danger">Email</button>
   				  	 <a href="profile.jsp"> 
   				  	        <button type="button" class="btn btn-success">Profile</button>
   				  	 </a>
   				  	  <a href="logout"> 
   				  	        <button type="button" class="btn btn-warning">Logout</button>
   				  	 </a>
         <hr/>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Name</th>
        <th>Salary</th>
        <th>Mobile</th>
        <th>Email</th>
        <th>Action</th>
        
      </tr>
    </thead>
    <tbody>
    
  <c:forEach  items="${personList}"  var="entity">
      <tr>
        <td>${entity.name}</td>
        <td>${entity.salary}</td>
        <td>${entity.mobile}</td>
          <td>${entity.email}</td>
          <td>
           <c:if test="${entity.email!=sessionScope.userData.email}">
             <a href="deletePerson?email=${entity.email}">
             <img src="img/delete.png"  style="height: 40px">
             </a>
             
             <a href="editPerson?email=${entity.email}">
             <img src="img/edit.png"  style="height: 40px">
             </a>
             </c:if>
          </td>
         </tr>
     </c:forEach>
      
    </tbody>
  </table>
  </div>
  
<!--   .footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: red;
  color: white;
  text-align: center;
} -->
  <footer  class="footer">
    @Copyright Kuebiko 2020
  </footer>
</body>
</html>