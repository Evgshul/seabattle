<%--
  Created by IntelliJ IDEA.
  User: JavaCourses1
  Date: 25.01.2018.
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta http-equiv="refresh" content="5">
    <title>Wait - Sea Battle</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="main.css">
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body>

<div class="w3-display-container w3-purple container">
    <div class="w3-card-4 w3-white w3-display-middle">
        <header class="w3-container w3-blue">
            <h4>${playerGameContext.player.name} Please wait...</h4>
        </header>
        <div class="w3-container w3-center w3-text-blue w3-padding">
            <p>
                <i class="fas fa-cog fa-5x fa-pulse"></i>
            </p>
            <p>
                <b>Please wait other player to join...</b>
            </p>
        </div>
    </div>
</div>


</body>
</html>
