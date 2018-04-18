<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AION Checkout</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color:lightgray;">
<%
  if(session.getAttribute("isproductmanager")!=null){
  	response.sendRedirect("error.jsp");
  	}

  else if(session.getAttribute("isadmin")!=null){
  	response.sendRedirect("error.jsp");
  }
  else if(session.getAttribute("isaccountingmanager")!=null){
  	  	response.sendRedirect("error.jsp");
  	}
%>

<div class="row"><%@ include file="navbar.jsp" %></div></br>


<div class="container">
<div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Checkout</h4>
      	</div>
      	<div class="panel-body"> 
      	
      	<script type="text/javascript">
		  function checkForm(form)
		  {
		 
		    re = /^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$/;
		    if(!re.test(form.card_holder_name.value)) {
			      alert("Error: Please enter a valid cardholder's name!");
			      form.card_holder_name.focus();
			      return false;
			    }
		    
		    re = /^(?:4[0-9]{12}(?:[0-9]{3})?|[25][1-7][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$/;
		    if(!re.test(form.card_number.value)){
		    	alert("Error: Invalid Card!");
		    	form.card_number.focus();
		    	return false; 
		    }
		
		    re = /^[0-9]{3,4}$/;
		    if(!re.test(form.cvv.value)){
		    	alert("Error: Invalid CVV!");
		    	form.cvv.focus();
		    	return false;
		    }
		    
		    if(form.password.value != "" && form.password.value == form.confirm_password.value) 
		    {
		      re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w{6,}$/;
		      if(!re.test(form.password.value)) {
			        alert("Error! Password does not meet the requirements! Try Again.");
			        form.password.focus();
			        return false;
			      }
		      if(form.password.value == form.username.value) {
		        alert("Error! Password must be different from Username!");
		        form.password.focus();
		        return false;
		      }
		   
		    } 
		    else {
		      alert("Error: Please check that you've entered and confirmed your password!");
		      form.password.focus();
		      return false;
		    }
		    return true;
		  }	
		</script>
		
    <form class="form-horizontal" role="form" action = "AddTransactionServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">  	
      	<div class="container-fluid">        
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Item</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items = "${productlists}" var = "p">
                	<td><input id="formGroupExampleInput2" placeholder="Price" name = "productID" value = "${p.idproducts}" readonly></td>
					<td>${p.name}</td>
					 <td>${p.price}</td>
						      <tr>
								</c:forEach>
						</tr>
					
						    </tbody>
			</table>
		</div>
	
       			<div class="col-md-8 col-xs-12 col-sm-6 col-lg-8" >
       				
					<input type="text" name="card_holder_name" value="" class="form-control input-lg" placeholder="Cardholder's Name" required /></br>
					
					
					<input type="text" name="card_number" value="" class="form-control input-lg" placeholder="Debit/Credit Card Number" required /></br>
					 
					<div class="form-group">
				        <label class="col-sm-3 control-label" for="expiry-month">Expiration Date:</label>
				        <div class="col-sm-9">
				          <div class="row">
				            <div class="col-xs-3">
				              <select class="form-control col-sm-2" name="expiry-month" id="expiry-month" required>
				                <option>Month</option>
				                <option value="01">Jan (01)</option>
				                <option value="02">Feb (02)</option>
				                <option value="03">Mar (03)</option>
				                <option value="04">Apr (04)</option>
				                <option value="05">May (05)</option>
				                <option value="06">Jun (06)</option>
				                <option value="07">Jul (07)</option>
				                <option value="08">Aug (08)</option>
				                <option value="09">Sep (09)</option>
				                <option value="10">Oct (10)</option>
				                <option value="11">Nov (11)</option>
				                <option value="12">Dec (12)</option>
				              </select>
				            </div>
				            <div class="col-xs-3">
				              <select class="form-control" name="expiry-year">
				              	<option>Year</option><option value="18">2018</option>
				                <option value="19">2019</option>
				                <option value="20">2020</option>
				                <option value="21">2021</option>
				                <option value="22">2022</option>
				                <option value="23">2023</option>
				                <option value="23">2024</option>
				                <option value="23">2025</option>
				              </select>
				            </div>
				          </div>
				        </div>
				      </div>
				      
				    
					<input type ="text" name = "cvv" value="" class="form-control input-lg" placeholder="Security Number" required /></br>
					
					<label class="col-sm-6 control-label" for="cvv">Total: ${total}</label></br></br>
					
					<button type="submit" a href="Home.jsp" class="btn btn-lg btn-info signup-btn">Purchase</button>
				</div>
	</form> 	
  
</div>
</div>
</div>



</body>
</html>