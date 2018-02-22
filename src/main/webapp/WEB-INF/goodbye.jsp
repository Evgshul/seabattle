<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 21.02.2018
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sea Battle</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="main.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,800,900" rel="stylesheet">

</head>
<body>
<div class="w3-display-container container">
    <div class="w3-card-4 w3-display-middle">
        <header class="w3-container w3-center w3-blue">
            <h2>Good Buy, ${playerGameContext.player.name}</h2>
        </header>
        <div class="w3-display-container w3-center">

            <img src="http://www.animatedimages.org/data/media/1226/animated-goodbye-image-0064.gif">

            <p>
                <a class="w3-btn w3-grey w3-large  w3-rounder" href="<c:url value='/register'/>">Start Over</a>
            </p>
        </div>
    </div>
</div>

</body>
</html>
