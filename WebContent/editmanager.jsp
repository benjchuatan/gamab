<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AION Edit Manager</title>
</head>

<body class="container-fluid" style="background-color:lightgray;">

<div class="row"><%@ include file="navbar.jsp" %></div></br>

<div class="container" id="wrap">
	  <div class="row">
	  <div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Edit Manager</h4>
      	</div>
      	<div class="panel-body"> 
        <div class="col-md-6 col-md-offset-3">
        
        <script type="text/javascript">
		  function checkForm(form)
		  {
		    re = /^\w+$/;
		    if(!re.test(form.username.value)) {
		      alert("Error 101");
		      form.username.focus();
		      return false;
		    }
		   
		    if(form.password.value != "") 
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
		
            <form action="UserAdminServlet" method="post" accept-charset="utf-8" class="form" role="form" onsubmit="return checkForm(this);">   
				<input type="text" name="username" value="" class="form-control input-lg" placeholder="Username"  />
				*Must only contain letters,numbers and underscores. (no symbols)</br></br> 
                <input type="password" name="password" value="" class="form-control input-lg" placeholder="Password"  />
                *Minimum of 6 characters with at least one number, one lowercase and one uppercase letter. (no symbols)</br></br>                      
                <button class="btn btn-lg btn-info btn-block signup-btn" type="submit">Create Account</button>
            </form>          
          </div>
          </div>
          </div>
</div>            
</div>
</body>
</html>