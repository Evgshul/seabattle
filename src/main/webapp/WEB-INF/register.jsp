<%--
  Created by IntelliJ IDEA.
  User: JavaCourses1
  Date: 25.01.2018.
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register - Sea Battle</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="main.css">
</head>
<style>
    .bgimg {
        background-image: url('image/batle1.jpg');
        min-height: 100%;
        background-position: center;
        background-size: cover;
    }
</style>

<body>
<div class="bgimg w3-display-container">
    <div class="w3-display-container container">
        <div class="w3-card-4 w3-display-middle">
            <div class="w3-container w3-center w3-opacity">
                <h2>Registration</h2>
            </div>
            <form class="w3-container w3-center" action="register" method="post">
                <p>
                    <label class="w3-text-black">Enter your name</label>
                    <input class="w3-input w3-border w3-light-grey" type="text" name="player-name">
                </p>
                <p>
                    <input class="w3-btn w3-sand" type="submit" name="register" value="Start!">
                </p>

            </form>
        </div>
    </div>
</div>
</body>
</html>
