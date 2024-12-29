<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="model.Events"%>
<%@page import="model.Enquiry"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Event Management - Add/Delete</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome Icons -->
    <link href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://www.visionvivaah.com/blog/wp-content/uploads/2019/10/Best-Event-Management-Company-In-Delhi.jpg') no-repeat center center/cover;
            
        }

        .container {
            margin-top: 50px;
        }

        .card {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .card-header {
            background: linear-gradient(135deg, #007bff, #00bfff);
            color: white;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            padding: 20px;
            border-radius: 10px 10px 0 0;
        }

        .form-control {
            border-radius: 25px;
            padding: 15px;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            border-radius: 25px;
            padding: 10px 30px;
            transition: all 0.3s ease-in-out;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        .btn-danger {
            background-color: #dc3545;
            border: none;
            border-radius: 25px;
            padding: 10px 30px;
            transition: all 0.3s ease-in-out;
        }

        .btn-danger:hover {
            background-color: #b02a37;
            transform: translateY(-2px);
        }

        .tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .tab-btn {
            background: none;
            border: none;
            font-size: 18px;
            margin: 0 20px;
            color: #007bff;
            transition: color 0.3s ease-in-out;
            cursor: pointer;
        }

        .tab-btn.active {
            color: #0056b3;
            font-weight: bold;
            border-bottom: 2px solid #007bff;
        }

        .tab-btn:hover {
            color: #0056b3;
        }

        .form-container {
            display: none;
        }

        .form-container.active {
            display: block;
        }
    </style>
    <script>
        // Tab switching functionality
        document.addEventListener('DOMContentLoaded', function () {
            const tabButtons = document.querySelectorAll('.tab-btn');
            const forms = document.querySelectorAll('.form-container');

            tabButtons.forEach((btn, index) => {
                btn.addEventListener('click', () => {
                    tabButtons.forEach(b => b.classList.remove('active'));
                    forms.forEach(f => f.classList.remove('active'));

                    btn.classList.add('active');
                    forms[index].classList.add('active');
                });
            });

            // Set the first tab as active on page load
            tabButtons[0].classList.add('active');
            forms[0].classList.add('active');
        });
    </script>
</head>
<body>
			<%@include file="adHeader.jsp"%>

    <div class="container">
        <div class="card mx-auto" style="max-width: 600px;">
            <div class="card-header">
                Event Management
            </div>
            <div class="card-body">
                <!-- Tabs for Add/Delete -->
                <div class="tabs">
                    <button class="tab-btn active">Add Event</button>
                    <button class="tab-btn">Delete Event</button>
                </div>

                <!-- Add Event Form -->
                <div class="form-container active">
                    <form method="POST" action="register">
                        <% if (request.getAttribute("status") != null) { %>
                        <div class="alert alert-success">
                            <%= request.getAttribute("status") %>
                        </div>
                        <% } %>

                        <div class="mb-3">
                            <label for="image" class="form-label">Event Image Path</label>
                            <input type="text" class="form-control" id="image" name="image" placeholder="Enter Image Path" required>
                        </div>

                        <div class="mb-3">
                            <label for="name" class="form-label">Event Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Event Name" required>
                        </div>

                        <div class="mb-3">
                            <label for="cost" class="form-label">Event Cost</label>
                            <input type="number" class="form-control" id="cost" name="cost" placeholder="Enter Event Cost" required>
                        </div>

                        <div class="mb-3">
                            <label for="details" class="form-label">Event Details</label>
                            <textarea class="form-control" id="details" name="details" rows="3" placeholder="Enter Event Details" required></textarea>
                        </div>

                        <div class="mb-3">
                            <label for="category" class="form-label">Event Category</label>
                            <input type="text" class="form-control" id="category" name="category" placeholder="Enter Event Category" required>
                        </div>

                        <button type="submit" class="btn btn-primary w-100" name="addevent">Add Event</button>
                    </form>
                </div>

                <!-- Delete Event Form -->
                <div class="form-container">
                    <form method="POST" action="register">
                        <div class="mb-3">
                            <label for="ecategory" class="form-label">Event Category</label>
                            <input type="text" class="form-control" id="ecategory" name="ecategory" placeholder="Enter Event Category to Delete" required>
                        </div>

                        <button type="submit" class="btn btn-danger w-100" name="delevent">Delete Event</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

