<html>
<title>AION Sign Up</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<body class = "container-fluid" style="background-color:lightgray;">
<%
	if(session.getAttribute("isadmin")!=null){
  	response.sendRedirect("error.jsp");
  }
  else if(session.getAttribute("isaccountingmanager")!=null){
  	  	response.sendRedirect("error.jsp");
  	}

  else if(session.getAttribute("isproductmanager")!=null){
	  	response.sendRedirect("error.jsp");
	}

  else if(session.getAttribute("username")!=null){
	  	response.sendRedirect("error.jsp");
	}
%>

<div class="row"><%@ include file="navbar.jsp" %></div></br>

<div class="container">    
   <div class="row">
      <div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Sign Up</h4>
      	</div>
       		<div class="panel-body"> 
       		
       		
       	<script type="text/javascript">
		  function checkForm(form)
		  {
		    re = /^\w+$/;
		    if(!re.test(form.username.value)) {
		      alert("Error 101");
		      form.username.focus();
		      return false;
		    }
		    
		    re = /^[A-Za-z.\s-]+$/;
		    if(!re.test(form.first_name.value)) {
			      alert("Error 202");
			      form.first_name.focus();
			      return false;
			    }
		    
		    re = /^[A-Za-z.\s-]+$/;
		    if(!re.test(form.last_name.value)) {
			      alert("Error 303");
			      form.last_name.focus();
			      return false;
			    }
		    
		    re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		    if(!re.test(form.email.value)) {
			      alert("Error 404");
			      form.email.focus();
			      return false;
			    }
		    
		    re = /^[a-zA-Z0-9,.!? ]*$/;
		    if(!re.test(form.billing_add.value)) {
			      alert("Error 505");
			      form.billing_add.focus();
			      return false;
			    }
		    
		    re = /^[a-zA-Z0-9,.!? ]*$/;
		    if(!re.test(form.shipping_add.value)) {
			      alert("Error 606");
			      form.shipping_add.focus();
			      return false;
			    }
		
		    
		    if(form.password.value != "" && form.password.value == form.confirm_password.value) 
		    {
		      re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w{6,}$/;
		      if(!re.test(form.password.value)) {
			        alert("Error! Password does not meet the requirements! Try Again.");
			        form.password.focus();
			        return false;
			      }
		      if(form.password.value == form.username.value) {
		        alert("Error! Password must be different from Username!");
		        form.password.focus();
		        return false;
		      }
		   
		    } 
		    else {
		      alert("Error: Please check that you've entered and confirmed your password!");
		      form.password.focus();
		      return false;
		    }
		    return true;
		  }	
		</script>
       		

       		<form action="addUsers" method="post" accept-charset="utf-8" class="form" role="form" onsubmit="return checkForm(this);"> 
       			<div class="col-md-8 col-xs-12 col-sm-6 col-lg-8" >
                	<div class="row">
						<div class="col-xs-6 col-md-6">
							<input type="text" name="first_name" value="" class="form-control input-lg" placeholder="First Name" required />
						</div>
						<div class="col-xs-6 col-md-6">
							<input type="text" name="last_name" value="" class="form-control input-lg" placeholder="Last Name" required />
						</div>
					</div></br>
					<input id="token" type="hidden" value="${sessionScope.csrfToken}" />
					<input type="text" name="email" value="" class="form-control input-lg" placeholder="Email Address" required /></br>
					<input type="text" name="username" value="" class="form-control input-lg" placeholder="Username" required />
					*Must only contain letters,numbers and underscores. (no symbols)</br></br> 
					<input type="password" name="password" value=""class="form-control input-lg" placeholder="Password" required />
					*Minimum of 6 characters with at least one number, one lowercase and one uppercase letter. (no symbols)</br></br>
					<input type="password" name="confirm_password" value="" class="form-control input-lg" placeholder="Confirm Password" required /></br> 
					<input type ="text" name = "billing_add" value="" class="form-control input-lg" placeholder="Billing Address" required /></br>
					<input type ="text" name = "shipping_add" value="" class="form-control input-lg" placeholder="Shipping Address" required /> <br>
					<span class="help-block">*By clicking Create My Account, you agree to our Terms and that you have read our Data Use Policy, including our Cookie Use.</span> 
					<button type="submit" class="btn btn-lg btn-info signup-btn">Create My Account</button>
				</div>
			</form>
			
			</div>
       </div>
	</div>
</div>

<div class="row"><%@ include file="footer.jsp" %></div>
</body>
</html>