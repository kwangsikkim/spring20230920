<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-25
  Time: 오후 4:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty search}">
    <p>${search}</p>
</c:if>

<a href="/main12/sub5">또 검색하러 가기</a>
</body>
</html>
