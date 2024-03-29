<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 04/08/2022
  Time: 9:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Furama</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

</head>
<body>
<%@ include file = "../view/common/include/navbar.jsp" %>
<div class="row bg-light p-0 col-lg-12">
    <div class="col-lg-3 p-0">
        <div class="card" style="width: 23rem;">
            <img src="https://furamavietnam.com/wp-content/uploads/2018/07/CULIRARY.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">CULINARY</h5>
                <p class="card-text">The resort’s culinary experience features a mixture of the authentic and locally inspired Vietnamese...</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
        <div class="card" style="width: 23rem;">
            <img src="https://furamavietnam.com/wp-content/uploads/2018/10/02.-ICP-ICP_Furama_Danang_-Ball-Room-4.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">MEETING & EVENT</h5>
                <p class="card-text">A well-appointed International Convention Palace with ballrooms can accommodate up to 1,000 people in style..</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
        <div class="card" style="width: 23rem;">
            <img src="https://furamavietnam.com/wp-content/uploads/2018/07/RECREATION.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">RECREATION</h5>
                <p class="card-text">A full range of Water Sports will keep you busy. Stop by the Water Sport House where our experienced staff...</p>
                <a href="#" class="btn btn-primary">Read more</a>
            </div>
        </div>
    </div>
    <div class="col-lg-8 p-0">
        <video autoplay muted height="100%">
            <source src="https://assets.mixkit.co/videos/preview/mixkit-aerial-view-of-a-blue-sea-with-big-clouds-2893-large.mp4"
                    type="video/mp4">
        </video>
    </div>
</div>
<%@ include file = "../view/common/include/footer.jsp" %>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
