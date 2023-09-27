<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-27
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>좋아하는 음식 고르기</h1>
<form action="/main15/sub8" method="post">
<%--div*5>label[for=input$]+input:c#input$[name=food][value]--%>
    <div>
        <input type="checkbox" name="food" id="input1" value="pizza">
        <label for="input1">pizza</label>
    </div>
    <div>
        <input type="checkbox" name="food" id="input2" value="donut">
        <label for="input2">donut</label>
    </div>
    <div>
        <input type="checkbox" name="food" id="input3" value="tangfuru">
        <label for="input3">tangfuru</label>
    </div>
    <div>
        <input type="checkbox" name="food" id="input4" value="kimbab">
        <label for="input4">kimbab</label>
    </div>
    <div>
        <input type="checkbox" name="food" id="input5" value="bibimbab">
        <label for="input5">bibimbab</label>
    </div>
    <button>전송</button>
</form>
</body>
</html>
