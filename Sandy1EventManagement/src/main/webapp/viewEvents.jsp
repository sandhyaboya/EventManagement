<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.Events"%>
<%@page import="model.Enquiry"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Categories</title>
<link rel='stylesheet'
	href='https://eventsstudio.in/wp-content/plugins/elementor/assets/lib/font-awesome/css/all.min.css?ver=3.18.3'
	type='text/css' media='all' />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous" />
<style>
body {
    background-color: #f8f9fa;
    color: #495057;
    font-family: 'Poppins', sans-serif;
}

.container-fluid {
    padding: 0;
}

h1.title {
    font-weight: 700;
    font-size: 2.5rem;
    margin-bottom: 1.5rem;
    color: #007b55;
}

.categories {
    margin: 40px 0;
    padding: 20px 0;
    background-color: #e9f5f2;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.categories .col-md-4 {
    margin-bottom: 20px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.categories .col-md-4:hover {
    transform: translateY(-10px);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

.categories img {
    width: 100%;
    max-width: 250px;
    height: 250px;
    object-fit: cover;
    border-radius: 50%;
    margin-bottom: 15px;
    border: 5px solid #007b55;
}

.categories p {
    font-size: 1.25rem;
    font-weight: 600;
    color: #007b55;
    margin-bottom: 10px;
    text-transform: capitalize;
}

.categories p:hover {
    color: #005a3c;
    text-decoration: underline;
}
</style>
</head>
<body>
	<%@include file="adHeader.jsp"%>
	<div class="container-fluid text-center py-4"
		style="background-color: #f0f8f5; box-shadow: rgba(0, 0, 0, 0.1) 0px 5px 15px;">
		<h1 class="title">Event Categories</h1>
	</div>

	<div class="categories container">
		<div class="row text-center justify-content-center">
			<%
				Enquiry s1 = new Enquiry(session);
				ArrayList<Events> ar = s1.getEventList();
				Iterator<Events> itr = ar.iterator();
				while (itr.hasNext()) {
					Events s = itr.next();
			%>
			<div class="col-md-4 col-sm-6">
				<img src="images/<%=s.getEvent_img()%>" alt="<%=s.getEvent_category()%>">
				<p><%=s.getEvent_category()%></p>
			</div>
			<% } %>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>
