<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.User"%>
<%@page import="model.Enquiry"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Client Management</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style type="text/css">
.container {
	max-width: 1400px;
	margin: auto;
	padding: 20px;
}

.table-responsive {
	margin: 20px 0;
}

.table-wrapper {
	background: #ffffff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.table-title {
	padding: 15px 20px;
	background: #4b79a1;
	color: #ffffff;
	border-radius: 5px 5px 0 0;
}

.table-title h2 {
	margin: 0;
	font-size: 22px;
}

table.table {
	width: 100%;
	margin: 10px 0;
}

table.table th, table.table td {
	padding: 12px;
	vertical-align: middle;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

table.table th {
	background-color: #f4f6f9;
	color: #333333;
	font-weight: 600;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #f9fbfd;
}

table.table-striped tbody tr:hover {
	background-color: #f1f3f7;
}

table.table td:last-child {
	text-align: center;
}

table.table td .btn {
	padding: 5px 10px;
	border-radius: 3px;
	text-decoration: none;
	font-size: 14px;
	color: #ffffff;
}

table.table td .btn-danger {
	background-color: #ff4b5c;
	border: none;
}

table.table td .btn-danger:hover {
	background-color: #e43e4a;
}

.container-fluid {
	background-color: #4b79a1;
	color: white;
	padding: 15px;
	border-radius: 5px;
	margin-bottom: 20px;
}

.header {
	margin-bottom: 20px;
}

footer {
	margin-top: 30px;
	background-color: #333333;
	color: white;
	padding: 15px 20px;
	text-align: center;
	border-radius: 5px;
}
</style>
</head>
<body style="background-color: #f5f7fa; font-family: Arial, sans-serif;">
	<div class="header">
		<div class="container">
			<%@include file="adHeader.jsp"%>
		</div>
	</div>
	<%
	if (session.getAttribute("uname") != null) {
	%>
	<div class="container">
		<div class="container-fluid">
			<h3>Our <b>Clients</b></h3>
		</div>
		<div class="table-wrapper">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Registered Date</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<%
					Enquiry s1 = new Enquiry(session);
					ArrayList<User> ar = s1.getClients();
					Iterator<User> itr = ar.iterator();
					while (itr.hasNext()) {
						User s = itr.next();
					%>
					<tr>
						<td><%=s.getId()%></td>
						<td><%=s.getName()%></td>
						<td><%=s.getEmail()%></td>
						<td><%=s.getDate()%></td>
						<td>
							<form action="deleteuser" method="POST">
								<input type="hidden" name="userid" value="<%=s.getId()%>" />
								<button type="submit" class="btn btn-danger">Delete</button>
							</form>
						</td>
					</tr>
					<%}%>
				</tbody>
			</table>
		</div>
	</div>
	<%}%>
	<footer>
		<%@include file="footer.jsp"%>
	</footer>
</body>
</html>
