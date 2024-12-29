<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="model.Dproduct"%>
<%@page import="model.Enquiry"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<style>
body {
        background-color: #f8f9fa;
        font-family: 'Arial', sans-serif;
    }
    .jumbotron {
        background-color: #00FFFF;
        border-radius: 10px;
        padding: 30px;
        color: white;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        max-width: 600px;
        margin-top: 50px;
    }
    .jumbotron h2 {
        color: #8B4513;
    }
    label {
        font-weight: bold;
        color: #333;
    }
    .form-control {
        border-radius: 5px;
        box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
    }
    .btn-primary {
        background-color: #28a745;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
    }
    .btn-primary:hover {
        background-color: #218838;
    }
    .errmsg {
        color: #28a745;
        font-weight: bold;
        margin-top: 20px;
    }
    .error {
        color: red;
    }
</style>
<script>
	// jQuery.validator.addMethod( name, method [, message ] )
	//
	// value---> "current value of the validated element".
	//elememt---> " element to be validated ".
	jQuery.validator
			.addMethod(
					"checkemail",
					function(value, element) {
						return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
								.test(value)
								|| /^[0-9]{10}$/.test(value);
					});
	jQuery(document).ready(function($) {
		$("#bookevent").validate({
			rules : {
				name : {
					required : true
				},
				email : {
					required : true,
					checkemail : true
				},
				pno : {
					required : true,
					minlength : 10,
					maxlength : 10
				},
				address : {
					required : true
				},
				edate : {
					required : true,
				}
			},
			messages : {
				name : {
					required : "Please enter the name."
				},
				email : {
					required : "Please enter the email.",
					email : "Please enter valid email id"
				},
				pno : {
					required : "Please enter the number.",
					minlength : "Please enter the 10 digit number .",
					maxlength : "more than 10 digits."
				},
				address : {
					required : "Please enter the address.",
				},
				edate : {
					required : "Please select the date.",
				}
			}
		});
	});
</script>
</head>
<body class="container"
	style="background-color: #f1f8e9; font-style: inherit; color: rgb(99, 118, 84);">
	<%@include file="header.jsp"%>
	<center>
		<%
		if (request.getAttribute("status") != null) {
		%>
		<h1 class="errmsg">
			<%=request.getAttribute("status")%></h1>
		<%
		}
		%>
		<%
		if (session.getAttribute("uname") != null) {
			Enquiry en = new Enquiry(session);
			Dproduct s = en.getEventFormInfo(request.getParameter("event_id"));
		%>
		<font color="#648256" size="5">
			<h2>Book an Event</h2>
		</font>
		<form action='addtocart' method='POST' id="bookevent">
			<div class="jumbotron">
				<div>
					<label>Name</label> <input type="text" class="form-control"
						name="name" value="<%=session.getAttribute("uname")%>">
				</div>
				<div>
					<label>Email</label> <input type="email" class="form-control"
						name="email" value="<%=session.getAttribute("email")%>">
				</div>
				<div>
					<label>Address</label> <input type="text" class="form-control"
						name="address" value="">
				</div>
				<div>
					<label>Event Name</label> <input type="text" class="form-control"
						name="ename" value="<%=s.getP_name()%>" readonly>
				</div>
				<div>
					<label>Event cost</label> <input type="number"
						class="form-control" name="ecost" value="<%=s.getP_cost()%>"
						readonly>
				</div>
				<div>
					<label>Date of Event</label> <input type="date" id="myDate"
						class="form-control" name="edate" value=""
						onfocus="disablePastDates()">
				</div>
				<input type="hidden" name="event_id"
					value="<%=request.getParameter("event_id")%>"></br>
				<button type="submit" class="btn btn-primary" name="bookevent">BookNow</button>
			</div>
		</form>
		<%
		}
		%>
	</center>
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
		function disablePastDates() {
			var today = new Date();
			var dd = String(today.getDate()).padStart(2, '0');
			var mm = String(today.getMonth() + 1).padStart(2, '0');
			var yyyy = today.getFullYear();
			today = yyyy + '-' + mm + '-' + dd;
			document.getElementById("myDate").setAttribute("min", today);
		}
	</script>
</body>
</html>