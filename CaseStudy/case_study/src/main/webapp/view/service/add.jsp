<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 04/08/2022
  Time: 11:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Service</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<%@ include file="../common/include/navbar.jsp" %>
<div class="container-fluid">
    <h1>Thêm mới dịch vụ</h1>
<%--    <div class="dropdown">--%>
<%--        <a class="btn btn-success dropdown-toggle" href="#" role="button" id="dropdownMenuLink"--%>
<%--           data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--            Loại dịch vụ--%>
<%--        </a>--%>
<%--        <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">--%>
<%--            <li><a class="dropdown-item" href="#">Villa</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">House</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Room</a></li>--%>
<%--        </ul>--%>
<%--    </div>--%>
    <fieldset>
        <legend style="margin-top: 15px; margin-bottom: 15px">Thông tin dịch vụ</legend>
        <table>
            <tr>
                <td>Mã dịch vụ:</td>
                <td>
                    <div>
                        <select onchange="changeService(this.value)" name="idService" id="idService">
                            <option value="villa">Villa</option>
                            <option value="home">House</option>
                            <option value="room">Room</option>
                        </select>
                    </div>
                </td>
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
                <td><input type="submit" value="Tạo mới dịch vụ"></td>
            </tr>
        </table>
    </fieldset>
</div>
<%@ include file="../common/include/footer.jsp" %>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
    function changeService(value) {
        switch (value) {
            case "none":
                document.getElementById("s1").style.display = "none";
                document.getElementById("s2").style.display = "none";
                document.getElementById("s3").style.display = "none";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "none";
                break;
            case "villa":
                document.getElementById("s1").style.display = "table-row";
                document.getElementById("s2").style.display = "table-row";
                document.getElementById("s3").style.display = "table-row";
                document.getElementById("s4").style.display = "table-row";
                document.getElementById("s5").style.display = "none";
                break;
            case "home":
                document.getElementById("s1").style.display = "table-row";
                document.getElementById("s2").style.display = "table-row";
                document.getElementById("s3").style.display = "none";
                document.getElementById("s4").style.display = "table-row";
                document.getElementById("s5").style.display = "none";
                break;
            case "room":
                document.getElementById("s1").style.display = "none";
                document.getElementById("s2").style.display = "none";
                document.getElementById("s3").style.display = "none";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "table-row";
                break;
        }
    }
</script>
</body>
</html>
