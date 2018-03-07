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
<body>

<div class="row"><%@ include file="navbar.jsp" %></div>
  	
  	<div class="container">
        <div class = "col-md-6 col-md-offset-3">
        <form action = "AddProductsServlet" method = "POST" enctype="multipart/form-data">
              <fieldset class="form-group">
                <input type="text" class="form-control input-lg" id="formGroupExampleInput" placeholder="Watch Name" name = "name">
              </fieldset>
              <fieldset class="form-group">
                <input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Manufacturer" name = "manufacturer">
              </fieldset>
              <fieldset class="form-group">
                <input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Description" name = "description">
              </fieldset>
              <fieldset class="form-group">
                <input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Price" name = "price">
              </fieldset>
              <fieldset class="form-group">
                <label for="exampleInputFile">Upload Art</label>
                <input type="file" class="form-control-file" id="exampleInputFile" name= "filename">
              </fieldset>
              <input type = "submit" a href = "DisplayProductsServlet" button type="submit" class="btn btn-primary"></a>
              <a href ="Home.jsp"><button type="button" class="btn btn-md btn-danger signup-btn">Cancel</button></a>
        </form>
        </div>
    </div>
</body>
</html>