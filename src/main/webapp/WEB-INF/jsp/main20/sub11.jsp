<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-10-05
  Time: 오후 4:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>suppliers 목록</h3>
<table style="border-collapse: collapse; border: 1px solid black; width: 100%">
    <tr>
        <th style="background-color: #eeeeee">ID</th>
        <th style="background-color: #eeeeee">NAME</th>
        <th style="background-color: #eeeeee">COUNTRY</th>
        <th style="background-color: #eeeeee">ADDRESS</th>
        <th style="background-color: #eeeeee">CITY</th>
        <th style="background-color: #eeeeee">PHONE</th>
    </tr>
    <c:forEach items="${suppliersList}" var="suppliers" >
        <tr>
            <th>${suppliers.id}</th>
            <th>${suppliers.name}</th>
            <th>${suppliers.country}</th>
            <th>${suppliers.address}</th>
            <th>${suppliers.city}</th>
            <th>${suppliers.phone}</th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
