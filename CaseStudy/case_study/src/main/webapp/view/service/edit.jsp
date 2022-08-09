<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 04/08/2022
  Time: 11:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Service</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<%@ include file="../common/include/navbar.jsp" %>
<div class="container-fluid">
    <h1>Sửa thông tin dịch vụ</h1>
    <form action="/furama?action=editService" method="post">
        <fieldset>
            <legend>Thông tin dịch vụ</legend>
            <table class="form-control-lg">
                <tr>
                    <td>
                        <select class="form-select-lg" name="serviceTypeId">
                            <c:forEach var="facilityTypes" items="${facilityTypes}">
                                <c:choose>
                                    <c:when test="${facilityTypes.facilityTypeId==facility.idService}">
                                        <option value="${facilityTypes.facilityTypeId}"
                                                selected>${facilityTypes.facilityTypeName}</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="${facilityTypes.facilityTypeId}">${facilityTypes.facilityTypeName}</option>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label>Mã khách hàng:</label>
                        <input readonly class="form-control" type="text" name="facilityId" size="45"
                               value="${facility.idService}">
                    </td>
                </tr>
                <tr>
                    <td><label>Tên dịch vụ:</label>
                        <input class="form-control" type="text" name="name" size="45" value="${facility.name}">
                    </td>
                </tr>
                <tr>
                    <td><label>Diện tích sử dụng:</label>
                        <input class="form-control" type="text" name="area" size="45" value="${facility.area}">
                    </td>
                </tr>
                <tr>
                    <td><label>Chi phí thuê:</label>
                        <input class="form-control" type="text" name="cost" size="15" value="${facility.cost}">
                    </td>
                </tr>
                <tr>
                    <td><label>Số lượng người tối đa:</label>
                        <input class="form-control" type="text" name="maxPeople" size="15"
                               value="${facility.maxPeople}">
                    </td>
                </tr>
                <tr>
                    <td><label>Kiểu thuê:</label>
                        <input class="form-control" type="text" name="rentTypeId" size="15"
                               value="${facility.rentTypeId}">
                    </td>
                </tr>

                <tr id="s1">
                    <td><label>Tiêu chuẩn phòng:</label>
                        <input class="form-control" type="text" name="standardRoom" size="15"
                               value="${facility.standardRoom}">
                    </td>
                </tr>

                <tr id="s2">
                    <td><label>Mô tả tiện nghi khác:</label>
                        <input class="form-control" type="text" name="descriptionOfAmenities" size="15"
                               value="${facility.descriptionOfAmenities}">
                    </td>
                </tr>

                <tr id="s3">
                    <td><label>Diện tích hồ bơi:</label>
                        <input class="form-control" type="text" name="poolArea" size="15" value="${facility.poolArea}">
                    </td>
                </tr>

                <tr id="s4">
                    <td><label>Số tầng:</label>
                        <input class="form-control" type="text" name="numberOfFloors" size="15"
                               value="${facility.numberOfFloors}">
                    </td>
                </tr>

                <tr id="s5">
                    <td><label>Dịch vụ miễn phí đi kèm:</label>
                        <input class="form-control" type="text" name="freeService" size="15"
                               value="${facility.freeService}">
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <input class="form-control" type="submit" value="Sửa thông tin dịch vụ"/>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
<%@ include file="../common/include/footer.jsp" %>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
