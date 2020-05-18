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
                 <form action="auth" method="post">
  				  <label for="email">Email address:</label>
   				  <input type="email"  class="form-control" name="temail"  placeholder="Enter your name">
   				   <br/>
   				   <label for="password">Password:</label>
   				  <input type="password"  class="form-control" name="password">
   				     <br/>
   				  <button type="submit" class="btn btn-primary">Check</button>
   				  <button type="reset" class="btn btn-danger">Clear</button>
   				  	 <a href="register.jsp"> 
   				  	        <button type="button" class="btn btn-success">Register</button>
   				  	 </a>
   				  	 
   				  	  	 <a href="register.jsp"> 
   				  	        <button type="button" class="btn btn-primary">Forgot Password</button>
   				  	 </a>
   				  </form>
  </div>
     
    </div>
   
  
</body>
</html>