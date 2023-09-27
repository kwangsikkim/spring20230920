<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-22
  Time: 오전 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>${myMap}</h3>
<h3>${myMap["son"]}</h3>
<h3>${myMap["lee"]}</h3>
<h3>${myMap["kim"]}</h3>

<hr>

<h3>${myMAp.son}</h3>
<h3>${myMAp.lee}</h3>
<h3>${myMAp.kim}</h3>

<hr>

<h3>${cityMap.seoul}</h3>
<h3>${cityMap.busan}</h3>
<h3>${color.red}</h3>
<h3>${color.blue}</h3>
<h3>${color["black"]}</h3>

<hr>
<h3>${attr3.name}</h3>
<h3>${attr3["name"]}</h3>
<%--<h3>${attr3.my name}</h3>       " " 인식 못함 --%>
<%--<h3>${attr3.your-name}</h3>     - 를 연산자로 인식함 --%>
<h3>${attr3["my name"]}</h3>
<h3>${attr3["your-name"]}</h3>

</body>
</html>
