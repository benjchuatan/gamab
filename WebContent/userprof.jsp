<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
  <%
  	if(session.getAttribute("username")==null){
  		response.sendRedirect("Home.jsp");
  	}
  %>

	<div class="row">
		<%@ include file="navbar.jsp" %>
  	</div>
  		<div class="row">
		<h3 class="site-title">My Profile</h3>
		<div class="row">
			<div class="col-md-9">
				<div class="row">
					<div class="panel">
						<div class=" panel-body ">
							<div class="col-md-5">
								<img class="img-responsive"
									src="http://www.pvhc.net/img240/uyttxprhsqycyximpzjb.png"
									style="width: 30%;"> <i class="fa fa-wrench"> Edit</i>
								<div class=" clearfix">
									<h3>Paulo Corpuz</h3>
								</div>
							</div>
							<div class="col-md-7">
								<div class="profile-block">
									<ul class="list-group">
										<li class="list-group-item">Vehicles Lifted <span
											class="badge">12</span></li>
										<li class="list-group-item">WishList <span class="badge">5</span></li>
										<li class="list-group-item">Notifications <span
											class="badge">3</span></li>
										<li class="list-group-item">Notifications <span
											class="badge">3</span></li>

										<li class="list-group-item">Notifications <span
											class="badge">3</span></li>

										<li class="list-group-item">Notifications <span
											class="badge">3</span></li>
									</ul>
								</div>
							</div>


						</div>
					</div>
				</div>

			</div>


		</div>

	</div>
</body>
</html>