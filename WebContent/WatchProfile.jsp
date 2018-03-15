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

<div class="row"><%@ include file="navbar.jsp" %></div></br>

<div class="container">    
   <div class="row">
      <div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Watch Details</h4>
      	</div>
       		<div class="panel-body">
       			<div class="col-md-4 col-xs-12 col-sm-6 col-lg-4">
        			<img src="${product[0].filename}">
                </div>
                      
                <div class="col-md-8 col-xs-12 col-sm-6 col-lg-8" >
                    <div class="container" >
                        <h2>${product[0].name}</h2>
                    </div><hr>
	                    <p><strong>Manufacturer: </strong> ${product[0].manufacturer}</p>
						<p><strong>Description: </strong> ${product[0].description} </p>
						<p><strong>Price: </strong> ${product[0].price} </p>
						<form action="ShoppingCartServlet" method="post">
						<input type="hidden" name="idproduct" value="${product[0].idproducts}"> 
 						<button type="submit" class="btn btn-lg btn-success" onclick="myFunction2()">Add To Cart</button>
 						<script>
						function myFunction2() {
    					alert("Added to cart.");
						}
					</script>
						</form>
                 </div>
            </div>
      </div>
   </div>
</div>
<
<div class="container">    
   <div class="row">
      <div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Comments/Remarks</h4></div>
       			<div class="panel-body">                     
       			<c:forEach items = "${comments}" var = "r">
                   	<div class="col-md-8 col-xs-12 col-sm-6 col-lg-8" >
                    	<h5>${r.productReview} Hello Motto</h5>
                    </div>
                    </c:forEach>
                </div>
       </div>
       
       <form>
	    <div class="form-group">
	      <label for="comment">Leave your comments below:</label>
	      <textarea class="form-control" rows="5" id="comment"></textarea>
	    </div>
	    <button type="button" class="btn btn-lg btn-primary">Submit Comment</button>
	  </form>
    </div></br></br>
    
 

</div></br>
<

<div class="row"><%@ include file="footer.jsp" %></div>
</body>
</html>