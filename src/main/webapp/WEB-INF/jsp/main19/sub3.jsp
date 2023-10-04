<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-10-04
  Time: 오후 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>공급자 목록</h3>
<%--table>tr>th*3--%>
<table style="border-collapse: collapse; border: 1px solid black; width: 100%">
    <tr>
        <th style="background-color: #eeeeee">ID</th>
        <th style="background-color: #eeeeee">NAME</th>
        <th style="background-color: #eeeeee">PHONE</th>
    </tr>
    <c:forEach items="${shippers}" var="shippers">
        <tr>
            <td>${shippers.id}</td>
            <td>${shippers.name}</td>
            <td>${shippers.phone}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
