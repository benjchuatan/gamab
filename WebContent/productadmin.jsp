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
<body style="background-color:lightgray;">
<%
  if(session.getAttribute("isproductmanager")==null){
  	response.sendRedirect("Home.jsp");
  	}
%>
<div class="row"><%@ include file="navbar.jsp" %></div>
 
  	<div class = "container">
  	<h2> Manage Products </h2>
				<table class="table">
				  +					<c:forEach items = "${productlists}" var = "p">
					  <thead>
					    <tr>
					      <th input type="checkbox"></th>
					      <th scope="col">${p.idproducts}</th>
					      <th scope="col">${p.name}</th>
					      <th scope="col">${p.manufacturer}</th>
					      <th scope="col">${p.description}</th>
					      <th scope="col">${p.price}</th>
					      <th scope="col">Edit</th>
					      <th scope="col">Delete</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <td><input type="checkbox" class="checkthis" /></td>
					      <th scope="row">1</th>
					      <td>CEO Canteen</td>
					      <td>TW Steel</td>
					      <td>45mm Watch Face</td>
					      <td>$400</td>
					      <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-s" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
	    				  <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-s" data-title="Delete" data-toggle="modal" data-target="#delete" ><a href="DeleteProductServlet?id=${p.idproducts}"><span class="glyphicon glyphicon-trash"></a></span></button></p></td>
					    </tr>
					  </tbody>
     			</c:forEach>	
			</table>
			
		</div>
		
		<div class = "container">
			<a class = "btn btn-info" href="AddWatch.jsp">Add Watch</a>
			<input type ="button" class = "btn btn-danger" value ="Delete All Selected Watches" id ="delbutton"/>		
		</div>
	
</body>
</html>