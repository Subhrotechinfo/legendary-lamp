<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src ="js/loginvalidate.js"></script>
<script src ="jquery.session.js"></script>

<link rel="stylesheet" href="css/login.css">


 <script>
    		function loginval();
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
			
			<a class="navbar-brand" href="#myPage"><img src="images/logo.jpg" alt="RBI"></a>
		 </div>
		 
		 <div class="navbar-text col-md-3">
			<p class="navbar-left">Royal Bank Of India<p>
		 
		 </div>
		 <div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right" >
					<li><a href="userregistration.jsp"><span class="glyphicon glyphicon-user"></span>SIGNUP </a></li>
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
						<h2 style="color:#808080;">Existing Customer Login</h2>
					</div>
				</div>
			</div>
   
    <div class="form-group">
	  <label class="control-label col-sm-3" for="customerid">Customer Id</label>
      <div class="col-sm-6">
        <input type="text" class="form-control" id="customerid" placeholder="Enter customer id" name="accountno" required />
      </div>
    </div>
	
    <div class="form-group">
      <label class="control-label col-sm-3" for="pwd">Password</label>
      <div class="col-sm-6">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required />
      </div>
    </div>
	
    <div class="form-group">        
      <div class="col-sm-12">
        <div class="checkbox col-sm-offset-3">
		  
			<label style="color:#808080;"><input type="checkbox" name="remember" checked />Remember me</label>
		  <a href="forgetpassword.jsp" class="col-sm-offset-1" style="color:#1abc9c;" >Forget Password ?</a>
        </div>
      </div>
    </div>
	
    <div class="form-group">        
      <div class="col-sm-offset-3 col-sm-12">
        <button type="submit" class="btn btn-default" id="btn">Submit</button>
		
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