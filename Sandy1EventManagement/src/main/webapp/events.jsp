<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="model.Dproduct"%>
<%@page import="model.Enquiry"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Event Details</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            padding: 40px;
        }

        .header {
            background-color: black;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        .container1 {
            margin-top: 100px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 25px;
        }

        .row {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
        }

        .col-md-5 {
            flex: 0.5;
            padding: 10px;
        }

        .col-md-7 {
            flex: 2;
            padding: 20px;
        }

        .d-block {
            max-width: 100%;
            height: auto;
            border-radius: 15px;
            transition: transform 0.3s;
        }

        .d-block:hover {
            transform: scale(1.05);
        }

        h2 {
            font-size: 24px;
            color: #2e3d49;
            font-weight: 600;
        }

        .price {
            color: #FE980F;
            font-size: 28px;
            font-weight: bold;
            margin-top: 20px;
        }

        p {
            font-size: 16px;
            line-height: 1.6;
            color: #666;
        }

        .but {
            display: inline-block;
            background-color: #FE980F;
            color: #fff;
            padding: 12px 40px;
            font-size: 16px;
            text-decoration: none;
            border-radius: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s;
        }

        .but:hover {
            background-color: #e17b00;
        }

        .but:focus {
            outline: none;
        }
    </style>
</head>
<body>
<br/>
<br/>
    <div class="header">
        <div class="container">
            <%@include file="header.jsp"%>
            <%
                Enquiry en = new Enquiry(session);
                ArrayList<Dproduct> al = en.get_eventinfo(request.getParameter("event_category"));
                Iterator<Dproduct> it = al.iterator();
                while (it.hasNext()) {
                    Dproduct s = it.next();
            %>
            <div class="container1">
                <div class="row">
                    <div class="col-md-5">
                        <img src="<%=s.getP_image()%>" class="d-block" alt="<%=s.getP_name()%>">
                    </div>
                    <div class="col-md-7">
                        <h2><%=s.getP_name()%></h2>
                        <p class="price">&#8377 <%=s.getP_cost()%></p>
                        <p><%=s.getP_details()%></p>
                        <%
                            if (session.getAttribute("uname") != null) {
                        %>
                        <a href="eventBooking.jsp?event_id=<%=s.getP_id()%>" class="but">Book Now</a>
                        <%
                            } else {
                                session.setAttribute("logoutredirect", "events.jsp?event_category=" + request.getParameter("event_category"));
                        %>
                        <a href="login.jsp" class="but">Login to Book</a>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
