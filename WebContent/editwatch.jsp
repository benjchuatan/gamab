<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AION Product Management</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="background-color:lightgray;">

<div class="row"><%@ include file="navbar.jsp" %></div></br>
  	
  	<div class="container">
  	<div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Edit Watch</h4>
      	</div>
      	<div class="panel-body"> 
        <div class = "col-md-6 col-md-offset-3">
        <form action = "EditProductServlet" method = "POST" enctype="multipart/form-data">
              <fieldset class="form-group">
                <p>Watch Name:</p><input type="text" class="form-control input-lg" id="formGroupExampleInput" placeholder="Watch Name" name = "name" value ="${product[0].name}">
              </fieldset>
              <fieldset class="form-group">
                <p>Manufacturer:</p><input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Manufacturer" name = "manufacturer" value = "${product[0].manufacturer}">
              </fieldset>
              <fieldset class="form-group">
                <p>Description:</p><input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Description" name = "description" value = "${product[0].description}">
              </fieldset>
              <fieldset class="form-group">
                <p>Price:</p><input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Price" name = "price" value = "${product[0].price}">
              </fieldset>
              <fieldset>
              <fieldset class="form-group">
                <p>id:</p><input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Price" name = "ProductID" value = "${product[0].idproducts}">
              </fieldset>
              <fieldset class = "form-group">
              <p>Watch Type:</p>
	              <select>
					  <option value="analog">Analog</option>
					  <option value="digital">Digital</option>
					  <option value="smart">Smart</option>
				  </select>
              </fieldset>
              
              <input type = "submit" a href = "DisplayProductsServlet" button type="submit" class="btn btn-info btn-lg"></a>

        </form>
        </div>
    </div>
    </div>
    </div>
</body>
</html>