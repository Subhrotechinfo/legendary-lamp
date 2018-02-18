<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Withdraw</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <script src="js/withdraw.js"></script>
  
  <link rel="stylesheet" href="css/withdraw.css">
  
  <script>
  			function withdrawmoney();
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
				<ul class="nav navbar-nav navbar-right">
						<li><a href="logoutpage"><span class="glyphicon glyphicon-log-out"></span> LOG OUT</a></li>
				</ul>
		 
		 </div>
	</div>
  </nav>
  
  <div class="container-fluid bg-1">
  
  
  <h1>Money Withdraw With One Click</h1>
  
  </div>

  <div class="container-fluid col-sm-2 bg-2">
	
		<ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="400" >
			
			<li  style="position:left-center;"><a href="dashboard.jsp">Dashboard</a></li>
			<li ><a href="deposit.jsp">Deposit</a></li>
			<li class="active"><a href="withdraw.jsp">Withdraw</a></li>
			<li><a href="transfer.jsp">Transfer</a></li>
  
	
		</ul>
 
 </div>
 
 
 
 <div class="container col-sm-8">
 
 
   <form class="form-horizontal" method="post">
   
    <div class="form-group">
	  <label class="control-label col-sm-3" for="amountwithdraw">Withdraw Amount</label>
      <div class="col-sm-6">
        <input type="text" class="form-control" id="amountwithdraw" placeholder="Enter amount" name="amtwithdraw" required/>
      </div>
    </div>
	
    <div class="form-group">
      <label class="control-label col-sm-3" for="confirmwithdraw">Confirm Withdraw</label>
      <div class="col-sm-6">          
        <input type="text" class="form-control" id="confirmwithdraw" placeholder="Enter confirm amount" name="cnfrmwithdraw" required/>
      </div>
    </div>
	<div class="form-group">        
      <div class="col-sm-offset-3 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
		
      </div>
    </div>
	
  </form>
	
 </div>

 <footer class="container-fluid bg-3 text-center " style="padding: 20px 20px;">
	<div class="container-fliud col-sm-12">
	<p>Made With <span class="glyphicon logo glyphicon-heart"> </span> Subhro Chatterjee &copy; 2018</p> 
	</div>
	
	</footer>

</body>
</html>