<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sandy Events</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Arial', sans-serif;
}

body {
	background-color: #f4f4f4;
	color: #333;
}

header {
	width: 100%;
	background-color: #2c3e50;
}

nav {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 30px;
}

.logo h5 {
	color: #fff;
	font-size: 28px;
	font-weight: bold;
	text-transform: uppercase;
}

.menu {
	display: flex;
	list-style: none;
}

.menu li {
	margin: 0 15px;
}

.menu a {
	color: #fff;
	text-decoration: none;
	font-size: 16px;
	font-weight: 500;
	transition: color 0.3s ease;
}

.menu a:hover {
	color: #e67e22;
}

.menu a:active {
	color: #d35400;
}

.bar {
	display: none;
}

.bar div {
	width: 30px;
	height: 4px;
	background-color: #fff;
	margin: 5px;
	transition: transform 0.3s ease;
}

@media screen and (max-width: 768px) {
	.menu {
		position: absolute;
		top: 0;
		right: -100%;
		background-color: #34495e;
		width: 100%;
		height: 100vh;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		transition: right 0.3s ease;
	}

	.menu a {
		font-size: 20px;
	}

	.bar {
		display: block;
		cursor: pointer;
	}

	.nav-active {
		right: 0;
	}

	.bar-active .bar-1 {
		transform: rotate(45deg) translate(5px, 5px);
	}

	.bar-active .bar-2 {
		opacity: 0;
	}

	.bar-active .bar-3 {
		transform: rotate(-45deg) translate(5px, -5px);
	}
}

</style>
<body>
	<header>
		<nav>
			<div class="logo">
				<h5>Sandy Events</h5>
			</div>
			<ul class="menu">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="service.jsp">Services</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<% if (session.getAttribute("uname") != null) {%>
				<li><a href="eventStatus.jsp">Status</a></li>
				<li><a href="register?logout=yes">Logout</a></li>
				<li><i class="fa fa-user-circle" aria-hidden="true"></i> <%=session.getAttribute("uname")%></li>
				<%}%>
			</ul>
			<div class="bar">
				<div class="bar-1"></div>
				<div class="bar-2"></div>
				<div class="bar-3"></div>
			</div>
		</nav>
	</header>

	<script>
        const toggleMenu = () => {
            const menu = document.querySelector('.bar');
            const nav = document.querySelector('.menu');
            
            menu.addEventListener('click', () => {
               menu.classList.toggle('bar-active');
                nav.classList.toggle('nav-active');
            });
        }
        toggleMenu();
    </script>
</body>
</html>
