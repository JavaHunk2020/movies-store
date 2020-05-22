<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
   <header  style="height: 30px;background-color: #21c9ff;">
     <b style="margin-left: 20px;">${applicationScope.email}</b>
     
      <b style="margin-left: 20px;">Mobile : = ${applicationScope.mobile}</b>
   </header>
    <div  class="container">
         <img src="img/student.png"  style="height: 239px">
          <br/>
          <span style="color: blue;font-size: 18px;">${message}</span>
         <hr/>
         <div class="form-group" style="width: 50%">
                 
                   <table class="table table-bordered">
    <thead>
      <tr>
        <th>SID</th>
        <th>Name</th>
        <th>PHOTO</th>
        
      </tr>
    </thead>
    <tbody>
    
  <c:forEach  items="${mapa}"  var="entity">
      <tr>
        <td>${entity.key}</td>
        <td>${entity.value}</td>
        <td>
          <img src="image?sid=${entity.key}" style="height: 200px;"/>
        </td>
     </c:forEach>
    </tbody>
  </table>
                 
  </div>
     
    </div>
   
  
</body>
</html>