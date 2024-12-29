<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Sandy's Wedding Planning</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        /* Header Section */
        header {
            background: linear-gradient(45deg, #c94d4d, #f27171);
            color: white;
            text-align: center;
            padding: 50px 20px;
        }

        header h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 10px;
        }

        header p {
            font-size: 1.2rem;
            margin: 0;
        }

        /* Contact Form Section */
        .contact-section {
            padding: 50px 20px;
        }

        .contact-form {
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        .contact-form h2 {
            margin-bottom: 20px;
        }

        .contact-form input, 
        .contact-form textarea {
            border: 1px solid #ddd;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .contact-form button {
            background-color: #c94d4d;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .contact-form button:hover {
            background-color: #a53c3c;
        }

        /* Map Section */
        .map-section iframe {
            border: 0;
            width: 100%;
            height: 400px;
            border-radius: 8px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        /* Extra Activities Section */
        .extra-activities {
            padding: 50px 20px;
            background: #f27171;
            color: white;
            text-align: center;
        }

        .extra-activities h2 {
            margin-bottom: 20px;
        }

        .extra-activities .activity-card {
            background: white;
            color: #333;
            padding: 20px;
            margin: 10px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .extra-activities .activity-card:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>

    <!-- Header Section -->
    <header>
        <h1>Contact Us</h1>
        <p>We are here to make your dream Event come true! Get in touch with us.</p>
    </header>

    <!-- Contact Form Section -->
    <section class="contact-section container">
        <div class="row">
            <!-- Contact Form -->
            <div id="form" class="w-50 text-start">
			<%
			if (request.getAttribute("status") != null) {
			%>
			<div id="msg">
				<%=request.getAttribute("status")%></div>
			<%
			}
			%>
			<form method="POST" class="form-card" id="signup" action="register">
				<div class="row justify-content-between text-left">
					<div class="form-group col-sm-6 flex-column d-flex">
						<label class="form-control-label py-2">Name<span
							class="text-danger"> *</span>
						</label> <input type="text" name="name" class="px-3" required="required"
							style="height: 40px; background-color: #f1f8e9; border-color: #e0e0e0; border-style: solid;"
							placeholder="Your Name">
					</div>
					<div class="form-group col-sm-6 flex-column d-flex">
						<label class="form-control-label py-2">Email<span
							class="text-danger"> *</span></label> <input type="email" name="email"
							class="px-3" required="required"
							style="height: 40px; background-color: #f1f8e9; border-color: #e0e0e0; border-style: solid;"
							id="lname" placeholder="example@email.com">
					</div>
				</div>
				<div class="row justify-content-between text-left">
					<div class="form-group col-sm-12 flex-column d-flex">
						<label class="form-control-label py-2">Contact Number<span
							class="text-danger"> *</span></label> <input type="number" name="phone"
							class="px-3" required="required"
							style="height: 40px; background-color: #f1f8e9; border-color: #e0e0e0; border-style: solid;"
							id="email" placeholder="Your Contact Number">
					</div>
					<div class="form-group col-sm-12 flex-column d-flex">
						<label class="form-control-label py-2">Subject<span
							class="text-danger"> *</span></label> <input type="text" name="sub"
							required="required" class="px-3"
							style="height: 40px; background-color: #f1f8e9; border-color: #e0e0e0; border-style: solid;"
							id="mob" placeholder="Your Message Subject">
					</div>
				</div>
				<div class="row justify-content-between text-left">
					<div class="form-group col-sm-12 flex-column d-flex">
						<label class="form-control-label py-2">Your Message<span
							class="text-danger"> *</span></label>
						<textarea type="text" name="msg" required="required" class="px-3"
							style="height: 180px; background-color: #f5f5f5; border: none;"
							id="job" placeholder="Your Message Here"></textarea>
					</div>
				</div>
				<div class="row justify-content-start m-3">
					<div class="form-group col-sm-6">
						<input type="submit" name="enq" value="Submit"
							style="width: 150px; height: 50px; box-shadow: rgba(0, 0, 0, 0.17) 0px -23px 25px 0px inset, rgba(0, 0, 0, 0.15) 0px -36px 30px 0px inset, rgba(0, 0, 0, 0.1) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;">
					</div>
				</div>
			</form>
		</div>

            <!-- Location Map -->
            <div class="col-md-6">
                <div class="map-section">
                    <iframe 
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.8354345093345!2d-122.41941548468149!3d37.77492927975854!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808581530f38b259%3A0x8f5b52fdd67f35f9!2sSan%20Francisco%2C%20CA!5e0!3m2!1sen!2sus!4v1697390140324!5m2!1sen!2sus" 
                        allowfullscreen="" 
                        loading="lazy"></iframe>
                </div>
            </div>
        </div>
    </section>

    <!-- Extra Activities Section -->
    <section class="extra-activities">
        <div class="container">
            <h2>Explore More</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="activity-card">
                        <h5>Testimonials</h5>
                        <p>Hear what our clients say about us.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="activity-card">
                        <h5>FAQ</h5>
                        <p>Got questions? We have answers!</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="activity-card">
                        <h5>Follow Us</h5>
                        <p>Stay connected on social media.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
		<%@ include file="footer.jsp"%>
	
</body>
</html>
