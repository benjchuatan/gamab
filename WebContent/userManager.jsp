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
<title>AION User Management</title>
</head>

<body class="container-fluid" style="background-color:lightgray;">
<%
  if(session.getAttribute("isadmin")!=null){
  	response.sendRedirect("userManager.jsp");
  	}

  else if(session.getAttribute("isproductmanager")!=null){
	  	response.sendRedirect("SignUp.jsp");
	  	}
%>



<div class="row"><%@ include file="navbar.jsp" %></div></br>

<div class="container" id="wrap">
	  <div class="row">
	  <div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Create User</h4>
      	</div>
      	<div class="panel-body"> 
        <div class="col-md-6 col-md-offset-3">
            <form action="UserAdminServlet" method="post" accept-charset="utf-8" class="form" role="form">   

 
                <input type="text" name="username" value="" class="form-control input-lg" placeholder="Username"  /></br>
                <input type="password" name="password" value="" class="form-control input-lg" placeholder="Password"  /></br>   
                <input type="text" name="privilege" value="" class="form-control input-lg" placeholder="Privilege Level"  /></br>                        
                <button class="btn btn-lg btn-info btn-block signup-btn" type="submit">Create Account</button>
            </form>          
          </div>
          </div>
          </div>
</div>            
</div>
</body>
</html>