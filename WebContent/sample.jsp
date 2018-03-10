<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<div class="container" id="wrap">
	  <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form action="UserAdminServlet" method="post" accept-charset="utf-8" class="form" role="form">   
            <legend>Create User</legend>
 
                <input type="text" name="username" value="" class="form-control input-lg" placeholder="Username"  />
                <input type="password" name="password" value="" class="form-control input-lg" placeholder="Password"  />   
                <input type="text" name="privilege" value="" class="form-control input-lg" placeholder="Privilege Level"  />                        
                <br />
                <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">Create Account</button>
            </form>          
          </div>
</div>            
</div>

</body>
</html>