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
    <form action="/furama?action=addService" method="post">
        <fieldset>
            <legend style="margin-top: 15px; margin-bottom: 15px">Thông tin dịch vụ</legend>
            <table class="form-control-lg">
                <tr>
                    <td>
                        <select class="form-select-lg" name="serviceTypeId" onchange="showServiceInput(this.value)">
                            <option value="None">Chọn loại dịch vụ</option>
                            <option value="1">Villa</option>
                            <option value="2">House</option>
                            <option value="3">Room</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label>Tên dịch vụ:</label>
                        <input class="form-control" type="text" name="name" size="45">
                        <div style="color:red;">${name}</div>
                    </td>
                </tr>
                <tr>
                    <td><label>Diện tích sử dụng:</label>
                        <input class="form-control" type="text" name="area" size="45">
                        <div style="color: red">${area}</div>
                    </td>
                </tr>
                <tr>
                    <td><label>Chi phí thuê:</label>
                        <input class="form-control" type="text" name="cost" size="15" >
                        <div style="color: red">${cost1}</div>
                    </td>
                </tr>
                <tr>
                    <td><label>Số lượng người tối đa:</label>
                        <input class="form-control" type="text" name="maxPeople" size="15" >
                    </td>
                </tr>
                <tr>
                    <td><label>Kiểu thuê:</label>
                        <input class="form-control" type="text" name="rentTypeId" size="15">
                    </td>
                </tr>

                <tr id="s1" style="display: none">
                    <td><label>Tiêu chuẩn phòng:</label>
                        <input class="form-control" type="text" name="standardRoom" size="15">
                    </td>
                </tr>

                <tr id="s2" style="display: none">
                    <td><label>Mô tả tiện nghi khác:</label>
                        <input class="form-control" type="text" name="descriptionOfAmenities" size="15">
                    </td>
                </tr>

                <tr id="s3" style="display: none">
                    <td><label>Diện tích hồ bơi:</label>
                        <input class="form-control" type="text" name="poolArea" size="15">
                    </td>
                </tr>

                <tr id="s4" style="display: none">
                    <td><label>Số tầng:</label>
                        <input class="form-control" type="text" name="numberOfFloors" size="15">
                        <div style="color: red">${numberOfFloors}</div>
                    </td>
                </tr>

                <tr id="s5" style="display: none">
                    <td><label>Dịch vụ miễn phí đi kèm:</label>
                        <input class="form-control" type="text" name="freeService" size="15">
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <input class="form-control" type="submit" value="Thêm mới dịch vụ"/>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
<%@ include file="../common/include/footer.jsp" %>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
    function showServiceInput(value) {
        switch (value) {
            case "None":
                document.getElementById("s1").style.display = "none";
                document.getElementById("s2").style.display = "none";
                document.getElementById("s3").style.display = "none";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "none";
                break;
            case "1":
                document.getElementById("s1").style.display = "table-row";
                document.getElementById("s2").style.display = "table-row";
                document.getElementById("s3").style.display = "table-row";
                document.getElementById("s4").style.display = "table-row";
                document.getElementById("s5").style.display = "none";
                break;
            case "2":
                document.getElementById("s1").style.display = "table-row";
                document.getElementById("s2").style.display = "table-row";
                document.getElementById("s3").style.display = "none";
                document.getElementById("s4").style.display = "table-row";
                document.getElementById("s5").style.display = "none";
                break;
            case "3":
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
