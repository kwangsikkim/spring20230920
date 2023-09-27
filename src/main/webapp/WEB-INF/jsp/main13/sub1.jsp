<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-26
  Time: 오전 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>input 요소들</h3>
<form action="/main13/sub2">
<%-- div*10>input[name=param$] --%>
    <div>
        <input type="text" name="param1">
    </div>
    <div>
        <input type="password" name="param2">
    </div>
    <div>
        <input type="date" name="param3">
    </div>
    <div>
        <input type="button" name="param4" value="어떤 버튼">
    </div>
    <div>
        <input type="number" name="param5">
    </div>
    <div>
        <input type="submit" name="param6" value="회원 가입">
    </div>
    <div>
        <input type="radio" name="param7">
        <%-- 여러 선택지 중 하나 선택 --%>
    </div>
    <div>
        <input type="radio" name="param7">
    </div>
    <div>
        <input type="checkbox" name="param9">
    </div>
    <div>
        <input type="checkbox" name="param9">
    </div>
    <div>
        <input type="file" name="param11">
    </div>
    <div>
        <input type="hidden" name="param10" value="someValue">
    </div>

    <button>전송</button>
</form>

<hr>
<form action="/main13/sub2">
<div>
    <input type="text" name="param1" value="son">
</div>
</form>
<div>
    <input type="text" name="param2" placeholder="이름을 입력하세요">
</div>
<div>
    <input type="text" name="param3" maxlength="5">
</div>
<div>
    <input type="text" name="param4" maxlength="5">
</div>
<div>
    <input type="text" name="param5" required>
</div>
<div>
    <input type="text" name="param6" readonly>
</div>
<div>
    <input type="text" name="param7" value="son">
</div>
<div>
    <input type="text" name="param8" value="son" disabled>
</div>
<div>
    <input type="text" pattern="\d{3}" name="param9">
</div>
<%--div*2>input:c--%>
<div>
    <input type="checkbox" name="param10" checked id="">
</div>
<div>
    <input type="checkbox" name="param10" id="">
</div>

<%--div*2>input:r--%>
<div>
    <input type="radio" name="" checked id="">
</div>
<div>
    <input type="radio" name="" id="">
</div>

<div>
    <input type="file">
</div>
<div>
    <input type="file" multiple>
</div>

<hr>

<form action="/main13/sub2">
    <label for="input1">
        이름
    </label>
    <input id="input1" type="text">
    <br>
<%-- div>div*3>label[for=check$]>lorem1^+input:c#check$--%>
    <div>
        <div>
            <label for="check1">Lorem.</label>
            <input type="checkbox" name="" id="check1">
        </div>
        <div>
            <label for="check2">A.</label>
            <input type="checkbox" name="" id="check2">
        </div>
        <div>
            <label for="check3">Sequi.</label>
            <input type="checkbox" name="" id="check3">
        </div>
    </div>
    <input type="submit">

</form>
</body>
</html>

















