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
    <title>Edit Customer</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<%@ include file="../common/include/navbar.jsp" %>
<div class="container-fluid">
    <form action="/customer?action=updateCustomer" method="post">
        <h1>Sửa thông tin khách hàng</h1>
        <fieldset>
            <legend style="margin-top: 15px; margin-bottom: 15px">Thông tin khách hàng</legend>
            <table>
                <tr>
                    <td>Loại khách:</td>
                    <td><input type="text" name="customerTypeId" id="customerTypeId"></td>
                </tr>
                <tr>
                    <td>Họ tên:</td>
                    <td><input type="text" name="name" id="name"></td>
                </tr>
                <tr>
                    <td>Ngày sinh:</td>
                    <td><input type="text" name="birthday" id="birthday"></td>
                </tr>
                <tr>
                    <td>Giới tính:</td>
                    <td><input type="text" name="gender" id="gender"></td>
                </tr>
                <tr>
                    <td>Số CMND:</td>
                    <td><input type="text" name="idCard" id="idCard"></td>
                </tr>
                <tr>
                    <td>Số điện thoại:</td>
                    <td><input type="text" name="phoneNumber" id="phoneNumber"></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" id="email"></td>
                </tr>
                <tr>
                    <td>Địa chỉ:</td>
                    <td><input type="text" name="address" id="address"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Sửa thông tin khách hàng"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
<%@ include file="../common/include/footer.jsp" %>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
