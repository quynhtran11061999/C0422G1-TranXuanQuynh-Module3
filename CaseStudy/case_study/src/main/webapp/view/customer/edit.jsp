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
        <p style="color: red">${errorEdit}</p>
        <fieldset>
            <legend style="margin-top: 15px; margin-bottom: 15px">Thông tin khách hàng</legend>
            <table>
                <tr>
                    <td>Mã khách hàng:</td>
                    <td><input type="text" readonly name="idCustomer" id="idCustomer"
                               value="${listCustomer.idCustomer}"></td>
                </tr>
                <tr>
                    <td>Loại khách:</td>
                    <td><input type="text" name="customerTypeId" id="customerTypeId"
                               value="${listCustomer.customerTypeId}"></td>
                </tr>
                <tr>
                    <td>Họ tên:</td>
                    <td><input type="text" name="name" id="name" value="${listCustomer.name}"></td>
                </tr>
                <tr>
                    <td>Ngày sinh:</td>
                    <td><input type="text" name="birthday" id="birthday" value="${listCustomer.birthday}"></td>
                </tr>
                <tr>
                    <td>Giới tính:</td>
                    <td><input type="text" name="gender" id="gender" value="${listCustomer.gender}"></td>
                </tr>
                <tr>
                    <td>Số CMND:</td>
                    <td><input type="text" name="idCard" id="idCard" value="${listCustomer.idCard}"></td>
                </tr>
                <tr>
                    <td>Số điện thoại:</td>
                    <td><input type="text" name="phoneNumber" id="phoneNumber" value="${listCustomer.phoneNumber}"></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" id="email" value="${listCustomer.email}"></td>
                </tr>
                <tr>
                    <td>Địa chỉ:</td>
                    <td><input type="text" name="address" id="address" value="${listCustomer.address}"></td>
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
