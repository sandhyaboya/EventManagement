<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Design</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* Reset body margin and padding */
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: #fff;
        }
        
        /* Background setup */
        .background {
        	background-image: url('https://static.toiimg.com/photo/msid-64957021,width-96,height-65.cms');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            position: relative;
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }
        
        /* Overlay style for a slightly tinted background */
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.4); /* Dark overlay */
            z-index: 1;
        }
        
        /* Text container */
        .content {
            z-index: 2;
        }
        
        h1 {
        display:flex;
            font-size: 2.5em;
            font-weight: bold;
            margin: 0 20px;
            color: #fff;
        }
        
        .btn {
            margin-top: 20px;
            padding: 10px 30px;
            border: 2px solid #fff;
            background: transparent;
            color: #fff;
            font-size: 1em;
            cursor: pointer;
            transition: 0.3s;
        }
        
        .btn:hover {
            background: #fff;
            color: #333;
        }
        
        /* Social icons */
        .social-icons {
            display: flex;
            gap: 15px;
            margin-top: 450px;
            margin-left:750px;
        }

        .social-icons a {
            color: #fff;
            font-size: 1.5em;
            text-decoration: none;
            transition: color 0.3s;
        }

        .social-icons a:hover {
            color: #ddd;
        }
    </style>
</head>
<body>
    <div class="background">
        <div class="overlay"></div>
        <div class="content">
            <h1>Are you ready to spend less time stressing and more time creating beautiful memories?</h1>
           <a href="index.jsp"><button class="btn">YES</button></a>
           
           
            <div class="social-icons">
                <a href="#"><i class="fa-brands fa-facebook"></i></a>
                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                
            </div>
        </div>
    </div>
</body>
</html>
