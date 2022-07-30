<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 29/07/2022
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Tên sản phầm</th>
        <th>Giá sản phẩm</th>
        <th>Mô tả sản phầm</th>
        <th>Nhà sản xuất</th>
    </tr>
    <c:forEach var="product" items="${listProduct}" varStatus="status">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.describe}</td>
            <td>${product.producer}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
