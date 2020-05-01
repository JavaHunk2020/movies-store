<!DOCTYPE html>
<html>
<head>
 <title>Email</title>
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
         <img src="img/student.png"  style="height: 239px">
         <hr/>
          <%
                     String  tkp=request.getParameter("temail");
                     String  password=request.getParameter("password");
                     tkp =tkp.toUpperCase();
                     StringBuilder stringBuilder=new StringBuilder(tkp); 
                     String ulta=stringBuilder.reverse().toString();
                     String result="";
                     int flag=0;
                     if("nagendra@gmail.com".equalsIgnoreCase(tkp) && "test".equals(password)) {
                    	 result="Congrates you are a valid user!!!!!!!!!!!!";
                    	 flag=1;
                     }else{
                    	 result="Sorry your username and password are not valid!!!!!!!!!!!!";
                     }
           
          %>
         
         <h4>Your final result is       =       <%= ulta %>        </h4>
          <hr/>
          <h4><%= result%></h4>
                    <%
                     if(flag==1)  { %>      
                          <img src="img/congrates.png"  style="height: 239px">
                    <% } %>
   
    </div>
   
  
</body>
</html>