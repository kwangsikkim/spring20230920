<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-25
  Time: 오후 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>
    <c:when test="${param.age >= 20}">
        <p>투표 가능</p>
    </c:when>
    <c:when test="${param.age < 20}">
        <p>투표 불가능</p>
    </c:when>
    <c:otherwise>
        <p>나이 입력 ㄱ</p>
    </c:otherwise>
</c:choose>
</body>
</html>
