<html>
<title>AION Sign Up</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<body class = "container-fluid" style="background-color:lightgray;">

<div class="row"><%@ include file="navbar.jsp" %></div>

<div class="row">
	<div class="col-md-6 col-md-offset-3">
		<form action="addUsers" method="post" accept-charset="utf-8" class="form" role="form">
			<legend>Sign Up</legend>
			<h4>Basic Information.</h4>
			<div class="row">
			<div class="col-xs-6 col-md-6">
				<input type="text" name="first_name" value="" class="form-control input-lg" placeholder="First Name" required />
			</div>
			<div class="col-xs-6 col-md-6">
				<input type="text" name="last_name" value="" class="form-control input-lg" placeholder="Last Name" required />
			</div>
			</div>
				<input type="text" name="email" value="" class="form-control input-lg" placeholder="Email Address" required />
				<input type="text" name="username" value="" class="form-control input-lg" placeholder="Username" required /> 
				<input type="password" name="password" value=""class="form-control input-lg" placeholder="Password" required /> 
				<input type="password" name="confirm_password" value="" class="form-control input-lg" placeholder="Confirm Password" required /> 
				<input type ="text" name = "billing_add" value="" class="form-control input-lg" placeholder="Billing Address" required />
				<input type ="text" name = "shipping_add" value="" class="form-control input-lg" placeholder="Shipping Address" required /> <br>
				<span class="help-block">By clicking Create my account, you agree to our Terms and that you have read our Data Use Policy, including our Cookie Use.</span> 
				<button type="submit" class="btn btn-lg btn-info signup-btn">Create My Account</button>
		</form>
	</div>
</div>

</body>
</html>