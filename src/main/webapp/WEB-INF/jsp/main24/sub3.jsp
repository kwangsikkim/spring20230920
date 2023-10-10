<%--
  Created by IntelliJ IDEA.
  User: pengg
  Date: 2023-10-10
  Time: 오후 3:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main24/sub2" method="post">
    <h4>공급자 입력</h4>
<%--   div*8>input[name]--%>
    <div>
        SupplierName
        <input type="text" name="SupplierName">
    </div>
    <div>
        ContactName
        <input type="text" name="ContactName">
    </div>
    <div>
        Address
        <input type="text" name="Address">
    </div>
    <div>
        City
        <input type="text" name="City">
    </div>
    <div>
        PostalCode
        <input type="text" name="PostalCode">
    </div>
    <div>
        Country
        <input type="text" name="Country">
    </div>
    <div>
        Phone
        <input type="text" name="Phone">
    </div>
    <div>
        <input type="submit" value="등록">
    </div>
</form>
</body>
</html>
