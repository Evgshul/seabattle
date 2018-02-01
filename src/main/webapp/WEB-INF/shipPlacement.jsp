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
</head>
<body>
<form method="post">
    <table style="text-align: center">
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
                        <input class="w3-btn" type="checkbox" name="addr" value="${col}${row}">
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>

    <input type="submit" value="Start!">
</form>
</body>
</html>
