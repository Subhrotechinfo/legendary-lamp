<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DashBoard</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <script src ="js/dashboard.js"></script>
  <script src ="js/loginvalidate.js"></script>
  <script src ="jquery.session.js"></script>
  
  <link rel="stylesheet" href="css/dashboard.css">
  
 <script>
 			function dashboad();
			function fetch();
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
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logoutpage"><span class="glyphicon glyphicon-log-out"></span> LOG OUT</a></li>
				</ul>
		 
		 </div>
	</div>
  </nav>
  
  <div class="container-fluid bg-1">
  
  
  <h1>Account Details</h1>
  
  </div>

  <div class="container-fluid col-sm-2 bg-2">
	
		<ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="400" >
			
			<li class="active" style="position:left-center;"><a href="dashboard.jsp">Dashboard</a></li>
			<li><a href="deposit.jsp">Deposit</a></li>
			<li><a href="withdraw.jsp">Withdraw</a></li>
			<li><a href="transfer.jsp">Transfer</a></li>
  
	
		</ul>
 
 </div>
 
	<div class="container col-sm-8">
	
		<div class="bg-3">
		
				<h2 style="color:#8c8c8c;">User Details</h2>
  
				<div class="table table-bordered table-responsive ">          
					<table class="table table-hover table-bordered">
						<thead>
						  <tr>
							<th>Account Id</th>
							<th>Username</th>
							<th>Amount</th>
							<th>Address</th>
							<th>Mobile</th>
						  </tr>
						</thead>
						
								<tbody id="content">
								  
								</tbody>
					</table>
				</div>
		</div>
	</div>

	
	
	
	 <footer class="container-fluid bg-4 text-center ">
		<div class="container-fliud col-sm-12">
		<p>Made With <span class="glyphicon logo glyphicon-heart"> </span> Subhro Chatterjee &copy; 2018</p> 
	</div>
	
	</footer>

</body>
</html>