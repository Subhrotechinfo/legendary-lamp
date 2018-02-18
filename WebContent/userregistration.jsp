<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>New User Registration Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src ="js/userregistrationvali.js"></script>
<script src ="jquery.session.js"></script>
<link rel="stylesheet" href="css/newuser.css">


 <script>
    		function userval();
    </script>
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
			
			<a class="navbar-brand" ><img src="images/logo.jpg" alt="RBI"></a>
		 </div>
		 
		 <div class="navbar-text col-md-3">
			<p class="navbar-left">Royal Bank Of India<p>
		 
		 </div>
		 <div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right" >
					<li><a href="loginpage.jsp"><span class="glyphicon glyphicon-log-in">LOGIN </span></a></li>
				</ul>
		 
		 </div>
	</div>
  </nav>
 
 		
<!-- Container (Form) -->
 
 <div class="container-fluid col-sm-12 bg-1" >
 
 <div class="container bg-2">
 
   <form class="form-horizontal" method="post">
		
		<div class="form-group">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-10">
						<h2 style="color:#808080;">New User Registration Form</h2>
					</div>
				</div>
			</div>
   
    <div class="form-group">
	  <label class="control-label col-sm-2" for="usernm">User Name</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="usernm" placeholder="Enter username" name="username" required />
      </div>
    </div>
    
    <div class="form-group">
	  <label class="control-label col-sm-2" for="emailid">Email Id</label>
      <div class="col-sm-8">
        <input type="email" class="form-control" id="emailid" placeholder="Enter email id" name="cemailid" required/>
      </div>
    </div>
	
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password</label>
      <div class="col-sm-8">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required/>
      </div>
    </div>
	
	<div class="form-group">
      <label class="control-label col-sm-2" for="repwd">Re-Password</label>
      <div class="col-sm-8">          
        <input type="password" class="form-control" id="repwd" placeholder="Enter re-password" name="repassword" required/>				
      </div>
    </div>
	
	<div class="form-group">
      <label class="control-label col-sm-2" for="amt">Amount</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="amt" placeholder="Enter Amount" name="amount" required/>
      </div>
    </div>
	
	<div class="form-group">
      <label class="control-label col-sm-2" for="adr">Address</label>
      <div class="col-sm-8">          
        <textarea class="form-control"  rows="3" id="adr" placeholder="Enter address" name="address" required></textarea>
      </div>
    </div>
	
	<div class="form-group">
      <label class="control-label col-sm-2" for="ph">Mobile</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="ph" placeholder="Enter mobile no" name="phone" required/>
      </div>
    </div>
		
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" id="bttn">Register</button>
		
      </div>
    </div>
    
    	
  </form>
</div>
</div>

<!-- Container (Footer) -->
 
 <footer class="container-fluid bg-3 text-center " >
	<div class="container-fliud col-sm-12">
	<p>Made With <span class="glyphicon logo glyphicon-heart"> </span> Subhro Chatterjee &copy; 2018</p> 
	</div>
	
	</footer>
 
 </body>
 </html>