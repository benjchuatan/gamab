<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AION Product Management</title>
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
<body>
	<div class="row">
		<%@ include file="navbar.jsp" %>
  	</div>
  	<!----- Add Watch Form ----------------------------------------------------------------------------->
  	<div class = "container">
			<div class = "row">
				<div class = "col-xs-8">
					<h2> Add Watch </h2>
					<form action="r" method="post" accept-charset="utf-8" class="form-horizontal" role="form">
						<div class ="container">
							<div class = "form-group">
								<label for="wname" class="col-sm-2 control-label">Watch Name</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="wname" name="wname"/>
								</div>
							</div>
							
							<div class = "form-group">
								<label for="mname"class="col-sm-2 control-label">Manufacturer</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="mname" name="mname"/>
								</div>
								<label for="price"class="col-sm-2 control-label">Price</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="price" name="price"/>
								</div>
							</div>
							
							<div class = "form-group">
								<label for="desc"class="col-sm-2 control-label">Description</label>
								<div class="col-sm-6">
									<textarea class="form-control" rows="5" id="desc" name="desc"></textarea>
								</div>
							</div>
							
							<div class="form-group">
								<div class ="col-sm-6 col-sm-push-2">
									<a class = "btn btn-danger" href="userprof.jsp">Cancel</a>
									<input type="submit" class="btn btn-primary" id="submit" value="Submit"/> <!----- no value for submit ---------->
									
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		
	<!----- Watch Management Tables ----------------------------------------------------------------------------->
  	<div class = "container">
			<div class = "row">
				<div class = "col-xs-8">
					<h2> Add Watch </h2>
					<form action="r" method="post" accept-charset="utf-8" class="form-horizontal" role="form">
						<div class ="container">
							<div class = "form-group">
								<label for="wname" class="col-sm-2 control-label">Watch Name</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="wname" name="wname"/>
								</div>
							</div>
							
							<div class = "form-group">
								<label for="mname"class="col-sm-2 control-label">Manufacturer</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="mname" name="mname"/>
								</div>
								<label for="price"class="col-sm-2 control-label">Price</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="price" name="price"/>
								</div>
							</div>
							
							<div class = "form-group">
								<label for="desc"class="col-sm-2 control-label">Description</label>
								<div class="col-sm-6">
									<textarea class="form-control" rows="5" id="desc" name="desc"></textarea>
								</div>
							</div>
							
							<div class="form-group">
								<div class ="col-sm-6 col-sm-push-2">
									<a class = "btn btn-danger" href="userprof.jsp">Cancel</a>
									<input type="submit" class="btn btn-primary" id="submit" value="Submit"/> <!----- no value for submit ---------->
									
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
</body>
</html>