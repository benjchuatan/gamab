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
<link rel="stylesheet" type="text/css" href="Style/styles.css">
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
  	

<div class="row" >
		<div class= container style="display:flex; width:826px; margin:0 auto;">
			<div class= "prod" style="background-color:yellow;">
			</div>
			<div class="prod" style="background-color:blue;">
			</div>
			<div class="prod" style="background-color:black;">
			</div>
			<div class="prod" style="background-color:green;">
			</div>
		</div>
	</div>
</br></br>
<a href="checkout.jsp" class="btn btn-success add-cart-btn" style ="float: right">Proceed To Checkout</a>
<h3><a href = "Home.jsp">Back to Home</a></h3>

</body>
</html>