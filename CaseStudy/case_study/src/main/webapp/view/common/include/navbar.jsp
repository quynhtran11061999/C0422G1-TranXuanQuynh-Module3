<%--
  Created by IntelliJ IDEA.
  User: quynh
  Date: 05/08/2022
  Time: 11:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <nav class="navbar navbar-light bg-success">
            <div class="col-lg-3">
                <a class="navbar-brand" href="#">
                    <img src="https://printgo.vn/uploads/file-logo/1/512x512.b34453a20c19849144c890211fcce945.ai.1.png"
                         alt="" width="90" height="100" class="d-inline-block align-text-top">
                </a>
            </div>
            <div class="col-lg-4"></div>
            <div class="col-lg-3 text-white text-lg-start">
                <p>103 - 105 Vo Nguyen Giap Street, Khue My Ward, Ngu Hanh Son District, Danang City, Vietnam</p>
                <p>84-236-3847 333/888</p>
            </div>
            <div class="col-lg-2 text-white text-lg-start" style="margin-bottom: 25px">
                <p>Trần Xuân Quỳnh</p>
                <p>C0422G1</p>
            </div>
        </nav>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #20c997">
            <div class="container-fluid">
                <a class="navbar-brand" href="/furama">Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/employee?action=displayEmployee">Employee</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownCustomer" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                Customer
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/customer?action=displayCustomer">List Customer</a></li>
                                <li><a class="dropdown-item" href="/customer?action=addCustomer">Add Customer</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownService" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                Service
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/furama?action=displayService">List Service</a></li>
                                <li><a class="dropdown-item" href="/furama?action=addService">Add Service</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Contract</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success text-white" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
</div>
<%--<script src="bootstrap/js/bootstrap.bundle.min.js"></script>--%>
</body>
</html>
