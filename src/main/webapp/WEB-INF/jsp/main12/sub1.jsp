<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-25
  Time: 오후 2:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>form 요소</h1>

<form>
    <input type="text" name="param1">
    <input type="text" name="param2">
    <br>
    <%-- select(option), textarea --%>
    <button>전송</button>
</form>

<hr>
<%--
전송 버튼 클릭스
?name=lee&age=44&address=seoul&email=abc@gmail.com
--%>

<form>
    <input type="text" name="name">
    <br>
    <input type="text" name="age">
    <br>
    <input type="text" name="address">
    <br>
    <input type="text" name="email">
    <br>
    <button>전송</button>
</form>
    <hr>
    <h1>action 속성 : request 파라미터들을 어디로 보낼지 결정</h1>
    <p>action 속성이 없거나 빈 문자열의 경우 현재 경로</p>
    <form action="https://search.daum.net/search">
        <input type="text" name="q">
        <br>
        <button>전송</button>
    </form>

    <hr>
    <form action="https://search.naver.com/search.naver">
        <input type="text" name="query">
        <br>
        <button>전송</button>
    </form>

<hr>
<h1>action 속성 값 : / 로 시작하는 경우 path(절대 경로, absolute path)가 결정됨</h1>
<form action="/main12/sub2">
    <input type="text" name="email">
    <button>전송</button>
</form>

<%--
전송 버튼 클릭 시 request parameter가 /main12/sub2 로 전송되도록
--%>
<form action="/main12/sub2">
    <input type="text" name="age">
    <button>전송</button>
</form>

<hr>

<h1>action 속성 값: /도 아니고 protocol(scheme)이 아니면 현재 페이지의 상대 경로</h1>
<h1>path에서 마지막 / 기준(현재 경로 기준. 그래서 상대 경로라고 함)</h1>
<form action="main12/sub2">
<%-- 위와 다르게 main12앞에 /  없음 --%>
    <input type="text" name="email">
    <button>전송</button>
</form>
<form action="sub3">
    <input type="text" name="address">
    <button>전송</button>
</form>

<%-- .. : 한 경로 위 --%>
<form action="..">
    <input type="text" name="age">
    <button>전송</button>
</form>







</body>
</html>





















