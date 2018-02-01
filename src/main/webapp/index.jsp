<%--
  Created by IntelliJ IDEA.
  User: JavaCourses1
  Date: 25.01.2018.
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
    <title>Welcome - Sea Battle</title>

    <style>
        body, h1, h2 {
            font-family: "Lobster", serif
        }

        body, html {
            height: 100%
        }

        .bgimg {
            background-image: url('image/BattleSeaa.png');
            min-height: 100%;
            background-position: center;
            background-size: cover;
        }
    </style>
</head>
<body>
<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
    <div class="w3-display-topleft w3-padding-large w3-xlarge">
        <img src="image/logo1.png" width="80">
    </div>
    <div class="w3-display-middle w3-center">
        <h1 class="w3-jumbo w3-animate-top w3-text-black">WELCOME TO</h1>
        <h2 class="w3-xxxLarge w3-animate-bottom w3-text-black">BIG SEA BATTLE</h2>

        <a class="w3-btn w3-light-blue w3-xxlarge  w3-animated-top w3-round-xxlarge w3-text-black" href="register">Start the game</a>
    </div>

</div>

</body>
</html>
