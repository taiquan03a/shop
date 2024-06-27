<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/sidebar.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.min.js" integrity="sha512-eHx4nbBTkIr2i0m9SANm/cczPESd0DUEcfl84JpIuutE6oDxPhXvskMR08Wmvmfx5wUpVjlWdi82G5YLvqqJdA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/css/bootstrap.min.css" integrity="sha512-72OVeAaPeV8n3BdZj7hOkaPSEk/uwpDkaGyP4W2jSzAC8tfiO4LMEDWoL3uFp5mcZu+8Eehb4GhZWFwvrss69Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha512-Cy3gSrKCS8aJ7AIaammc0wLXyKRmTa8ntgHvU01Tuz4EdsqVgk/lKzFm/b/8RxOWBaoHI2uGLLU6rXMbqKcGHA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha512-FOS5ANNUsuvefA5Fm6hZBLsxqfF105LIysEgV8VNz29jZLVYIhI+MOLKPBmMXgkHhARFHf5pE7KbXOLE6TXW0A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap5.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/dataTables.select.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/select.bootstrap5.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/select/2.0.3/css/select.bootstrap5.css">

</head>
<body>
<div class="wrapper">
    <!-- Sidebar  -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <img src="/img/poly.png" alt="">
        </div>

        <ul class="list-unstyle components">
            <li>
                <i class="fa-solid fa-chart-simple"></i>
                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">Thống kê</a>
            </li>
            <li>
                <i class="fa-solid fa-money-bill"></i>
                <a href="#">Bán hàng tại quầy</a>
            </li>
            <li>
                <img src="/img/order.png" alt="">
                <a href="/getDonHang" data-toggle="collapse" aria-expanded="false">Quản lý đơn hàng</a>
            </li>
            <li>
                <img src="/img/sneaker.png" alt="">
                <a href="#">Quản lý sản phẩm</a>
            </li>
            <li>
                <i class="fa-solid fa-retweet"></i>
                <a href="#">Trả hàng</a>
            </li>
            <li>
                <i class="fa-solid fa-ticket"></i>
                <a href="#">Giảm giá</a>
            </li>
            <li>
                <i class="fa-solid fa-user-group"></i>
                <a href="#">Tài khoản</a>
            </li>
        </ul>
    </nav>
    <div class="w-100">
        <div class="d-flex justify-content-between w-100 align-items-center nav-bar">
            <button type="button" id="sidebarCollapse" style="height: 40px; color: black; background-color: none !important;" class="btn">
                <i class="fas fa-align-left"></i>
            </button>
            <div class="d-flex gap-3">
                <i class="fa-regular fa-bell"></i>
                <img src="/img/avatar.png" alt="">
            </div>

        </div>

        <!-- content -->
        <div style="width: 100%; background-color: #eee; padding: 20px;">
            <h3>Quản lý đơn hàng</h3>
            <form action="/filter">
                <div class="filter">
                    <div class="w-100 first">
                        <div class="text-container align-items-center">
                            <svg focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M15.5 14h-.79l-.28-.27A6.471 6.471 0 0 0 16 9.5 6.5 6.5 0 1 0 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path></svg>
                            <input type="text" name="search" id="search-input" placeholder="Tìm kiếm hóa đơn">
                        </div>
                        <div>
                            <select name="status" id="status">
                                <option value="0">Tất cả đơn hàng</option>
                                <c:forEach var="trangThai" items="${trangThais}">
                                    <option value="${trangThai.ID}">${trangThai.tenTrangThai}</option>

                                </c:forEach>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between gap-4">
                            <div class="function">Quét mã</div>
                            <a href="/create"><div class="function">Tạo hóa đơn</div></a>
                        </div>
                    </div>

                    <div class="w-100 second mt-4">
                        <div class="align-items-center w-50 date">
                            <input name="batDau" type="date" placeholder="Từ ngày">
                            <input name="ketThuc" placeholder="Đến ngày" type="date">
                        </div>
                        <div class="type d-flex gap-2 align-items-center" style="font-size: 14px;">
                            <div style="font-weight: 700; margin-bottom: 4px;">Loại:</div>
                            <input type="radio" id="html" name="type" value="0">
                            <label  for="html">Tất cả</label>
                            <input type="radio" id="css" name="type" value="1">
                            <label  for="css">Trực tuyến</label>
                            <input type="radio" id="javascript" name="type" value="2">
                            <label  for="javascript">Tại quầy</label>
                        </div>
                        <button type="submit" class="function">Filter</button>

                    </div>
                </div>
            </form>
            <div class="w-100 mt-5 d-flex justify-content-center align-items-center" style="background-color: fff; border-radius: 10px;">
                <table id="example" class="table table-striped p-5" style="width:100%">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Mã</th>
                        <th>Tổng SP</th>
                        <th>Tổng số tiền</th>
                        <th>Tên khách hàng</th>
                        <th>Ngày tạo</th>

                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                    </thead>
                    <tbody class="index">
                    <c:forEach var="hoaDon" items="${hoaDons}" varStatus="loop">
                    <tr>
                        <td> ${loop.index+1} </td>
                        <td>${hoaDon.maHoaDon}</td>
                        <td>${hoaDon.tongSp}</td>
                        <td>${hoaDon.tongTien}</td>
                        <td>${hoaDon.tenKH}</td>
                        <td>${hoaDon.ngayTao}</td>
                        <td>${hoaDon.trangThaiDon}</td>

                        <td style="text-align: center;"><a href="donHang/${hoaDon.ID}"><i class="fa-solid fa-pen-to-square" style="color: purple; font-size: 18px;"></i></td></a>
                    </tr>
                    </c:forEach>


                </table>
            </div>

        </div>

    </div>

</div>
</body>
</html>

<script>
    $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
        });
    });

    new DataTable('#example', {
        select: false,
        searching: false
    });
</script>