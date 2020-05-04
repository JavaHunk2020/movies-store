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
</head>
<body>
   <header  style="height: 30px;background-color: #21c9ff;">
     <b style="margin-left: 50px;">Hello! Mr. Jack</b>
   </header>
   <div class="container">
      <img src="img/student.png"  style="height: 139px">
          <a href="showPerson.jsp"> 
         <button type="button" class="btn btn-primary">Manage Users</button>
         </a>
   				  <button type="reset" class="btn btn-danger">Email</button>
   				  	 <a href="profile.jsp"> 
   				  	        <button type="button" class="btn btn-success">Profile</button>
   				  	 </a>
   				  	  <a href="logout.jsp"> 
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
    
    <%
    PersonDao personDao=new PersonDaoImpl();
    List<PersonEntity>  personList= personDao.findAll();
    for(PersonEntity entity : personList){
    %>
      <tr>
        <td><%= entity.getName()%></td>
        <td><%= entity.getSalary()%></td>
        <td><%= entity.getMobile()%></td>
          <td><%= entity.getEmail()%></td>
          <td>
             <a href="deletePerson?email=<%=entity.getEmail()%>">
             <img src="img/delete.png"  style="height: 40px">
             </a>
          </td>
         </tr>
     <% } %>
      
    </tbody>
  </table>
  </div>
  <footer style="background-color: maroon;height: 20px;">
  
  </footer>
</body>
</html>