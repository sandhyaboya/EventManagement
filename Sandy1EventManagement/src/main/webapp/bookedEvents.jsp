<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.Dproduct"%>
<%@page import="model.Enquiry"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Events</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
    background-color: #f5f5f5;
    font-family: 'Arial', sans-serif;
    color: #333;
    background-image: url('https://www.transparenttextures.com/patterns/white-wall.png');
}

.header .container {
    background: linear-gradient(to right, #6a11cb, #2575fc);
    color: white;
    padding: 20px;
    border-radius: 8px;
    margin-bottom: 20px;
}

.table-wrapper {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.table-title {
    background: #35475e;
    color: #fff;
    padding: 16px;
    border-radius: 8px 8px 0 0;
}

.table-title h3 {
    font-size: 24px;
    margin: 0;
}

table.table {
    margin-top: 20px;
    border-collapse: separate;
    border-spacing: 0 15px;
}

table.table th, table.table td {
    border: none;
    padding: 15px;
    text-align: center;
    vertical-align: middle;
}

table.table thead th {
    background: #35475e;
    color: white;
    border-radius: 6px;
}

table.table tbody tr {
    background: #f9f9f9;
    border-radius: 6px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

table.table tbody tr:hover {
    background: #f1f1f1;
}

table.table td a {
    font-weight: bold;
    text-decoration: none;
    color: #35475e;
}

table.table td a:hover {
    color: #2575fc;
}

table.table td .btn-success {
    background-color: #28a745;
    border: none;
    color: white;
    padding: 10px 15px;
    border-radius: 4px;
    transition: background 0.3s;
}

table.table td .btn-success:hover {
    background-color: #218838;
}

table.table td .btn-danger {
    background-color: #dc3545;
    border: none;
    color: white;
    padding: 10px 15px;
    border-radius: 4px;
    transition: background 0.3s;
}

table.table td .btn-danger:hover {
    background-color: #c82333;
}
</style>
</head>
<body class="container">
    <div class="header">
        <div class="container">
            <%@include file="adHeader.jsp"%>
        </div>
    </div>
    <% if (session.getAttribute("uname") != null) { %>
    <div class="container-xl">
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <h3>Manage <b>Events</b></h3>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Cost</th>
                            <th>Email</th>
                            <th>Booked Date</th>
                            <th>Event Date</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        Enquiry s1 = new Enquiry(session);
                        ArrayList<Dproduct> ar = s1.geteventstatusAdmin();
                        for (Dproduct s : ar) {
                        %>
                        <tr>
                            <td><img src="<%=s.getP_image()%>" width="100px" height="100px"></td>
                            <td><%=s.getP_name()%></td>
                            <td><%=s.getP_cost()%></td>
                            <td><%=s.getEmail()%></td>
                            <td><%=s.getDate()%></td>
                            <td><%=s.getEventdate()%></td>
                            <td>
                                <% if (s.getStatus().equals("pending")) { %>
                                <form action="addtocart" method="post">
                                    <input type="hidden" name="event_id" value="<%=s.getP_id()%>" />
                                    <button type="submit" class="btn btn-success" name="acceptevent">Accept</button>
                                    <button type="submit" class="btn btn-danger" name="admincancelevent">Cancel</button>
                                </form>
                                <% } else if (s.getStatus().equals("booked")) { %>
                                <span style="color: green; font-weight: bold;"><%=s.getStatus()%></span>
                                <% } else if (s.getStatus().equals("cancelled")) { %>
                                <span style="color: red; font-weight: bold;"><%=s.getStatus()%></span>
                                <% } %>
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <% } %>
    <%@include file="footer.jsp"%>
</body>
</html>
