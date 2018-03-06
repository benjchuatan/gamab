<title>AION Sign Up</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container" id="wrap">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<form action="r" method="post" accept-charset="utf-8" class="form"
				role="form">
				<legend>Sign Up</legend>
				<h4>Basic Information.</h4>
				<div class="row">
					<div class="col-xs-6 col-md-6">
						<input type="text" name="firstname" value=""
							class="form-control input-lg" placeholder="First Name" />
					</div>
					<div class="col-xs-6 col-md-6">
						<input type="text" name="lastname" value=""
							class="form-control input-lg" placeholder="Last Name" />
					</div>
				</div>
				<input type="text" name="email" value=""
					class="form-control input-lg" placeholder="Email Address" /> <input
					type="password" name="password" value=""
					class="form-control input-lg" placeholder="Password" /> <input
					type="password" name="confirm_password" value=""
					class="form-control input-lg" placeholder="Confirm Password" /> <br>
				<span class="help-block">By clicking Create my account, you
					agree to our Terms and that you have read our Data Use Policy,
					including our Cookie Use.</span> <input type="button"
					class="btn btn-lg btn-primary btn-block signup-btn"
					value="Create My Account" onclick="relocate_home()">
				<script>
						function relocate_home()
						{
						     location.href = "Home.jsp";
						} 
					</script>
			</form>
		</div>
	</div>
</div>
</div>