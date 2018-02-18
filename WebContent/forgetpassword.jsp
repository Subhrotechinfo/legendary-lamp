<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ForgetPassword</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src ="js/forgetpassword.js"></script>
<link rel="stylesheet" href="css/forget.css">

</head>
<body>
<!-- Container (navigation bar) --> 

 <nav class="navbar navbar-default">
 
 <div class="container-fluid">
		 <div class="navbar-header">

				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

		 
			<!-- Logo-->
			<a class="navbar-brand"><img src="images/logo.jpg" alt="RBI"></a>
		 </div>
		 
		 <div class="navbar-text col-md-3">
			<p class="navbar-left">Royal Bank Of India<p>
		 
		 </div>
		 <div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="loginpage.jsp"><span class="glyphicon glyphicon-log-in"> LOGIN </a></li>
					<li><a href="userregistration.jsp"><span class="glyphicon glyphicon-user"></span> SIGNUP </a></li>
				</ul>
		 
		 </div>
	</div>
  </nav>
  
  
	<div class="container-fluid col-sm-12 bg-1">
 
		<div class="container bg-2">
		
			<form class="form-horizontal" method="post">
			<div class="form-group">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-10">
						<h2 style="color:#808080;">Password Reset</h2>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-3" for="accno">Enter Customer Id</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="accno" placeholder="Enter your customer id" name="accountid" required>
				</div>
				
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="pwd">Enter new Password</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="pwd" placeholder="Enter new password" name="pass" required>
				</div>
				
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3" for="repwd">Enter Confirm Password</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="repwd" placeholder="Enter confirm password" name="repass" required>
				</div>
				
			</div>
	
			<div class="form-group">        
				<div class="col-sm-offset-3 col-sm-10">
					<button type="submit" class="btn btn-default" >Submit</button>
		
				</div>
			</div>
	
			</form>
 
		</div>
 
	</div> 
  
  <footer class="container-fluid bg-3 text-center " >
	<div class="container-fliud col-sm-12">
	<p>Made With <span class="glyphicon logo glyphicon-heart"> </span> Subhro Chatterjee &copy; 2018</p> 
	</div>
	
	</footer>
 
  
  
</body>
</html>