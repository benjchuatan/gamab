<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AION Product Management</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="background-color:lightgray;">
<%
	if(session.getAttribute("isadmin")!=null){
  	response.sendRedirect("error.jsp");
  }
  else if(session.getAttribute("isaccountingmanager")!=null){
  	  	response.sendRedirect("error.jsp");
  	}

  else if(session.getAttribute("normuser ")!=null){
	  	response.sendRedirect("error.jsp");
	}

  else if(session.getAttribute("username")==null){
	  	response.sendRedirect("error.jsp");
	}
%>

<div class="row"><%@ include file="navbar.jsp" %></div></br>
  	
  	<div class="container">
  	<div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Edit Watch</h4>
      	</div>
      	<div class="panel-body"> 
        <div class = "col-md-6 col-md-offset-3">
        
        <script type="text/javascript">
		  function checkForm(form)
		  {
		    re = /^[a-zA-Z0-9,.!? ]*$/;
		    if(!re.test(form.name.value)) {
			      alert("Error 808");
			      form.name.focus();
			      return false;
			    }
		    
		    re = /^[a-zA-Z0-9,.!? ]*$/;
		    if(!re.test(form.manufacturer.value)) {
			      alert("Error 909");
			      form.manufacturer.focus();
			      return false;
			    }
		    
		    re = /^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:(\.|,)\d{2})?$/;
		    if(!re.test(form.price.value)) {
			      alert("Error 1101");
			      form.price.focus();
			      return false;
			    }
		    
		    
		    re = /^[0-9]+$/;
		    if(!re.test(form.quantity.value)) {
			      alert("Error 1201");
			      form.quantity.focus();
			      return false;
			    }
		    
		    re = /^[a-zA-Z0-9,.!? ]*$/;
		    if(!re.test(form.description.value)) {
			      alert("Error 1001");
			      form.description.focus();
			      return false;
			    }
		    return true;
		  }	
		</script>
		
        <form action = "EditProductServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
        	  <fieldset class="form-group">
                <p>ID:</p><input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Price" name = "ProductID" value = "${product[0].idproducts}" readonly>
              </fieldset>
              <fieldset class="form-group">
                <p>Watch Name:</p><input type="text" class="form-control input-lg" id="formGroupExampleInput" placeholder="Watch Name" name = "name" value ="${product[0].name}" >
              </fieldset>
              <fieldset class="form-group">
                <p>Manufacturer:</p><input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Manufacturer" name = "manufacturer" value = "${product[0].manufacturer}" >
              </fieldset>
              <fieldset class="form-group">
                <p>Description:</p><input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Description" name = "description" value = "${product[0].description}">
              </fieldset>
              <fieldset class="form-group">
                <p>Price:</p><input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Price" name = "price" value = "${product[0].price}">
              </fieldset>
              
              
              <fieldset class = "form-group">
              <p>Watch Type:</p>
	              <select>
					  <option value="analog">Analog</option>
					  <option value="digital">Digital</option>
					  <option value="smart">Smart</option>
				  </select>
              </fieldset>
              
              <input type = "submit" a href = "DisplayProductsServlet" button type="submit" class="btn btn-info btn-lg"></a>

        </form>
        </div>
    </div>
    </div>
    </div>
</body>
</html>