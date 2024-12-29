<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.header-container {
  background-color: #00FFFF;
  color: black;
  padding: 20px 0;
}

.contact-info i {
  margin-right: 10px;
}

.contact-info a {
  color: brown;
  text-decoration: underline;
}

.office-image {
  height: 300px;
  width: 300px;
  margin-top: -15px;
}

@media (max-width: 768px) {
  .office-image {
    height: auto;
    width: 100%;
  }
}
 .custom-right-align {
    text-align: right;
  }

</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel='stylesheet' id='font-awesome-5-all-css'
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
</head>
<body class="container">
  <div class="container-fluid header-container">
    <div class="row">
      <div class="col-4 mt-5 contact-info">
        <p>
          <i class="fa-regular fa-envelope"></i>
          <span>Our Email: <a href="mailto:sandyevents@gmail.com">sandyevents@gmail.com</a></span>
        </p>
        <p>
          <i class="fa-solid fa-phone"></i>
          <span>Our Phone Number: <a href="tel:+916303780590">+91 6303780590</a></span>
        </p>
        <p>
          <i class="fa-solid fa-location-dot"></i>
          <span>Office Address:</span>
          <br>
          Plot No. 765, 8th Cross Road,<br>
          M.R.C.R Extension, Govindaraja Nagar,<br>
          Bangalore-560040 (Near Hosahalli metro station)
        </p>
      </div>
      <div class="col-4 custom-right-align">
        <img class="office-image" src="images/logo.png" alt="Office Image" class="col-8"/>
      </div>
    </div>
  </div>
</body>

