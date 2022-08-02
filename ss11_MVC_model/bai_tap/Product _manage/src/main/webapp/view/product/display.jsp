<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 29/07/2022
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
<div class="container">
<h1>Danh sách sản phẩm</h1>
<p>
    <a href="/products?action=add">Thêm mới sản phẩm</a>
</p>
<form action="/products?action=searchByName" method="post">
    <h2>Tìm kiếm sản phầm theo tên</h2>
    <input type="text" name="name">
    <input type="submit" value="Tìm kiếm">
    <table class="table">
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
                <td><a href="/products?action=viewProduct&id=${product.id}">${product.name}</a></td>
                <td>${product.price}</td>
                <td>${product.describe}</td>
                <td>${product.producer}</td>
                <td><a href="/products?action=update&id=${product.id}">Sửa</a></td>
                <td><!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal-${product.id}">
                        Xóa
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal-${product.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có chắc chắn xóa !!!
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                                    <button type="submit" class="btn btn-primary"><a href="/products?action=delete&id=${product.id}" class="text-light">Đồng ý</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>
<c:if test="${flag==1}">
    <p>
        <a href="/products">Quay lại danh sách sản phẩm</a>
    </p>
</c:if>

<c:if test="${message != null}">
    <h3>${message}</h3>
    <h2> <a href="/products">Quay lại danh sách sản phẩm</a></h2>
</c:if>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
