<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 31/07/2022
  Time: 1:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
    <style>
        a{
            text-decoration: none;
            font-size: 20px;
            color: blue;
        }
    </style>
</head>
<body>
<h1>Xóa Sản Phẩm</h1>
<p>
    <a href="/products">Quay lại danh sách sản phầm</a>
</p>
<form method="post">
    <h3>Bạn có chắc không?</h3>
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>Mã sản phầm: </td>
                <td>${product.id}</td>
            </tr>
            <tr>
                <td>Tên sản phầm: </td>
                <td>${product.name}</td>
            </tr>
            <tr>
                <td>Giá sản phầm: </td>
                <td>${product.price}</td>
            </tr>
            <tr>
                <td>Mô tả: </td>
                <td>${product.describe}</td>
            </tr>
            <tr>
                <td>Nhà sản xuất: </td>
                <td>${product.producer}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Xóa sản phầm"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
