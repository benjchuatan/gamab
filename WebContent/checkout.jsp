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

<div class="row"><%@ include file="navbar.jsp" %></div></br>


<div class="container">
<div class="panel panel-default">
      	<div class="panel-heading">  
      		<h4 >Checkout</h4>
      	</div>
      	<div class="panel-body"> 
    <form class="form-horizontal" role="form" action = "AddTransactionServlet" method = "POST" enctype="multipart/form-data">  	
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
      	
  
    <fieldset>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="card-holder-name">Name on Card:</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" name="card-holder-name" id="card-holder-name" placeholder="Card Holder's Name" required>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="card-number">Card Number:</label>
        <div class="col-sm-9">
        <input type="text" class="form-control" name="card-number" id="card-number" placeholder="Debit/Credit Card Number" required>
        </div>
      </div>
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
              	<option>Year</option>
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
            </div>
          </div>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="cvv">Card CVV:</label>
        <div class="col-sm-3">
        <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code" required>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="cvv">Total: ${total}</label>
        <div class="col-sm-3">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-3 col-sm-9">
        <input type = "submit" a href = "Home.jsp"  button type="button" class="btn btn-info" value="Purchase" ></a></button>
       	</div>
      </div>
    </fieldset>
  </form>
</div>
</div>
</div>



</body>
</html>