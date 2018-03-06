<title>AION Edit Profile</title>
<link
href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<div class="container" id="wrap">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<form action="r" method="post" accept-charset="utf-8" class="form"
				role="form">
				<legend>Edit Profile</legend>
				<h4>Supply Information.</h4>
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
				<input type="text" name="email" value="" class="form-control input-lg" placeholder="Email Address" /> 
				<input type="password" name="oldpassword" value=""class="form-control input-lg" placeholder="Old Password" /> 
				<input type="password" name="new_password" value="" class="form-control input-lg" placeholder="New Password" /> 
				<input type="password" name="confirm_new_password" value="" class="form-control input-lg" placeholder="Confirm New Password" /> 
				<input type ="text" name = "old_billing_address" value="" class="form-control input-lg" placeholder="Old Billing Address" />
				<input type ="text" name = "new_billing_address" value="" class="form-control input-lg" placeholder="New Billing Address" />
				<input type ="text" name = "old_shipping_address" value="" class="form-control input-lg" placeholder="Old Shipping Address" />
				<input type ="text" name = "new_shipping_address" value="" class="form-control input-lg" placeholder="New Shipping Address" /> <br>
				 
				<input type="button" class="btn btn-lg btn-primary btn-block signup-btn" value="Edit My Profile" onclick="relocate_home()">
					<script>
						function relocate_home()
						{
						     location.href = "userprof.jsp";
						} 
					</script>
			</form>
		</div>
	</div>
</div>
</div>