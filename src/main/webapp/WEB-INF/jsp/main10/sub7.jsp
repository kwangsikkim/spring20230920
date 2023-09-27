<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-25
  Time: 오전 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>el에서 사용할 수 있는 연산자</h3>
<h4>산술 연산자</h4>
<h4>+, -, *, /, %</h4>

<hr>

<h5>+ : 더하기</h5>
<p>${a} + ${b} = ${a + b}</p>
<p>${c} + ${d} = ${c + d}</p>

<h5>- : 빼기</h5>
<p>${a} - ${b} = ${a - b}</p>
<p>${c} - ${d} = ${c - d}</p>

<h5>* : 곱하기</h5>
<p>${a} * ${b} = ${a * b}</p>
<p>${c} * ${d} = ${c * d}</p>

<h5>/ : 나누기(div)</h5>
<p>${a} / ${b} = ${a / b}</p>
<p>${c} / ${d} = ${c / d}</p>
<p>${a} / ${b} = ${a div b}</p>
<p>${c} / ${d} = ${c div d}</p>


<h5>% : 나머지 연산(modulo, remainder)</h5>
<p>${b} % ${a} = ${a % b}</p>
<p>${c} % ${a} = ${c % a}</p>
<p>${d} % ${a} = ${d % a}</p>
<p>${b} % ${a} = ${a mod b}</p>
<p>${c} % ${a} = ${c mod a}</p>
<p>${d} % ${a} = ${d mod a}</p>


<hr>
<h5>구구단 2단</h5>
<C:forEach begin="1" end="9" var="i">
    <p>2 X ${i} = ${2 *i}</p>
</C:forEach>

<hr>
<h5>구구단 2단~9단</h5>
<C:forEach begin="2" end="9" var="i">
    <h6>구구단 ${i}단</h6>
    <C:forEach begin="1" end="9" var="j">
        <p>${i} X ${j} = ${i * j} </p>
    </C:forEach>
</C:forEach>

<hr>
<h5>구구단 9 -> 2단</h5>
<C:forEach begin="0" end="7" var="i">
    <h6>구구단 ${9-i}단</h6>
    <C:forEach begin="1" end="9" var="j">
        <p>${9-i} X ${j} = ${(9-i) * j} </p>
    </C:forEach>
</C:forEach>











</body>
</html>
