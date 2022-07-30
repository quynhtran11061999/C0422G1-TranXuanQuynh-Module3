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
    <title>Product List</title>
    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<p>
    <a href="/products?action=add">Thêm mới sản phẩm</a>
</p>
<form action="/products?action=searchByName" method="post">
    <h2>Tìm kiếm sản phầm theo tên</h2>
    <input type="text" name="name">
    <input type="submit" value="Tìm kiếm">
    <table border="1px">
        <tr>
            <th>ID</th>
            <th>Tên Sản Phẩm</th>
            <th>Giá Sản Phâm</th>
            <th>Mô tả</th>
            <th>Nhà sản xuất</th>
        </tr>
        <c:forEach var="product" items="${products}" varStatus="status">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.describe}</td>
                <td>${product.producer}</td>
            </tr>
        </c:forEach>
    </table>
</form>
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
            <td><a href="/products?action=viewProduct&id=${product.id}">${product.name}</a></td>
            <td>${product.price}</td>
            <td>${product.describe}</td>
            <td>${product.producer}</td>
            <td><a href="/products?action=update&id=${product.id}">Sửa</a></td>
            <td><a href="/products?action=delete&id=${product.id}">Xóa</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
