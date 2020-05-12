<!DOCTYPE html>
<html>
<head>
<title>Update Person</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<header style="height: 30px; background-color: #21c9ff;"> </header>
	<div class="container">

		<a href="showPerson.jsp"> <img src="img/student.png"
			style="height: 139px">
		</a>
		<h4>Update Person Page</h4>
		<span style="font-size: 18px; color: red;">${kuebiko}</span>
		<hr />
		<div class="form-group" style="width: 50%">
		
		
			<form action="updatePerson">
			 
			   <input type="hidden"  name="pid"  value="${personEntity.pid}">
			
				<label for="userid">Userid*</label> <input type="text"
					class="form-control" name="userid" value="${personEntity.userid}">
				<label for="name">Name:</label> <input type="text"
					class="form-control" name="name" value="${personEntity.name}">

				<label for="email">Email:</label> <input type="email"
					class="form-control" name="email" value="${personEntity.email}">

				<label for="date">DOB:</label> <input type="date"
					class="form-control" name="dob" value="${personEntity.dob}">
				<label for="mobile">Mobile:</label> <input type="number"
					class="form-control" name="mobile" value="${personEntity.mobile}">

				<label for="salary">Salary:</label> <select class="form-control"
					name="salary">
					<option ${personEntity.salary==500?'selected':''}>500</option>
					<option ${personEntity.salary==1000?'selected':''}>1000</option>
					<option ${personEntity.salary==1500?'selected':''}>1500</option>
					<option ${personEntity.salary==2000?'selected':''}>2000</option>
					<option ${personEntity.salary==2500?'selected':''}>2500</option>
					<option ${personEntity.salary==3000?'selected':''}>3000</option>
					<option ${personEntity.salary==3500?'selected':''}>3500</option>

				</select> <label for="ssn">SSN:</label> <input type="text"
					class="form-control" name="ssn" value="${personEntity.ssn}">
				<br />
				<button type="submit" class="btn btn-success">Update</button>
				<a href="index.jsp">
					<button type="button" class="btn btn-primary">Sign In</button>
				</a>

			</form>
		</div>

	</div>


</body>
</html>
