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
   </header>
    <div  class="container">
    
         <a href="showPerson.jsp">
         <img src="img/student.png"  style="height: 139px">
    </a>
         <h4>Person Registation Page</h4>
          <span style="font-size: 18px;color: red;">${kuebiko}</span>
         <hr/>
         <div class="form-group" style="width: 50%">
                 <form action="process.jsp">
  				  <label for="userid">Userid*</label>
   				  <input type="text"  class="form-control" name="userid">
   				    <label for="password">Password*</label>
   				  <input type="password"  class="form-control" name="password">
   				   <label for="name">Name:</label>
   				  <input type="text"  class="form-control" name="name">
   				  
   				    <label for="email">Email:</label>
   				  <input type="email"  class="form-control" name="email">
   				     
   				       <label for="date">DOB:</label>
   				  <input type="date"  class="form-control" name="dob">
   				          <label for="mobile">Mobile:</label>
   				  <input type="number"  class="form-control" name="mobile">
   				     
   				     <label for="salary">Salary:</label>
   				        <select   class="form-control" name="salary">
   				              <option>500</option>
   				              <option>1000</option>
   				              <option>1500</option>
   				              <option>2000</option>
   				              <option>2500</option>
								<option>3000</option>   				              
   				              <option>3500</option>
   				        </select>
   				     
   				     <label for="ssn">SSN:</label>
   				  <input type="text"  class="form-control" name="ssn">
   				     <br/>
   				     <a href="index.jsp"> 
   				  <button type="button" class="btn btn-primary">Sign In</button>
   				  </a>
   				  <button type="reset" class="btn btn-danger">Clear</button>
   				  	 
   				  	        <button type="submit" class="btn btn-success">Register</button>
   				  </form>
  </div>
     
    </div>
   
  
</body>
</html>
