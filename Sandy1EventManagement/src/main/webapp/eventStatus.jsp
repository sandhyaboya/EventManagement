<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="model.Enquiry"%>
<%@page import="model.Dproduct"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Events</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
    src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
    src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<style>
body {
    font-family: 'Roboto', sans-serif;
    background-color: #f9f9f9;
    color: #333;
}

.container-xl {
    margin-top: 20px;
}

.table-wrapper {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.table-title {
    background: #4CAF50;
    color: white;
    padding: 15px;
    border-radius: 8px 8px 0 0;
    margin-bottom: 20px;
}

.table-title h2 {
    margin: 0;
    font-size: 24px;
}

.table-responsive {
    margin: 20px 0;
}

table.table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0 10px;
}

table.table th, table.table td {
    border: none;
    padding: 15px;
    vertical-align: middle;
}

table.table th {
    background: #f4f4f4;
    text-align: left;
}

table.table td {
    background: #fff;
    border-radius: 8px;
}

table.table-striped tbody tr:hover td {
    background: #e9f5e9;
}

button.btn {
    border: none;
    padding: 8px 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease;
}

button.btn-danger {
    background-color: #f44336;
    color: white;
}

button.btn-danger:hover {
    background-color: #d32f2f;
}

a {
    color: #4CAF50;
    text-decoration: none;
    font-weight: bold;
}

a:hover {
    text-decoration: underline;
}
#FFD700
</style>
</head>
<body>
    <form action='register' method='POST' id="bookevent">
        <div class="header">
            <div class="container">
                <%@include file="header.jsp"%>
            </div>
        </div>
        <% if (session.getAttribute("uname") != null) { %>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <h2>Manage <b>Events</b></h2>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Image</th>
                                <th>Name</th>
                                <th>Cost</th>
                                <th>Email</th>
                                <th>Booked Date</th>
                                <th>Event Date</th>
                                <th>Status</th>
                                <th>Receipt</th>
                                <th>Ratings</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                            Enquiry s1 = new Enquiry(session);
                            ArrayList<Dproduct> ar = s1.geteventstatus();
                            Iterator<Dproduct> itr = ar.iterator();
                            while (itr.hasNext()) {
                                Dproduct s = itr.next();
                            %>
                            <tr>
                                <td><img src="<%=s.getP_image()%>" width="100" height="100" alt="Event Image"></td>
                                <td><%=s.getP_name()%></td>
                                <td><%=s.getP_cost()%></td>
                                <td><%=s.getEmail()%></td>
                                <td><%=s.getDate()%></td>
                                <td><%=s.getEventdate()%></td>
                                <% if (s.getStatus().equals("pending")) { %>
                                <td>
                                    <form action="addtocart" method="post">
                                        <input type="hidden" name="event_id" value="<%=s.getP_id()%>" />
                                        <button type="submit" class="btn btn-danger" name="cancelevent">Cancel</button>
                                    </form>
                                </td>
                                <% } else if (s.getStatus().equals("booked")) { %>
                                <td style="color: green;">Booked</td>
                                <td><a href="pdf.jsp" style="color: aqua;">Download</a></td>
								<td><a href="review.jsp" style="color: yellow;">Review</a></td>

                                <% } else if (s.getStatus().equals("cancelled")) { %>
                                <td style="color: red;">Cancelled</td>
                                <% } %>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <% } %>
    </form>
    <%@include file="footer.jsp"%>
</body>
</html>
