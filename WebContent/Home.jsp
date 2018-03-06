<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AION Wrist Watch</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<body class="container-fluid">

	<div class="row">
		<%@ include file="navbar.jsp" %>
  	</div>
	<div class="row">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
			    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			    <li data-target="#myCarousel" data-slide-to="1"></li>
			    <li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
		    <div class="item active">
		      <img src="Style/watch.jpeg" alt="Los Angeles">
		    </div>
		    <div class="item">
		      <img src="Style/watch.jpeg" alt="Chicago">
		    </div>
		
		    <div class="item">
		      <img src="Style/watch.jpeg" alt="New York">
		    </div>
		  	</div>
		</div>
	</div>
	<div>
		<ul>
		  <h1>What's Hot</h1>
		  <li style="float:right"><a class="active" href="tempProducts.jsp">See More+</a></li>
		</ul>
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
	
	


</body>
</html>