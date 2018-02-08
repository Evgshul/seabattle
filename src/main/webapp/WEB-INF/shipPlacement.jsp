<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JavaCourses1
  Date: 01.02.2018.
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sea Battle</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="main.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,800,900" rel="stylesheet">

    <style>
        form {
            text-align: center;
        }

        table {
            border-collapse: collapse;
        }

        td {
            width: 30px;
            height: 30px;
            text-align: center;
            border: 1px solid black;
        }

        td.SHIP {
            background-color: darkgrey;
        }
    </style>
</head>
<body class="w3-display-container container">
    <div clas="w3-card-4 w3-display-middle">
    <c:set var="myField" value="${playerGameContext.player.myField}"/>


    <form method="post" class="w3-padding">
        <table class="w3-card-4 w3-display-middle w3-margin">
            <tr>
                <c:forEach var="col" items=" ,A,B,C,D,E,F,G,H,I,J">
                    <td>${col}</td>
                </c:forEach>
            </tr>
            <c:forEach var="row" begin="1" end="10">
                <tr>
                    <td>${row}</td>
                    <c:forEach var="col" items="A,B,C,D,E,F,G,H,I,J">
                        <td>
                            <c:set var="addr" value="${col}${row}"/>
                            <input type="checkbox" name="addr" value="${addr}" ${myField.hasShip(addr) ? "checked"
                                    : "" }>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>

        <input class="w3-btn w3-round w3-border" type="submit" value="START !">
    </form>
</div>

<c:if test="${myField.invalid}">
    <div class="w3=display-bottom w3-panel w3-red">
    <h3>Sorry!</h3>
    <p>Your ships are not placed correctly. Please check and correct.</p>
    </div>
</c:if>
    </body>
    </html>
