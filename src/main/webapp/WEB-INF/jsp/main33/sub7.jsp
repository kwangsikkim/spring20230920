<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-10-24
  Time: 오전 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>여러 파일 올리기</h3>
<form action="/main33/sub8" method="post" enctype="multipart/form-data">
    <input type="file" multiple name="files">
    <input type="submit" value="전송">
</form>
</body>
</html>
