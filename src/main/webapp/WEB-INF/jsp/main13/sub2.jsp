<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-09-26
  Time: 오전 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main13/sub3">
<%--div*10>label[for=input$]>lorem1^input[type][name=param$][id=input$]--%>
    <div>
        <label for="input1">Lorem.</label>
        <input type="text" name="param1" id="input1">
    </div>
    <div>
        <label for="input2">Minus.</label>
        <input type="number" name="param2" id="input2">
    </div>
    <div>
        <label for="input3">Libero.</label>
        <input type="password" name="param3" id="input3">
    </div>
    <div>
        <label for="input4">Ipsam.</label>
        <input type="date" name="param4" id="input4">
    </div>
    <div>
        <label for="input5">Aspernatur?</label>
        <input type="datetime-local" name="param5" id="input5">
    </div>
    <div>
        <label for="input6">Architecto?</label>
        <input type="radio" name="param6" value="accept" id="input6">
    </div>
    <div>
        <label for="input7">Commodi!</label>
        <input type="radio" name="param6" value="reject" id="input7">
    </div>
    <div>
        <label for="input8">Quo.</label>
        <input type="checkbox" name="param8" value="coke" id="input8">
    </div>
    <div>
        <label for="input9">Inventore!</label>
        <input type="checkbox" name="param8" value="coffee" id="input9">
    </div>
    <div>
        <label for="input10">Voluptates.</label>
        <input type="checkbox" name="param8" value="water" id="input10">
    </div>
    <button>전송</button>
</form>
</body>
</html>
