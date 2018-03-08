<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AION Product List</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>

<div class="row"><%@ include file="navbar.jsp" %></div>
  	

<div class="container-fluid">
  <div class="row">
    
	   <c:forEach items = "${productlists}" var = "p">    
	      <div class="col-md-3 col-sm-3 col-xs-12 image-main-section">
	        <div class="row img-part">
	          <div class="col-md-12 col-sm-12 colxs-12 img-section">
		                    <img class="img-responsive" src="${p.filename}"alt="" style="min-height:50px;height:300px; min-width: 20px;width:700px;">
	          </div>
	          <div class="col-md-12 col-sm-12 col-xs-12 image-title">
	            <h3>${p.name}</h3>
	          </div>
	          <div class="col-md-12 col-sm-12 col-xs-12 image-description">
	            <p>Description: ${p.description}</p>
	          </div>
	          <div class="col-md-12 col-sm-12 col-xs-12 image-manufaturer">
	            <p>Manufacturer: ${p.manufacturer}</p>
	          </div>
	          <div class="col-md-12 col-sm-12 col-xs-12 image-price">
	            <p>Price: ${p.price}</p>
	          </div>
	          <div>
	            <button type="button" class="btn btn-md btn-primary signup-btn">Add to Cart</button>
	          </div>
	          
	        </div>
	      </div>
      </c:forEach>
   
    </div>
  </div>
</div>
</br></br>
<a href="checkout.jsp" class="btn btn-success add-cart-btn" style ="float: right">Proceed To Checkout</a>

</body>
</html>