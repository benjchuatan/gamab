<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AION Search Results</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body class="container-fluid">

<div class="row"><%@ include file="navbar.jsp" %></div>
  	
<div class="container">
	<legend>Results</legend>
	<div class="row">
	    <c:forEach items = "${productlists}" var = "p">    
			<div class="col-md-3 col-sm-3 col-xs-12 image-main-section" style="cursor:pointer" align="center" onclick="location.href='GetProductServlet?id=${p.idproducts}';">
		        <div class="row img-part">
		          <img class="img-responsive" src="${p.filename}" alt="alternative" >
		          <h4><a href="GetProductServlet?id=${p.idproducts}">${p.name}</a></h4>
		    	</div>
		   </div>
	     </c:forEach>
	</div>
</div>

<div class="row"><%@ include file="footer.jsp" %></div>
</body>
</html>