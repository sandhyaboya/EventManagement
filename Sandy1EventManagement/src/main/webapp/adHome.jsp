<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home - Sk Events</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
        }
        nav {
            background-color: #343a40;
            padding: 10px 20px;
        }
        nav a {
            color: #ffffff;
            text-decoration: none;
            font-size: 16px;
            margin-right: 20px;
            transition: color 0.3s;
        }
        nav a:hover {
            color: #ffc107;
        }
        .banner {
            background: url('https://wallpapercave.com/wp/wp7488275.jpg') no-repeat center center/cover;
            height: 80vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .banner h1 {
            color: #fff;
            font-size: 60px;
            font-weight: bold;
            text-shadow: 2px 2px 5px #000;
        }
        .banner p {
            color: #f8f9fa;
            font-size: 18px;
            text-shadow: 1px 1px 3px #000;
        }
        .card {
            border: none;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }
        footer {
            background-color: #343a40;
            color: #ffffff;
            text-align: center;
            padding: 15px 0;
        }
        .footer a {
            color: #ffc107;
            text-decoration: none;
        }
        .footer a:hover {
            color: #ffffff;
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="d-flex justify-content-between align-items-center">
        <a href="adHome.jsp" class="logo text-uppercase fw-bold">Sk Events</a>
        <div>
        	<a href="adHome.jsp">Home</a>
            <a href="viewEvents.jsp">Events</a>
            <a href="viewClients.jsp">Clients</a>
            <a href="bookedEvents.jsp">Booked</a>
            <a href="addDelEvents.jsp">Add/Delete</a>
            <a href="enquiryList.jsp">Enquiry</a>
            <% if (session.getAttribute("uname") != null) { %>
                <a href="register?logout=yes">Logout</a>
                <span class="text-light ms-3"><i class="fa fa-user-circle" aria-hidden="true"></i> <%=session.getAttribute("uname")%></span>
            <% } %>
        </div>
    </nav>

    <!-- Banner -->
    <section class="banner">
        <div>
            <h1>Welcome, Admin</h1>
            <p>Manage events, clients, and feedback with ease.</p>
        </div>
    </section>

    <!-- Features Section -->
    <div class="container mt-5">
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card text-center bg-light p-4">
                    <h5 class="card-title">Manage Events</h5>
                    <p class="card-text">Add, update, or delete events seamlessly.</p>
                    <a href="addDelEvent.jsp" class="btn btn-primary">Go to Events</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center bg-light p-4">
                    <h5 class="card-title">View Clients</h5>
                    <p class="card-text">Track all registered clients.</p>
                    <a href="ViewClients.jsp" class="btn btn-primary">Go to Clients</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center bg-light p-4">
                    <h5 class="card-title">Feedback</h5>
                    <p class="card-text">View feedback to improve services.</p>
                    <a href="viewReview.jsp" class="btn btn-primary">Go to Feedback</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>@ 2024 Sandy Events | <a href="contact.jsp">Contact Us</a></p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
