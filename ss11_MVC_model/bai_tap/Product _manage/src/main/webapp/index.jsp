<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 29/07/2022
  Time: 3:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Product List</title>
</head>
<body>
<h1>Product</h1>
<p>
  <a href="/products?action=add">Thêm sản phẩm</a>
</p>
<table border="1">
  <tr>
    <td>STT</td>
    <td>Mã sản phẩm</td>
    <td>Tên sản phẩm</td>
    <td>Giá sản phầm</td>
    <td>Mô tả sản phầm</td>
  </tr>
  <c:forEach items="${products}" var="product" varStatus="status">
    <tr>
      <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
      <td>${customer.getEmail()}</td>
      <td>${customer.getAddress()}</td>
      <td><a href="/customers?action=edit&id=${customer.getId()}">edit</a></td>
      <td><a href="/customers?action=delete&id=${customer.getId()}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>