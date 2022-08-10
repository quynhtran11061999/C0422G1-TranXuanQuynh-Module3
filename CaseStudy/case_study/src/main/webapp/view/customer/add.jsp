<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 05/08/2022
  Time: 10:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADD Customer</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<%@ include file="../common/include/navbar.jsp" %>
<div class="container-fluid">
    <form action="/customer?action=insertCustomer" method="post">
        <h1>Thêm mới khách hàng</h1>
        <fieldset>
            <legend style="margin-top: 15px; margin-bottom: 15px">Thông tin khách hàng</legend>
            <table class="form-control-lg table table-success table-striped">
                <tr>
                    <td>Mã loại khách:</td>
                    <td>
                        <div>
                            <select name="customerTypeId" id="customerTypeId" style="width: 465px" class="text-center">
                                <option value="1">Diamond</option>
                                <option value="2">Platinium</option>
                                <option value="3">Gold</option>
                                <option value="4">Silver</option>
                                <option value="5">Member</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>Họ tên:</td>
                    <td>
                        <input type="text" name="name" id="name" size="45px">
                        <div style="color: red">${nameCustomer}</div>
                    </td>
                </tr>
                <tr>
                    <td>Ngày sinh:</td>
                    <td>
                        <input type="date" name="birthday" id="birthday" style="width: 465px"  class="text-center">
                         <p class="text-danger">${dateOfBirth}</p>
                    </td>
                </tr>
                <tr>
                    <td>Giới tính:</td>
                    <td><input required type="text" name="gender" id="gender" size="45px"></td>
                </tr>
                <tr>
                    <td>Số CMND:</td>
                    <td>
                        <input type="text" name="idCard" id="idCard" size="45px">
                        <div style="color: red">${idCard}</div>
                    </td>
                </tr>
                <tr>
                    <td>Số điện thoại:</td>
                    <td>
                        <input type="text" name="phoneNumber" id="phoneNumber" size="45px">
                        <div style="color: red">${phoneNumber}</div>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <input type="text" name="email" id="email" size="45px">
                        <div style="color: red">${email}</div>
                    </td>
                </tr>
                <tr>
                    <td>Địa chỉ:</td>
                    <td><input required type="text" name="address" id="address" size="45px"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="form-control btn-success" style="width: 300px" type="submit" value="Thêm mới khách hàng"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
<%@ include file="../common/include/footer.jsp" %>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
