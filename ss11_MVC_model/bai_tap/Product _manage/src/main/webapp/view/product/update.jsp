<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 31/07/2022
  Time: 12:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Product</title>
    <style>
        .message{
            color:green;
        }
        a{
            text-decoration: none;
            font-size: 20px;
            color: blue;
        }
    </style>
</head>
<body>

<h1>Sửa thông tin sản phẩm</h1>
<p>
    <c:if test='${message!= null}'>
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/products">Quay lại danh sách sản phầm</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>Mã sản phẩm: </td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Tên sảm phẩm: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Giá: </td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Mô tả sản phẩm: </td>
                <td><input type="text" name="describe" id="describe"></td>
            </tr>
            <tr>
                <td>Nhà sản xuất: </td>
                <td><input type="text" name="producer" id="producer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Sửa sản phầm"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
