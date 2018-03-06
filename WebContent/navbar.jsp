<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div>
<nav class="navbar navbar-inverse navbar-static-top nav-upper nav1">



  			<div class="container-fluid">
  			<c:choose>
  			<c:when test="${sessionScope.username != null}">
  				<form action="Logout" class="navbar-form navbar-right">
      				<input type="submit" class="btn btn-primary" value="Logout">
      			</form>
                   </c:when>
                   <c:otherwise>
                   		
                   	<form id="signin" class="navbar-form navbar-right" role="form" action="Login" method="post">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="uname" type="text" class="form-control" name="username">                                        
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="password" type="password" class="form-control" name="password">                                        
                        </div>

                        <button type="submit" class="btn btn-primary">Login</button>
                        <input  type="button" class="btn btn-primary" onclick = "relocate_home()" value = "Sign Up">
                        <script>
						function relocate_home()
						{
						     location.href = "SignUp.jsp";
						} 
					</script>
                   </form>
                   </c:otherwise>
    			</c:choose>
  			</div>
		</nav>
  	
  	
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
 			</div>
		</nav>
		
</div>