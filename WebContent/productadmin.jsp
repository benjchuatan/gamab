<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AION Product Management</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
  if(session.getAttribute("isproductmanager")==null){
  	response.sendRedirect("Home.jsp");
  	}
%>
<div class="row"><%@ include file="navbar.jsp" %></div>
 
	
	<!----- Watch Management Tables ----------------------------------------------------------------------------->
  	<div class = "container">
  	<h2> Manage Products </h2>
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">idproduct</th>
				      <th scope="col">Name</th>
				      <th scope="col">Manufacturer</th>
				      <th scope="col">Description</th>
				      <th scope="col">Price</th>
				      
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>CEO Canteen</td>
				      <td>TW Steel</td>
				      <td>45mm Watch Face</td>
				      <td>$400</td>
				    </tr>
				    <tr>
				      <th scope="row">2</th>
				      <td>Pilot</td>
				      <td>IWC Schaffhausen</td>
				      <td>42mm Watch Face</td>
				      <td>$5000</td>
				    </tr>
				    <tr>
				      <th scope="row">3</th>
				      <td>Datejust</td>
				      <td>Rolex</td>
				      <td>42mm Watch Face</td>
				      <td>$4000</td>
				    </tr>
				  </tbody>
			</table>
			
		</div>
		
		<div class = "container">
			<a class = "btn btn-primary" href="AddWatch.jsp">Add Watch</a>
			<a class = "btn btn-success" href="ManageWatch.jsp">Edit Watch Products</a>
			<a class = "btn btn-danger" href="ManageWatch.jsp">Delete Watch</a>
		</div>
	
</body>
</html>