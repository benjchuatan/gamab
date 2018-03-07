<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body class="container-fluid">
<%
  if(session.getAttribute("isadmin")==null){
  	response.sendRedirect("Home.jsp");
  	}
%>
<div class="row"><%@ include file="navbar.jsp" %></div>
	<form action="UserAdminServlet" method ="post">
		Username here<input type="text" name="username"><br>
		Password Here<input type="text" name="password">
		Set privilege<input type="text" name="privilege">
		<button type="submit">SUBMIT!</button>
	
	
	</form>
</body>
</html>