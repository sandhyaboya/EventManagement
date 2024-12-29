<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.Ratings"%>
<%@page import="model.Enquiry"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Feedback</title>
<style type="text/css">
.container {
	max-width: 1400px;
	margin: auto;
	padding: 20px;
	font-family: Arial, sans-serif;
}

.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	background: #f9f9f9;
	padding: 20px;
	border-radius: 8px;
	min-width: 1000px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.table-title {
	padding: 15px 20px;
	background: black;
	color: #fff;
	border-radius: 8px 8px 0 0;
}

.table-title h2 {
	margin: 0;
	font-size: 22px;
}

table.table {
	width: 100%;
	border-collapse: collapse;
}

.table th, .table td {
	padding: 15px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

.table th {
	background: #003f88;
	color: #fff;
	font-weight: bold;
}

.table-striped tbody tr:nth-of-type(odd) {
	background: #f2f6fc;
}

.table-striped tbody tr:nth-of-type(even) {
	background: #ffffff;
}

.table-striped tbody tr:hover {
	background: #e3eaf6;
}

.table td a {
	color: #003f88;
	text-decoration: none;
	font-weight: bold;
}

.table td a:hover {
	color: #0056b3;
}

body {
	background-color: #00FFFF;
	color: #333;
}

.header h3 {
	font-size: 24px;
	color: white;
	margin: 0;
	padding: 15px;
}

.footer {
	background: grey;
	color: white;
	text-align: center;
	padding: 10px;
	margin-top: 20px;
	border-radius: 8px;
}
</style>
</head>
<body>
			<%@include file="adHeader.jsp"%>
			<br/>

	<div class="header" style="background: orange;">
		<div class="container">
			<h3>Feedback Management</h3>
		</div>
	</div>
	<%
	if (session.getAttribute("uname") != null) {
	%>
	<div class="container">
		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<h2>Customer <b>Feedback</b></h2>
				</div>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Ratings (out of 5)</th>
							<th>Message</th>
							<th>Date</th>
						</tr>
					</thead>
					<tbody>
						<%
						Enquiry s1 = new Enquiry(session);
						ArrayList<Ratings> ar = s1.getFeedbackList();
						Iterator<Ratings> itr = ar.iterator();
						while (itr.hasNext()) {
							Ratings s = itr.next();
						%>
						<tr>
							<td><%=s.getRid()%></td>
							<td><%=s.getUname()%></td>
							<td><%=s.getEmail()%></td>
							<td><%=s.getRating()%></td>
							<td><%=s.getMessage()%></td>
							<td><%=s.getDate()%></td>
						</tr>
						<%}%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%}%>
	<div class="footer">
		<p>&copy; 2024 SandyEvents. All Rights Reserved.</p>
	</div>
</body>
</html>
