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

<body class="container-fluid">
<%
  if(session.getAttribute("isadmin")==null){
  	response.sendRedirect("Home.jsp");
  	}
%>

<div class="row"><%@ include file="navbar.jsp" %></div>

<div class = "row">
	<div class="col-md-6 col-md-offset-3">
		<form action="UserAdminServlet" method ="post">
		<legend>Create User</legend>
		<div>
			<div class="col-xs-6 col-md-4">
			<input type="text" name="username" class="form-control input-lg" placeholder="Username" />
			</div>
			
			<div class="col-xs-6 col-md-4">
			<input type="password" name="password" value=""class="form-control input-lg" placeholder="Password" />
			</div>
			
			<div class="col-xs-6 col-md-6">
			<input type="text" name="privilege" value="" class="form-control input-lg" placeholder="Privilege Level" />
			</div>
		</div>
		
		<button type="submit" class="btn btn-lg btn-primary signup-btn">Create Your Account</button>
		<a href ="Home.jsp"><button type="button" class="btn btn-lg btn-danger signup-btn">Cancel</button></a>
		
		</form>
	</div>
</div>
</body>
</html>