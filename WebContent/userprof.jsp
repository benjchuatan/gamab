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

<body class="container-fluid">

<%
  if(session.getAttribute("username")==null){
  	response.sendRedirect("Home.jsp");
  	}
%>

<div class="row"><%@ include file="navbar.jsp" %></div>

<div class="row">
	<div class="col-md-9">
		<div class="row">
			<div class="panel">
				<div class=" panel-body ">
					<div class="col-md-5">
						<img class="img-responsive" src="prof.png" style="width: 100%"></br> 
						<a href = "EditProf.jsp"><button type="button" class="btn btn-lg btn-primary btn-block signup-btn">Edit My Profile</button></a>
							<div class=" clearfix">
								<h3>${username}</h3>
							</div>
					</div>
							
					<div class="container">
						<h3>Purchase History</h3>
							<div class="row">
								<div class="table-responsive">
									<table class="table table-bordered">
							        	<thead>
							          		<tr>
									            <th>#</th>
									            <th>Product Name</th>
									            <th>Date</th>
									            <th>Price</th>
							          		</tr>
							        	</thead>
							        	
							        	<tbody>
								        	<tr>
									            <td>1</td>
									            <td>Apple iphone 6</td>
									            <td>11/6/2014</td>
									            <td>$899.00</td>
								          	</tr>
									        <tr>
									            <td>2</td>
									            <td>LG G3</td>
									            <td>10/6/2014</td>
									            <td>$621.00</td>
									       </tr>
								           <tr>
									            <td>3</td>
									            <td>Samsung Galaxy S5</td>
									            <td>11/9/2013</td>
									            <td>$640.00</td>
								           </tr>
								           <tr>
									            <td>4</td>
									            <td>Rook Landing Page</td>
									            <td>11/6/2014</td>
									            <td>$12.00</td>
								           </tr>
							        	</tbody>
							      	</table>
							    </div>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>