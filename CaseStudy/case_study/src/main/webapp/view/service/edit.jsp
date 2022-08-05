<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 04/08/2022
  Time: 11:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Service</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<%@ include file = "../common/include/navbar.jsp" %>
<div class="container-fluid">
    <h1>Sửa thông tin dịch vụ</h1>
    <fieldset>
        <legend>Thông tin dịch vụ</legend>
        <table>
            <tr>
                <td>Mã dịch vụ:</td>
                <td><input type="text" name="idService" id="idService"></td>
            </tr>
            <tr>
                <td>Tên dịch vụ:</td>
                <td><input type="text" name="nameService" id="nameService"></td>
            </tr>
            <tr>
                <td>Diện tích sử dụng:</td>
                <td><input type="text" name="area" id="area"></td>
            </tr>
            <tr>
                <td>Chi phí thuê:</td>
                <td><input type="text" name="rentalCosts" id="rentalCosts"></td>
            </tr>
            <tr>
                <td>Số lượng người tối đa:</td>
                <td><input type="text" name="maxPeople" id="maxPeople"></td>
            </tr>
            <tr>
                <td>Kiểu thuê:</td>
                <td><input type="text" name="rentalType" id="rentalType"></td>
            </tr>
            <tr>
                <td>Tiêu chuẩn phòng:</td>
                <td><input type="text" name="roomStandard" id="roomStandard"></td>
            </tr>
            <tr>
                <td>Dịch vụ đi kèm:</td>
                <td><input type="text" name="accompaniedService" id="accompaniedService"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Sửa dịch vụ"></td>
            </tr>
        </table>
    </fieldset>
</div>
<%@ include file = "../common/include/footer.jsp" %>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
