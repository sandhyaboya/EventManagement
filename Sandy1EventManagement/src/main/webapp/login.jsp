<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Poppins', sans-serif;
        color: #ffffff;
        background: url('data:image/jpeg;base64,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') no-repeat center center/cover;
    }

    .login-box {
        width: 100%;
        margin: auto;
        max-width: 400px;
        min-height: 400px;
        background: linear-gradient(145deg, #1f1f1f, #2e2e2e);
        box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.4);
        border-radius: 10px;
        padding: 30px;
    }

    .label {
        color: #dddddd;
        font-size: 14px;
        margin-bottom: 5px;
        display: block;
    }

    .input {
        width: 100%;
        padding: 10px 15px;
        border: none;
        border-radius: 30px;
        outline: none;
        background-color: #333333;
        color: #ffffff;
        transition: all 0.3s ease;
    }

    .input:focus {
        background-color: #444444;
        box-shadow: 0 0 10px #00adb5;
    }

    .button {
        width: 100%;
        padding: 12px 15px;
        border: none;
        border-radius: 30px;
        background-color: #00adb5;
        color: #ffffff;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease, box-shadow 0.3s ease;
    }

    .button:hover {
        background-color: #007f8b;
        box-shadow: 0 5px 15px rgba(0, 173, 181, 0.5);
    }

    .hr {
        height: 1px;
        background: #555555;
        margin: 20px 0;
    }

    .foot {
        text-align: center;
        color: #cccccc;
        font-size: 14px;
    }

    .foot a {
        color: #00adb5;
        text-decoration: none;
    }

    .foot a:hover {
        text-decoration: underline;
    }

    #msg {
        color: #ff4b5c;
        background-color: #2e2e2e;
        padding: 10px;
        border-radius: 5px;
        text-align: center;
        margin-bottom: 10px;
    }
</style>
</head>
<body>
    <%@ include file="loginHeader.jsp"%>
    <br/>
    <br/>
    <br/><br/>
    <center>
        <form method="POST" action="register">
            <div class="login-box">
                <%
                if (request.getAttribute("status") != null) {
                %>
                <div id="msg">
                    <%=request.getAttribute("status")%>
                </div>
                <% } %>
                <!-- Login Form -->
                <div>
                    <h2 style="text-align: center; color: #00adb5;">Login</h2>
                    <br/>
                    <div class="group">
                        <label for="user" class="label">Email ID</label>
                        <input id="user" type="email" name="em" class="input" placeholder="Enter your email" required>
                    </div>
                    <br/>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="pass" type="password" name="pw" class="input" placeholder="Enter your password" required>
                    </div>
                    <br/>
                    <div class="group">
                        <input type="submit" class="button" name="login" value="Log In">
                    </div>
                    <br/>
                    <div class="hr"></div>
                    <div class="foot">
                    	<a href="registeration.jsp">Register</a>
                    
                    </div>
                </div>
            </div>
        </form>
    </center>
</body>
</html>
