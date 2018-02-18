<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Index Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <script src ="js/index.js"></script>
  
  <link rel="stylesheet" href="css/index.css">

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">

	<div class="container">
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
		 <!-- Nav bar links-->
		 <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#onlinebanking">ONLINE BANKING</a></li>
        <li><a href="#account">ACCOUNTS & DEPOSITS</a></li>
        <li><a href="#contact">CONTACT</a></li>
      </ul>
		</div>
	</div>
</nav>

<!-- Container (onlinebanking Section) -->

<div id="onlinebanking" class="container-fluid bg-1">
  <div class="row">
    <div class="col-sm-8">
      <h2>Banking With Us</h2><br>
		<h4>Online Banking</h4>
      <p>View your account activity, make payments,transfer funds and apply for products with ease.Our Global Link service allows you to manage accounts in different countries using just one login. Find out more about Global Link</p>
      <br>
      
      	<form action="loginpage.jsp"> <button class="btn btn-default btn-lg" style="background:#bcf6ea;">Get in Touch</button> </form>
    </div>
	
	<div class="col-sm-4">
  		<span class="glyphicon glyphicon-th-large logo slideanim"></span>
	</div>
    
  </div>
</div>

<div id="onlinebanking" class="container-fluid bg-1">
  <div class="row">
    <div class="col-sm-8">
		<h4>Corporate Electronic Banking</h4>
      <p>We provide a range of electronic channels for your cash and trade transactions, access to foreign exchange rates and securities services. You can choose your preferred channel according to your business need for product simplicity or sophistication, and can be adapted for a corporation or financial institution.</p>
    </div>
    
  </div>
</div>

<div id="onlinebanking" class="container-fluid bg-1">
  <div class="row">
    <div class="col-sm-8">
		<h4>Mobile Banking</h4>
      <p>Do more with your time and get quick and easy access to your accounts on the go with mobile banking.</p>
    </div>
    
  </div>
  
  </div>

<!-- Container (ACCOUNTS & DEPOSITS) -->
<div id="account" class="container-fluid">
<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-tags logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2>Savings Accounts</h2><br>
      <h4>Stay one step ahead with the Barclays Savings account. Maintain an average quarterly balance of Rs. 100,000 only and enjoy a host of benefits.Features & Benefits*</h4><br>
      <p><strong>Eligibility:</strong>This account can be opened by individual resident Indian customers.* Facilities offered as Free are at the sole discretion of the bank and the bank may without prior notice of the same, limit such offerings.</p>
	  
	  <h2>Term Deposit Account</h2><br>
      <h4> Watch your money grow at a steady pace with a Term Deposit from Barclays.</h4><br>
      <p><strong> Tax Deducted at Source (TDS)</strong> TDS on deposits as applicable as per the Income Tax rules except where exemption certificate is made available to the bank for each deposit at the beginning of every financial year.</p>
		
	  <h2>Current Accounts</h2><br>
      <h4>Current accounts provide convenience, superior service and cost effective solutions to customers. While you take care of business, we can help you move forward by attending to its financial needs. Barclays Current Account offering delivers a multi-utility current account with an Average Quarterly Balance (AQB) of Rs. 10,00,000.</h4><br>
      <p><strong>Conditions Applied</strong>*Facilities offered as free are at the sole discretion of the bank and the bank may without prior notice of the same, limit such offerings.<p>
		
	</div>
</div>
</div>
</div>
<!-- Container (Customer Feedback) -->
<div id="portfolio" class="container-fluid text-center bg-grey">

<h2>A Culture of Excellence</h2>
	<p>The strength of our business is rooted in our focus on our clients and our people. We foster a culture of excellence as:</p>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"Clients value our rigorous research and disciplined investment processes."<br><span> -Investors</span></h4>
      </div>
      <div class="item">
        <h4>"Our goal is to forge long-term relationships with our clients built upon trust."<br><span> -Partners</span></h4>
      </div>
      <div class="item">
        <h4>"Alongside our clients, we view managing risk as a strategic priority and take a holistic approach to risk management."<br><span> -Risk Managers</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>

</div>
</div>

	<!-- Contact-->

<div id="contact" class="container-fluid bg-grey" >
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
	<div class="col-sm-5">
      <p>We are happy to help our customers 24/7.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Bangalore</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91 95*******0<p>
      <p><span class="glyphicon glyphicon-envelope"></span> royalbankofindia.alert@gmail.com</p>
    </div>

  </div>
</div>


<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>&copy;Subhro Chatterjee<a href="https://github.com/Subhrotechinfo" title="View Full Project @">GitHub</a></p>
</footer>


</body>
</html>