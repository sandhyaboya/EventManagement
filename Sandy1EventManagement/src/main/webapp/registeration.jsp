<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <style>
        /* General styling */
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('https://e1.pxfuel.com/desktop-wallpaper/192/1014/desktop-wallpaper-how-one-event-planner-uses-lifestyle-graphy-to-promote-her-work-event-management.jpg') no-repeat center center/cover;
        }

        .registration-container {
            max-width: 500px;
            width: 100%;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.5);
            text-align: center;
            backdrop-filter: blur(10px);
        }

        .registration-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #fff;
        }

        .registration-container form input[type="text"],
        .registration-container form input[type="email"],
        .registration-container form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.8);
            font-size: 16px;
        }

        .registration-container form input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #5cb85c;
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

        .registration-container form input[type="submit"]:hover {
            background-color: #4a9a4a;
        }

        .registration-container p {
            color: #ffffff;
            margin-top: 20px;
        }

        .registration-container a {
            color: #ffdf00;
            text-decoration: none;
        }

        .registration-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

								    <div class="registration-container">
								        <h2>Register</h2>
								        <form action="register" method="POST">
								            <div class="group">
											<label for="user" class="label">Name</label> <input id="user"
												type="text" class="input" name="nm"
												placeholder="Enter your Username">
										</div>
										<div class="group">
											<label for="pass" class="label">Email Address</label> <input
												id="pass" type="email" class="input" name="ema"
												placeholder="Enter your email address">
										</div>
										<div class="group">
											<label for="pass" class="label">Password</label> <input
												id="pass" type="password" class="input" data-type="password"
												name="pwd" placeholder="Create your password">
										</div>
										<div class="group">
											<label for="pass" class="label">Confirm Password</label> <input
												id="pass" type="password" class="input" data-type="password"
												name="cpwd" placeholder="Confirm your password">
										</div>
										<div class="group">
											<input type="submit" class="button" name="signup"
												value="Sign Up">
										</div>
        </form>
        <p>Already have an account? <a href="login.jsp">Login here</a>.</p>
    </div>
</body>
</html>
