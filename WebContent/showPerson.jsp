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
   </header>
    <div  class="container">
         <img src="img/student.png"  style="height: 200px">
         <hr/>
<p>The .table-bordered class adds borders on all sides of the table and the cells:</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Name</th>
        <th>Salary</th>
        <th>Mobile</th>
        <th>Email</th>
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
         </tr>
     <% } %>
      
    </tbody>
  </table>
  </div>
</body>
</html>