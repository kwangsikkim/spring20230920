<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-26
  Time: 오후 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>일정 등록</h1>
<form action="/main13/sub8">
<div>
    <label for="input1">아이디</label>
    <input type="number" id="input1" name="id">
</div>
<div>
    <label for="input2">이름</label>
    <input type="text" id="input2" name="name">
</div>
<div>
    <label for="input3">주소</label>
    <input type="text" id="input3" name="address">
</div>
<div>
    <label for="input4">예정</label>
    <input type="datetime-local" id="input4" name="schedule">
</div>
<div>
    <label for="input5">공부</label>
    <input type="checkbox" id="input5" name="todos" value="studying">
</div>
<div>
    <label for="input6">운동</label>
    <input type="checkbox" id="input6" name="todos" value="exercising">
</div>
<div>
    <label for="input7">청소</label>
    <input type="checkbox" id="input7" name="todos" value="cleaning">
</div>
<button>등록</button>
</form>
</body>
</html>
