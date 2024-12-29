<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #ffffff, #f8f9fa);
            color: #333;
        }

        .hero {
            background: #1b5e20;
            color: white;
            text-align: center;
            padding: 50px 20px;
        }

        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 10px;
            font-weight: 700;
        }

        .hero p {
            font-size: 1.2rem;
            margin: 0 auto 20px;
            max-width: 800px;
        }

        .featurette {
            padding: 40px 0;
        }

        .featurette h4 {
            color: #1b5e20;
            font-weight: 600;
        }

        .featurette p {
            line-height: 1.6;
        }

        .featurette img {
            border-radius: 20px;
            transition: transform 0.3s ease-in-out;
        }

        .featurette img:hover {
            transform: scale(1.05);
        }

        .section-title {
            text-align: center;
            font-weight: 700;
            color: #1b5e20;
            margin-bottom: 40px;
        }

        .testimonials {
            background: #f4f4f4;
            padding: 50px 20px;
        }

        .testimonials img {
            border-radius: 50%;
            width: 100px;
            margin-bottom: 10px;
        }

        .testimonials p {
            font-style: italic;
        }

        .cta-section {
            text-align: center;
            padding: 50px 20px;
            background: #1b5e20;
            color: white;
        }

        .cta-section h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .cta-section p {
            font-size: 1.1rem;
            margin-bottom: 30px;
        }

        .cta-section .btn {
            font-size: 1.2rem;
            padding: 10px 30px;
            background: #fff;
            color: #1b5e20;
            border: 2px solid white;
            transition: 0.3s ease;
        }

        .cta-section .btn:hover {
            background: #e8f5e9;
            color: #1b5e20;
            border-color: #1b5e20;
        }

        footer {
            background: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        footer p {
            margin: 0;
            font-size: 0.9rem;
        }
    </style>
</head>

<body>
 <%@ include file="header.jsp"%>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Our Services</h1>
        <p>"Be a Guest at Your Own Wedding"- Let us bring your wedding to life with charm and finesse.</p>
    </div>

    <!-- Wedding Services -->
    <div class="container">
        <h2 class="section-title">Wedding Services</h2>
        <div class="row featurette">
            <div class="col-md-6">
                <h4>Wedding Planning Services</h4>
                <p>We offer bespoke wedding planning services, handling every detail from conception to execution,
                    ensuring your event is flawless and unforgettable.</p>
            </div>
            <div class="col-md-6">
                <img src="https://www.unicornweddingplanners.com/wp-content/uploads/2024/03/bangalore-wedding-planner-570x570.jpg"
                    class="img-fluid" alt="Wedding Planning">
            </div>
        </div>
        <div class="row featurette">
            <div class="col-md-6 order-md-2">
                <h4>Destination & Venue Selection</h4>
                <p>We help you select the perfect venue, whether it's a beach resort, castle, or luxury city location,
                    tailored to your dreams.</p>
            </div>
            <div class="col-md-6 order-md-1">
                <img src="https://qph.cf2.quoracdn.net/main-qimg-b48e17b4cfdf289ce0381695c1623c3e-lq" class="img-fluid"
                    alt="Venue Selection">
            </div>
        </div>
        <div class="row featurette">
            <div class="col-md-6">
                <h4>Birthday Celebrations</h4>
                <p>We offer bespoke wedding planning services, handling every detail from conception to execution,
                    ensuring your event is flawless and unforgettable.</p>
            </div>
            <div class="col-md-6">
                <img src="https://th.bing.com/th/id/OIP.5YYDA2Ei-CeCYR9LtsyA9gHaEK?rs=1&pid=ImgDetMain"
                    class="img-fluid" alt="Wedding Planning">
            </div>
        </div>
         <div class="row featurette">
            <div class="col-md-6 order-md-2">
                <h4>Corporate Meetings</h4>
                <p>We help you select the perfect venue, whether it's a beach resort, castle, or luxury city location,
                    tailored to your dreams.</p>
            </div>
            <div class="col-md-6 order-md-1">
                <img src="https://goldmagicevents.com/admin/images/services/Image/corporate-event-management.jpg" class="img-fluid"
                    alt="Venue Selection">
            </div>
        </div>
        
    </div>

    <!-- Testimonials -->
    <div class="testimonials text-center">
        <h2>Client Testimonials</h2>
        <div class="row mt-4">
            <div class="col-md-4">
                <img
                    src="https://eventsstudio.in/wp-content/uploads/elementor/thumbs/a-q8kje3brqf1ke63n8hagq8rhwokorhnkc1wai903xk.jpg"
                    alt="Client">
                <p>"Exceptional attention to detail and professionalism."</p>
                <footer>- Aniket Singh</footer>
            </div>
            <div class="col-md-4">
                <img
                    src="https://eventsstudio.in/wp-content/uploads/elementor/thumbs/WhatsApp-Image-2023-06-27-at-13.15.02-q8kje65aax5fczzjs0icfq1vou6sekyrcfuqy2vxew.jpg"
                    alt="Client">
                <p>"Efficient and reliable service, exceeding our expectations."</p>
                <footer>- Richa Rajput</footer>
            </div>
            <div class="col-md-4">
                <img
                    src="https://eventsstudio.in/wp-content/uploads/elementor/thumbs/download-4-q8kkcz45d2sn97fjjk419fvbjgn2f44ygpgznxa50o.jpg"
                    alt="Client">
                <p>"Professionalism at its best. Outstanding results!"</p>
                <footer>- Archana Sharma</footer>
            </div>
        </div>
    </div>

    <!-- Call to Action -->
    <div class="cta-section">
        <h1>Book Your Event Today</h1>
        <p>Let us create memorable experiences tailored to your vision. Reach out now!</p>
        <a href="eventCategories.jsp" class="btn">Book Now</a>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Events Studio. All Rights Reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>