<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AION Wristwatches</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>

<style>
body, html {
    height: 100%;
}

.bg { 
    /* The image used */
    background-image: url("wallp.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

h1 {
    position: relative;
    font-size: 30px;
    z-index: 1;
    overflow: hidden;
    text-align: center;
}
h1:before, h1:after {
    position: absolute;
    top: 51%;
    overflow: hidden;
    width: 50%;
    height: 1px;
    content: '\a0';
    background-color: aqua;
}
h1:before {
    margin-left: -50%;
    text-align: right;
}
.color {
    background-color: #ccc;
}


.footer {
    padding: 50px 0 20px 0;
    background-color: #090c14;
    color: #878c94;
}
.footer .title{
	text-align: left;
	color:#fff;
	font-size:25px;
}
.footer .social-icon{
	padding:0px;
	margin:0px;
}
.footer .social-icon a{
	display:inline-block;
	color:#fff;
	font-size:25px;
	padding:5px;
}
.footer .acount-icon a{
	display:block;
	color:#fff;
	font-size:18px;
	padding:5px;
	text-decoration:none;
}
.footer .acount-icon .fa{
	margin-right:25px;
}
.footer .category a {
    text-decoration: none;
    color: #fff;
    display: inline-block;
    padding: 5px 20px;
    margin: 1px;
    border-radius:4px;
    margin-top: 6px;
    background-color: black;
    border: solid 1px #fff;
}
.footer .payment{
	margin:0px;
	padding:0px;
	list-style-type:none
}
.footer .payment li{
	list-style-type:none
}
.footer .payment li a {
    text-decoration: none;
    display: inline-block;
    color: #fff;
    float: left;
    font-size: 25px;
    padding: 10px 10px;
}

</style>
<body>
<div class="row"><%@ include file="navbar.jsp" %></div>

<div class="bg"></div>
<h1>Promos and Discounts</h1>
<div class="display-container">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    
	<div class="carousel-inner">
      <div class="item active">
        <img src="Watch1.jpeg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="Watch2.jpeg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="Watch3.jpeg" alt="New york" style="width:100%;">
      </div>
      
      <div class="item">
        <img src="Watch4.jpeg" alt="New york" style="width:100%;">
      </div>
    </div>

    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div></br>

<div class="row"><%@ include file="footer.jsp" %></div>

</body>
</html>