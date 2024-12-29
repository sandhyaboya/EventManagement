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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('https://sunnysworldpune.com/wp-content/uploads/2021/11/Wedding-Function-at-Sunnys-World-Pune-7.jpg');
            
            color: #4a4a4a;
        }
        .container {
            margin-top: 50px;
        }
        h1 {
            font-size: 36px;
            color: #1a2b3c;
        }

        /* Event Category Section */
        .categories {
            margin-top: 40px;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .category-card {
            background-color: #fff;
            border-radius: 30px; /* Pill shape with rounded edges */
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            height: 250px; /* Adjust height for pill shape */
            width: 100%;
            position: relative;
        }

        .category-card:hover {
            transform: translateY(-10px);
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
        }

        .category-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 30px; /* Keep the image rounded to match the pill shape */
        }

        .category-card .card-body {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: #fff;
            padding: 20px;
        }

        .category-card .card-body h5 {
            font-size: 22px;
            font-weight: bold;
        }

        .category-card a {
            display: block;
            font-size: 18px;
            color: #fff;
            text-decoration: none;
            margin-top: 10px;
            background-color: #27ae60;
            padding: 10px;
            border-radius: 20px;
            transition: background-color 0.3s ease;
        }

        .category-card a:hover {
            background-color: #2ecc71;
        }
    </style>
</head>
<body class="container"
    style="background-color: #f0f8ff; font-family: 'Arial', sans-serif; color: #333333;">

    <%@ include file="header.jsp"%>
    <div class="container">
        <div class="text-center mb-4">
            <h1>Event Categories</h1>
        </div>

        <div class="categories">
            <% 
            Enquiry s1 = new Enquiry(session);
            ArrayList<Events> ar = s1.getEventList();
            Iterator<Events> itr = ar.iterator();
            while (itr.hasNext()) {
                Events s = itr.next();
            %>
            <div class="category-card">
                <img src="<%= s.getEvent_img() %>" alt="<%= s.getEvent_category() %>">
                <div class="card-body">
                    <h5><%= s.getEvent_category() %></h5>
                    <a href="events.jsp?event_category=<%= s.getEvent_category() %>">View Details</a>
                </div>
            </div>
            <% } %>
        </div>
    </div>
    <%@include file="footer.jsp"%>
</body>
</html>
