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
<title>My Profile</title>
</head>

<body class="container-fluid" style="background-color:lightgray;">

<%
  if(session.getAttribute("username")==null){
  	response.sendRedirect("Home.jsp");
  	}
%>

<div class="row"><%@ include file="navbar.jsp" %></div></br>

<div class="container">    
   <div class="row">
      <div class="panel panel-default">
      	<div class="panel-heading"><h4 >My Profile</h4></div>
       			<div class="panel-body">
       				
       				<c:forEach items = "${profile}" var = "a" >
					<p>Name: ${a.first_name}</p>
					</c:forEach>
					<a href="EditProf.jsp">Edit Profile</a>
                </div>
       </div>
    </div>
</div>

<div class="container">    
   <div class="row">
      <div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Purchase History</h4></div>
       			<div class="panel-body">                     
                   	<div class="container">        
						  <table class="table table-bordered">
						    <thead>
						      <tr>
						        <th>#</th>
						        <th>Name</th>
						        <th>Date</th>
						        <th>Price</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr>
							<c:forEach items = "${transaction}" var = "b">
							<td>${b.transID}</td>
							<td>${b.name}</td>
							<td>${b.date}</td>
							<td>${b.price}</td>
						</tr>
						</c:forEach>
						    </tbody>
						  </table>
					</div>
                </div>
       </div>
    </div>
</div>
<div class="row"><%@ include file="footer.jsp" %></div></br>
</body>
</html>