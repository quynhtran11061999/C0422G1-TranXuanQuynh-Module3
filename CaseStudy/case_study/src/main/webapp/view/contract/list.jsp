<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 06/08/2022
  Time: 12:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Contract</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<%@ include file="../common/include/navbar.jsp" %>
<div class="row">
    <div class="col-lg-5">
        <h1>Danh sách hợp đồng</h1>
    </div>
    <div class="col-lg-5"></div>
    <div class="col-lg-2">
        <button type="button" class="btn btn-success" style="width: 100%;height: 100%" data-bs-toggle="modal"
                data-bs-target="#addContract">
            <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-plus-circle"
                 viewBox="0 0 16 16">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
            </svg>
            Thêm mới hợp đồng
        </button>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <table class="table table-success table-striped">
            <tr>
                <th>STT</th>
                <th>Dịch vụ</th>
                <th>Khách hàng</th>
                <th>Ngày bắt đầu</th>
                <th>Ngày kết thúc</th>
                <th>Tiền đặt cọc</th>
                <th>Tổng tiền</th>
                <th>Dịch vụ đi kèm</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Karaoke</td>
                <td>Diamond</td>
                <td>02/08/2022</td>
                <td>04/08/2022</td>
                <td>100$</td>
                <td>200$</td>
                <td>

                    <button type="button" class="btn btn-primary me-3" data-bs-toggle="modal"
                            data-bs-target="#addContact2">
                        +
                    </button>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#includedServices">
                        Danh sách các dịch vụ đi kèm
                    </button>

                </td>
            </tr>
        </table>
    </div>
</div>
<%--modal them moi hop dong--%>
<div class="modal fade" id="addContract" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-success" id="addEmployee1">Thêm mới hợp đồng</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="text-success">Dịch vụ</label>
                    <input type="text" class="form-control" required>
                </div>
                <div class="form-group">
                    <label class="text-success">Khách hàng</label>
                    <input type="text" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="startday" class="form-label text-success">Ngày bắt đầu </label>
                    <input type="date" class="form-control" id="startday" name="startday">
                </div>
                <div class="form-group">
                    <label for="startday" class="form-label text-success">Ngày bắt đầu </label>
                    <input type="date" class="form-control" id="endday" name="endday">
                </div>
                <div class="form-group">
                    <label class="text-success">Tiền đặt cọc</label>
                    <input type="text" class="form-control" required>
                </div>
                <div class="form-group">
                    <label class="text-success">Tổng tiền</label>
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
<%--modal +--%>
<div class="modal fade" id="addContact2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="">
                    <table class="table table-striped">
                        <tr>
                            <th>Tên dịch vụ đi kèm</th>
                            <th>Đơn vị</th>
                            <th>Giá tiền</th>
                            <th>Số lượng</th>

                        </tr>
                        <tr>
                            <td><input type="checkbox">Karaoke</td>
                            <td>Giờ</td>
                            <td>5000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox">Thuê xe máy</td>
                            <td>Giờ</td>
                            <td>7000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox">Thuê xe đạp</td>
                            <td>Giờ</td>
                            <td>8000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy bỏ</button>
                <button type="button" class="btn btn-primary">Thêm</button>
            </div>
        </div>
    </div>
</div>
<%--modal danh sach dich vu di kem--%>
<div class="modal fade" id="includedServices" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalEditLable">Danh sách dịch vụ đi kèm</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body container-fluid">
                <table class="table table-striped">
                    <tr>
                        <th>Tên dịch vụ đi kèm</th>
                        <th>Đơn vị</th>
                        <th>Giá tiền</th>
                        <th>Số lượng</th>
                    </tr>
                    <tr>
                        <td>Karaoke</td>
                        <td>Giờ</td>
                        <td>5000</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>Thuê xe máy</td>
                        <td>Giờ</td>
                        <td>7000</td>
                        <td>2</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<%@ include file="../common/include/footer.jsp" %>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
