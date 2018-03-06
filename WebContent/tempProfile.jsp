<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Profile</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">

<div class="row">
	<nav class="navbar navbar-inverse navbar-static-top navbar-lower nav2">
		<div class="container-fluid">
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-btn">
							<button type="submit" class="btn btn-default">Submit</button>
						</span>
					</div>
				</div>
			</form>

			<form class="navbar-form navbar-right" role="logout">
				<span class="input-group-btn"> <input type="button"
					class="btn btn-default" onclick="relocate_home()" value="Log Out">
					<script>
						function relocate_home()
						{
						     location.href = "Home.jsp";
						} 
					</script>
				</span>
			</form>
		</div>
	</nav>
</div>


<div class="main-content">
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
</div>