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
    <h1>Thêm mới khách hàng</h1>
    <div class="dropdown">
        <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
            Loại khách
        </a>

        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <li><a class="dropdown-item" href="#">Diamond</a></li>
            <li><a class="dropdown-item" href="#">Platinium</a></li>
            <li><a class="dropdown-item" href="#">Gold</a></li>
            <li><a class="dropdown-item" href="#">Silver</a></li>
            <li><a class="dropdown-item" href="#">Member</a></li>
        </ul>
    </div>
    <fieldset>
        <legend style="margin-top: 15px; margin-bottom: 15px">Thông tin khách hàng</legend>
        <table>
            <tr>
                <td>Họ tên:</td>
                <td><input type="text" name="customerName" id="customerName"></td>
            </tr>
            <tr>
                <td>Ngày sinh:</td>
                <td><input type="text" name="customerBirthday" id="customerBirthday"></td>
            </tr>
            <tr>
                <td>Giới tính:</td>
                <td><input type="text" name="customerGender" id="customerGender"></td>
            </tr>
            <tr>
                <td>Số CMND:</td>
                <td><input type="text" name="customerId" id="customerId"></td>
            </tr>
            <tr>
                <td>Số điện thoại:</td>
                <td><input type="text" name="customerPhoneNumber" id="customerPhoneNumber"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="customerEmail" id="customerEmail"></td>
            </tr>
            <tr>
                <td>Loại khách:</td>
                <td><input type="text" name="customerType" id="customerType"></td>
            </tr>
            <tr>
                <td>Địa chỉ:</td>
                <td><input type="text" name="customerAddress" id="customerAddress"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Thêm mới khách hàng"></td>
            </tr>
        </table>
    </fieldset>
</div>
<%@ include file="../common/include/footer.jsp" %>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
