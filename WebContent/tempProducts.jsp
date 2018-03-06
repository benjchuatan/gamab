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
<!------ Include the above in your HEAD tag ---------->
<script>
$(window).scroll(function() {    
    var scroll = $(window).scrollTop();

    if (scroll >= 50) {
        $(".nav2").addClass("navbar-fixed-top");
    } else {
        $(".nav2").removeClass("navbar-fixed-top");
    }
});
</script>
</head>
<body>

<div class="row">
		<%@ include file="navbar.jsp" %>
</div>
  	

<div class="container">
  <div class="row">
    <div class="row">
      <div class="col-md-3 col-sm-3 col-xs-12 image-main-section">
        <div class="row img-part">
          <div class="col-md-12 col-sm-12 colxs-12 img-section">
            <img src="https://dummyimage.com/200x150/000/ebecf5.png&text=++++image+++">
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12 image-title">
            <h3>Image Title</h3>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12 image-description">
            <p>Lorem ipsum dolor sed do eiusmod tempor incididunt ut labore et ...</p>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
          <a href="#" class="btn btn-success add-cart-btn">ADD TO CART</a>
          </div>
        </div>
      </div>
      
      
      <div class="col-md-3 col-sm-3 col-xs-12 image-main-section">
        <div class="row img-part">
          <div class="col-md-12 col-sm-12 colxs-12 img-section">
            <img src="https://dummyimage.com/200x150/000/ebecf5.png&text=++++image+++">
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12 image-title">
            <h3>Image Title</h3>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12 image-description">
            <p>Lorem ipsum dolor sed do eiusmod tempor incididunt ut labore et ...</p>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <a href="#" class="btn btn-success add-cart-btn">ADD TO CART</a>
          </div>
        </div>
      </div>
      
      
      <div class="col-md-3 col-sm-3 col-xs-12 image-main-section">
        <div class="row img-part">
          <div class="col-md-12 col-sm-12 colxs-12 img-section">
            <img src="https://dummyimage.com/200x150/000/ebecf5.png&text=++++image+++">
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12 image-title">
            <h3>Image Title</h3>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12 image-description">
            <p>Lorem ipsum dolor sed do eiusmod tempor incididunt ut labore et ...</p>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <a href="#" class="btn btn-success add-cart-btn">ADD TO CART</a>
          </div>
        </div>
      </div>
      
      
      <div class="col-md-3 col-sm-3 col-xs-12 image-main-section">
        <div class="row img-part">
          <div class="col-md-12 col-sm-12 colxs-12 img-section">
            <img src="https://dummyimage.com/200x150/000/ebecf5.png&text=++++image+++">
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12 image-title">
            <h3>Image Title</h3>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12 image-description">
            <p>Lorem ipsum dolor sed do eiusmod tempor incididunt ut labore et ...</p>
          </div>
          <div class="col-md-12 col-sm-12 col-xs-12">
            <a href="#" class="btn btn-success add-cart-btn">ADD TO CART</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</br></br>
<a href="checkout.jsp" class="btn btn-success add-cart-btn" style ="float: right">Proceed To Checkout</a>
<h3><a href = "Home.jsp">Back to Home</a></h3>

</body>
</html>