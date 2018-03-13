<html>
<title>AION Edit Profile</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<body class = "container-fluid" style="background-color:lightgray;">

<div class="row"><%@ include file="navbar.jsp" %></div></br>

<div class="container" id="wrap">
	<div class="row">
	<div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Edit Profile</h4>
      	</div>
      	<div class="panel-body"> 
		<div class="col-md-6 col-md-offset-3">
			<form action="EditProfileServlet" method="get" accept-charset="utf-8" class="form" role="form">
				<div class="row">
					<div class="col-xs-6 col-md-6">
						<input type="text" name="firstname" value="" class="form-control input-lg" placeholder="First Name" />
					</div>
					<div class="col-xs-6 col-md-6">
						<input type="text" name="lastname" value=""class="form-control input-lg" placeholder="Last Name" />
					</div>
				</div></br>
				<input type="text" name="email" value="" class="form-control input-lg" placeholder="Email Address" /></br> 
				<input type="password" name="oldpassword" value=""class="form-control input-lg" placeholder="Old Password" /></br>  
				<input type="password" name="new_password" value="" class="form-control input-lg" placeholder="New Password" /></br>  
				<input type="password" name="confirm_new_password" value="" class="form-control input-lg" placeholder="Confirm New Password" /></br>  
				<input type ="text" name = "billing_address" value="" class="form-control input-lg" placeholder="New Billing Address" /></br> 
				<input type ="text" name = "shipping_address" value="" class="form-control input-lg" placeholder="New Shipping Address" /> <br>
				<button type="submit" class="btn btn-lg btn-primary signup-btn">Edit Profile</button></a>
				
				
			</form>
		</div>
		</div>
	</div>
</div>

</body>
</html>