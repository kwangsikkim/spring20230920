<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-26
  Time: 오후 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>암호 전송</h1>
<form action="/main14/sub2" method="get">
    <div>
        id:
        <input type="text" name="id">
    </div>
    <div>
        password:
        <input type="password" name="password">
    </div>
    <button>확인</button>
</form>

<hr>

<form action="/main14/sub2" method="post">
    <div>
        id:
        <input type="text" name="id">
    </div>
    <div>
        password:
        <input type="password" name="password">
    </div>
    <button>확인</button>
</form>
</body>
</html>
