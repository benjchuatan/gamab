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
<title>AION Accounting Management</title>
</head>

<body class="container-fluid" style="background-color:lightgray;">
<%
	if(session.getAttribute("isadmin")!=null){
  	response.sendRedirect("error.jsp");
  }
  else if(session.getAttribute("isproductmanager")!=null){
  	  	response.sendRedirect("error.jsp");
  	}

  else if(session.getAttribute("username")==null){
	  	response.sendRedirect("error.jsp");
	}

  else if(session.getAttribute("normuser ")!=null){
	  	response.sendRedirect("error.jsp");
	}
%>

<div class="row"><%@ include file="navbar.jsp" %></div></br>

<div class="container">    
   <div class="row">
      <div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Accounting Report</h4></div>
       			<div class="panel-body">                     
                   	<div class="col-md-8 col-xs-12 col-sm-6 col-lg-8" >
                    	<h5>Total Sales:</h5>
                    </div>
                 <c:forEach items = "${transaction}" var = "b">
                 <div class="col-md-8 col-xs-12 col-sm-6 col-lg-8" >
							<td>${b.name}</td>
							<td>${b.price}</td>
				 </div>
				</c:forEach>   
                    
                
                </div>
       </div>
       
      
    </div>
</div>

</body>
</html>