<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-27
  Time: 오전 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>\${modelAttr1} : ${modelAttr1}</h1>
<h1>\${sessionAttr1} : ${sessionAttr1}</h1>

<%--el에서 attribue에 접근하면 좁은 영역에서 먼저 찾는다--%>
<%-- page < request < session(model) < application --%>
<%-- 그래서 아래에서 돈까스가 먼저 나옴 --%>
<h1>\${attr1} : ${attr1}</h1>

<%--세션에서 꺼내려면, --%>
<h1>\${sessionScope.attr1} : ${sessionScope.attr1}</h1>
</body>
</html>
