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
  if(session.getAttribute("isaccountingmanager")!=null){
  	  	response.sendRedirect("error.jsp");
  	}

  else if(session.getAttribute("isadmin")!=null){
	  	response.sendRedirect("error.jsp");
	}

  else if(session.getAttribute("username")==null){
	  	response.sendRedirect("error.jsp");
	}

  else if(session.getAttribute("normuser ")!=null){
	  	response.sendRedirect("error.jsp");
	}
%>

<div class="row"><%@ include file="navbar.jsp" %></div>,</br>
 
  	<div class = "container">
  	<div class="panel panel-default">
      	<div class="panel-heading"><h4 >Manage Products</h4></div>
       			<div class="panel-body">
				<table class="table">  				
					  <thead>
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">Name</th>
					      <th scope="col">Manufacturer</th>
					      <th scope="col">Description</th>
					      <th scope="col">Price</th>
					      <th scope="col">Edit</th>
					      <th scope="col">Delete</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					    <c:forEach items = "${productlists}" var = "p">
					      <td>${p.idproducts}</td>
					      <td>${p.name}</td>
					      <td>${p.manufacturer}</td>
					      <td>${p.description}</td>
					      <td>${p.price}</td>
					      <td><a href="EditProductServlet?id=${p.idproducts}">Edit</a></td>
	    				  <td><a href="DeleteProductServlet?id=${p.idproducts}">Delete</a></td>
					    </tr>
					  </tbody>
     			</c:forEach>	
			</table>
			</div>
			</div>
			
		</div>
		
		<div class = "container">
			<a class = "btn btn-info" href="AddWatch.jsp">Add Watch</a>		
		</div></br>
	
</body>
</html>