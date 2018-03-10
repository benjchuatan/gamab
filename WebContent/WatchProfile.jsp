<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Watch Profile</title>
</head>

<body class="container-fluid" style="background-color:lightgray;">

<div class="row"><%@ include file="navbar.jsp" %></div>

<div class="row">
			
				
					<div class="container">
					<img src="${product[0].filename}">
			        	<h2>${product[0].name}</h2>
			            <p><strong>Manufacturer: </strong> ${product[0].manufacturer}</p>
			            <p><strong>Description: </strong> ${product[0].description} </p>
			            <p><strong>Price: </strong> ${product[0].price} </p>
			            <p><strong>Comments: </strong></p>
                	</div>  
				
			
</div>


</body>
</html>