<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JavaCourses1
  Date: 15.02.2018.
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="main.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,800,900" rel="stylesheet">
    <title>Sea_Battle</title>

</head>

<body>
<div class="w3-display-container container">
    <div class="w3-card-4 w3-display-middle">
        <header class="w3-container w3-center w3-blue">
            <h2>${playerGameContext.player.name} you WON !!!</h2>
        </header>
        <div class="w3-display-container w3-center">
            <img src="http://bestanimations.com/Holidays/Fireworks/fireworks/ba-blue-red-fireworks-colorful-pretty-gif-pic.gif#.WovrWf6yMBw.link">

        <p>
            <a class="w3-btn w3-blue w3-large  w3-rounder" href="<c:url value='/register'/>">Start Over</a>
        </p>
        </div>
    </div>
</div>
</body>
</html>
