<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 05/08/2022
  Time: 10:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Customer</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<%@ include file="../common/include/navbar.jsp" %>
<div class="row">
    <div class="col-lg-5">
        <h1>Danh sách khác hàng</h1>
    </div>
    <div class="col-lg-5"></div>
    <div class="col-lg-2">
        <button type="button" class="btn btn-success" style="width: 100%;height: 100%" data-bs-toggle="modal"
                data-bs-target="#exampleModal">
            <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-plus-circle"
                 viewBox="0 0 16 16">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
            </svg>
            Thêm mới khách hàng
        </button>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title text-success" id="exampleModalLabel">Thêm mới khách hàng</h3>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label class="text-success">Họ tên</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="text-success">Ngày sinh</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="text-success">Giới tính</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="text-success">Số CMND</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="text-success">Số Điện Thoại</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="text-success">Email</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="text-success">Loại khách</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="text-success">Địa chỉ</label>
                            <input type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                        <button type="button" class="btn btn-success">Lưu</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <table class="table table-success table-striped">
            <tr>
                <th>ID</th>
                <th>Loại khách</th>
                <th>Họ tên</th>
                <th>Ngày sinh</th>
                <th>Giới tính</th>
                <th>Số CMND</th>
                <th>Số điện thoại</th>
                <th>Email</th>
                <th>Địa chỉ</th>
                <th>Action</th>
            </tr>
            <c:forEach var="cusomer" items="${customerList}">
                <tr>
                    <td><c:out value="${cusomer.idCustomer}"/></td>
                    <td><c:out value="${cusomer.customerTypeId}"/></td>
                    <td><c:out value="${cusomer.name}"/></td>
                    <td><c:out value="${cusomer.birthday}"/></td>
                    <td><c:out value="${cusomer.gender}"/></td>
                    <td><c:out value="${cusomer.idCard}"/></td>
                    <td><c:out value="${cusomer.phoneNumber}"/></td>
                    <td><c:out value="${cusomer.email}"/></td>
                    <td><c:out value="${cusomer.address}"/></td>
                    <td>
                        <a href="/customer?action=editCustomer" class="text-decoration-none">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="yellow"
                                 class="bi bi-pen-fill" viewBox="0 0 16 16">
                                <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z"/>
                            </svg>
                        </a>
                        <a href="/customer?action=deleteCustomer" class="text-decoration-none">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#deleteCustomer" onclick="deleteCustomer(${customer.id})">
                                <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="red"
                                     class="bi bi-trash-fill" viewBox="0 0 16 16">
                                    <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                </svg>
                            </button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<!-- Modal delete customer -->
<div class="modal fade" id="deleteCustomer" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form method="post" action="">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel1">Delete</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" id="deleteIdCustomer">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </div>
        </div>
    </form>
</div>
<script>
    function deleteCustomer(idCustomer) {
        document.getElementById("deleteIdCustomer").value = idCustomer;
    }
</script>
<%@ include file="../common/include/footer.jsp" %>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
