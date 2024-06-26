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
    <link rel="stylesheet" href="/css/detail.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.min.js" integrity="sha512-eHx4nbBTkIr2i0m9SANm/cczPESd0DUEcfl84JpIuutE6oDxPhXvskMR08Wmvmfx5wUpVjlWdi82G5YLvqqJdA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/css/bootstrap.min.css" integrity="sha512-72OVeAaPeV8n3BdZj7hOkaPSEk/uwpDkaGyP4W2jSzAC8tfiO4LMEDWoL3uFp5mcZu+8Eehb4GhZWFwvrss69Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha512-Cy3gSrKCS8aJ7AIaammc0wLXyKRmTa8ntgHvU01Tuz4EdsqVgk/lKzFm/b/8RxOWBaoHI2uGLLU6rXMbqKcGHA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha512-FOS5ANNUsuvefA5Fm6hZBLsxqfF105LIysEgV8VNz29jZLVYIhI+MOLKPBmMXgkHhARFHf5pE7KbXOLE6TXW0A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">

    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap5.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/dataTables.select.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/select.bootstrap5.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/select/2.0.3/css/select.bootstrap5.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
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
                <a href="" data-toggle="collapse" aria-expanded="false">Thống kê</a>
            </li>
            <li>
                <i class="fa-solid fa-money-bill"></i>
                <a href="#">Bán hàng tại quầy</a>
            </li>
            <li>
                <img src="/img/order.png" alt="">
                <a href="/getDonHang" >Quản lý đơn hàng</a>
            </li>
            <li>
                <img src="/img/sneaker.png" alt="">
                <a href="/getDonHang">Quản lý sản phẩm</a>
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
            <button type="button" id="sidebarCollapse" style="height: 40px; color: black; background: none !important;" class="btn">
                <i class="fas fa-align-left"></i>
            </button>
            <div class="d-flex gap-3">
                <i class="fa-regular fa-bell"></i>
                <img src="/img/avatar.png" alt="">
            </div>

        </div>

        <!-- content -->
        <div style="width: 100%; background-color: #eee; padding: 20px;">
            <h3>Quản lý đơn hàng / ${detail.maHoaDon}</h3>
            <section class="mt-5">
                <h3 style="margin-top: -30px; padding-bottom: 15px;" class="line-bottom">Lịch sử đơn hàng</h3>
                <div class="text">
                    <c:forEach var="trangThai" items="${detail.timeLineDTOList}">
                        <div class="one">
                            <h4>${trangThai.trangThaiDon.tenTrangThai}</h4>
                            <p>${trangThai.time}</p>
                        </div>
                    </c:forEach>
                </div>

                <!-- <div class="dote">
                  <div></div>
                  <div></div>
                  <div></div>
                  <div></div>
                  <div></div>
                </div> -->
                <hr />
            </section>

            <div class="filter mt-5">
                <div class="w-100 first">
                    <c:choose>
                        <c:when test="${detail.trangThaiDon.ID < 3}">
                            <div class="d-flex justify-content-between gap-4">
                                <a style="color: #ffa500 !important;" href="http://localhost:8080/donHangUP/${detail.id}" id="confirmBtn" class="function" >Chuyển sang trạng thái kế tiếp</a>
                                <a style="color: #fff !important;" href="http://localhost:8080/donHangHuy/${detail.id}" id="cancelBtn" class="function cancel" >Hủy Đơn</a>
                            </div>
                            <br />
                        </c:when>
                        <c:otherwise>
                            <div class="d-flex justify-content-between gap-4">
                                <a style="color: #ffa500 !important;" href="http://localhost:8080/donHangUP/${detail.id}" id="confirmBtn" class="function" >Xem chi tiết</a>
                            </div>
                            <br />
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            <div class="filter mt-5">
                <h3 style=" padding-bottom: 15px;" class="line-bottom">Thông tin đơn hàng / Đơn tại quầy</h3>
                <div class="w-100">
                    <div class="mt-4 d-flex justify-content-between w-100 gap-4">
                        <div ><b>Mã:</b> ${detail.id}</div>
                        <div ><b>Tên khách hàng:</b> ${detail.tenKH}</div>
                        <div ><b>Trạng thái: </b> ${detail.trangThai}</div>
                    </div>
                    <div class="mt-4 d-flex justify-content-between w-100 gap-4">
                        <div ><b>SĐT:</b> ${detail.sdt}</div>
                        <div ><b>Loại:</b> Tại quầy</div>
                        <div ><b>Tên người nhận:</b> ${detail.tenKH}</div>
                    </div>
                </div>
            </div>
            <div class="filter mt-5">
                <h3 style=" padding-bottom: 15px;" class="line-bottom">Lịch sử thanh toán</h3>
                <div class="w-100">
                    <table id="" class="table p-5" style="width:100%">
                        <thead>
                        <tr>
                            <th>Số tiền</th>
                            <th>Còn lại</th>
                            <th>Thời gian </th>
                            <th>Loại giao dịch</th>
                            <th>PTTT</th>
                            <th>Trạng thái</th>
                            <th>Ghi chú</th>
                            <th>Nhân viên xác nhận</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="thanhToan" items="${detail.lichSuThanhToanList}">
                            <tr>
                                <td>${thanhToan.soTienThanhToan} đ</td>
                                <td>${thanhToan.soTienConLai}</td>
                                <td>${thanhToan.ngayTao}</td>
                                <td>Thanh toán</td>
                                <td>${thanhToan.hoaDon.hinhThucThanhToan}</td>
                                <td>Thanh cong</td>
                                <td></td>
                                <td>${thanhToan.nguoiTao}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="filter mt-5">
                <div class="d-flex justify-content-between line-bottom">
                    <h3 style=" padding-bottom: 15px;">Danh sách sản phẩm</h3>
                    <c:if test="${detail.trangThaiDon.ID < 3}">
                        <a style="cursor: pointer;"><div data-toggle="modal" data-toggle="modal" data-target="#myModal" class="function">Thêm sản phẩm</div></a>
                    </c:if>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-log modal-dialog-centered mt-4" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="myModalLabel">Tìm kiếm sản phẩm</h4>
                                </div>
                                <div class="modal-body">
                                    <form action="">
                                    </form>
                                    <div class="w-100 d-flex justify-content-center align-items-center" style="background-color: #fff; border-radius: 10px;">
                                        <table id="example" class="table table-striped p-5" style="width:100%">
                                            <thead>
                                            <tr>
                                                <th>Ảnh</th>
                                                <th>Tên</th>
                                                <th>Giới tính</th>
                                                <th>Màu sắc</th>
                                                <th>Chất liệu</th>
                                                <th>Thương hiệu</th>
                                                <th>Size</th>
                                                <th>Dáng áo</th>
                                                <th>Cổ áo</th>
                                                <th>Tay áo</th>
                                                <th>Họa tiết</th>
                                                <th>Giá bán</th>
                                                <th>Còn lại</th>
                                                <th>Hành động</th>
                                            </tr>
                                            </thead>
                                            <tbody class="index">
                                            <c:forEach var="sanPham" items="${sanPhams}">
                                            <tr>
                                                <td><img src="/img/sneaker.png" style="width: 50px; height: 50px;" alt=""></td>
                                                <td>${sanPham.sanPham.tenSanPham}</td>
                                                <td>${sanPham.gioiTinh}</td>
                                                <td>${sanPham.mauSac.tenMauSac}</td>
                                                <td>${sanPham.chatLieu.tenChatLieu}</td>
                                                <td>${sanPham.thuongHieu.tenThuongHieu}</td>
                                                <td>${sanPham.kichCo.tenKichCo}</td>
                                                <td>${sanPham.dangAo.tenKieuDangAo}</td>
                                                <td>${sanPham.coAo.tenLoaiCoAo}</td>
                                                <td>${sanPham.tayAo.tenKieuTayAo}</td>
                                                <td>${sanPham.hoaTiet.tenDangAo}</td>
                                                <td>${sanPham.giaBan}</td>
                                                <td>${sanPham.soLuong}</td>
                                                <td><a href="#" data-dismiss="modal"><div class="function" onclick="handleSelect(${sanPham.ID})">Chọn</div></a></td>
                                            </tr>
                                            </c:forEach>

                                        </table>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="w-100">
                    <c:forEach var="hoaDon" items="${detail.hoaDonChiTietList}">
                        <div class="row d-flex align-items-center line-bottom">
                            <div class="col-3 d-flex">
                                <img style="width: 60px; height: 60px; margin: auto;" src="${hoaDon.sanPhamChiTiet.anh.anh}" alt="">
                            </div>
                            <div class="col-3">
                                <div>${hoaDon.sanPhamChiTiet.sanPham.tenSanPham}</div>
                                <div style="color: red;">${hoaDon.donGia} đ</div>
                                <div>Size ${hoaDon.sanPhamChiTiet.kichCo.tenKichCo}</div>
                                <div class="sl-${hoaDon.sanPhamChiTiet.ID}">x${hoaDon.soLuong}</div>
                            </div>
                            <div class="col-3">
                                <div class="quantity" style="display: block">
                                    <input style="width: 100px;" onblur="updateQuanlity(${hoaDon.sanPhamChiTiet.ID}, ${hoaDon.donGia}, ${hoaDon.sanPhamChiTiet.soLuong})" id = "${hoaDon.sanPhamChiTiet.ID}"
                                           type="number" class="input-box" value="${hoaDon.soLuong}" min="1" max="100" <c:if test="${detail.trangThaiDon.ID >= 3}"> readonly </c:if> >
                                    <span style="color: red; margin-left: 5px" id="message-${hoaDon.sanPhamChiTiet.ID}"></span>
                                </div>
                            </div>
                            <div class="col-3 price-${hoaDon.sanPhamChiTiet.ID}" style="font-weight: 700; color: red;">${hoaDon.thanhTien} VNĐ</div>
                        </div>
                    </c:forEach>
                </div>
                <div class="w-100">
                    <c:forEach var="sanPham" items="${sanPhams}">
                        <div id="item-${sanPham.ID}" class="row d-flex align-items-center line-bottom d-none">
                            <div class="col-3 d-flex">
                                <img style="width: 60px; height: 60px; margin: auto;" src="/img/sneaker.png" alt="">
                            </div>
                            <div class="col-3">
                                <div>${sanPham.sanPham.tenSanPham}</div>
                                <div style="color: red;">${sanPham.giaBan} đ</div>
                                <div>Size ${sanPham.kichCo.tenKichCo}</div>
                                <div class="sl-${sanPham.ID}">x1</div>
                            </div>
                            <div class="col-3">
                                <div class="quantity" style="display: block !important;">
                                    <input type="number" onblur="updateQuanlity(${sanPham.ID}, ${sanPham.giaBan}, ${sanPham.soLuong})" id = "${sanPham.ID}" style="width: 100px; margin-right: 210px" class="input-box" value="1" min="1">
                                    <span style="color: red; margin-left: 5px" id="message-${sanPham.ID}"></span>
                                </div>
                            </div>
                            <div class="col-2 price-${sanPham.ID}" style="font-weight: 700; color: red;"> ${sanPham.giaBan} VNĐ</div>
                        </div>
                    </c:forEach>
                </div>
                <form:form action="/donHang/${detail.id}" modelAttribute="updateDonHangRequest" method="post" enctype="multipart/form-data">
                    <c:choose>
                        <c:when test="${detail.trangThaiDon.ID < 3}">
                            <button id="btn-submit" style="background-color: #ffa500; float: right; width: 80px" type="submit" class="btn btn-primary d-none">Lưu</button>
                            <input type="text" name="list_product" value="" class="form-control d-none" id="list_product">
                            <br />
                        </c:when>
                        <c:otherwise>
                            <button id="btn-submit" style="background-color: #ffa500; float: right; width: 80px" type="submit" class="btn btn-primary d-none">Lưu</button>
                            <input type="text" name="list_product" value="" class="form-control d-none" id="list_product" readonly>
                            <br />
                        </c:otherwise>
                    </c:choose>
                </form:form>
            </div>
            <div class="filter mt-5">
                <div class="row d-flex justify-content-between">
                    <div class="col-3">
                        <div class="d-flex justify-content-between">
                            <div>Phiếu giảm giá</div>
                            <b>${detail.tenGiamGia}</b>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div>Giảm giá từ cửa hàng</div>
                            <b>${detail.giaTriGiamGia}</b>
                        </div>
                    </div>

                    <div class="col-4" style="margin-left: 300px;">
                        <div class="d-flex justify-content-between">
                            <div>Tổng tiền hàng</div>
                            <b id = "prices">${detail.tongTienHang} VNĐ</b>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div>Giảm giá</div>
                            <b id="money-discount">${detail.giamGia} VNĐ</b>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div>Phí vận chuyển</div>
                            <b>${detail.phiVanChuyen} VNĐ</b>
                        </div>
                        <i>Miễn phí vận chuyển với đơn hàng có giá trị trên 1.000.000vnđ</i>
                        <div class="line-bottom"></div>
                        <div  class="d-flex justify-content-between">
                            <b >Tổng tiền</b>
                            <b id="total-money" style="color: red;">${detail.tongTien}VND</b>
                        </div>
                    </div>
                </div>
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

    function handleButtonClick(s) {
        if( ! confirm("Xác nhận thay đổi trạng thái?") ){
            event.preventDefault();
        } else {
            window.location.href = s
        }
    }
</script>

<script>
    getListProductSelected()
    updateTotalPrice()
    setValueInput()
    function getListProductSelected(){
        const newObject = JSON.parse(localStorage.getItem('quanlity')) ?? {};
        <c:forEach var="hoaDon" items="${detail.hoaDonChiTietList}">
        newObject[${hoaDon.sanPhamChiTiet.ID}] = ${hoaDon.soLuong};
        </c:forEach>
        localStorage.setItem('quanlity', JSON.stringify(newObject));
    }

    window.addEventListener('DOMContentLoaded', function () {
        var listItemSelected = JSON.parse(localStorage.getItem('selected')) ?? [];

        <c:forEach var="sanPham" items="${sanPhams}">
        if (listItemSelected.includes(${sanPham.ID})){
            document.getElementById('item-${sanPham.ID}').classList.remove("d-none")
        }
        </c:forEach>
    });

    function updateQuanlity(n, price, amount) {
        var idObject = JSON.parse(localStorage.getItem('quanlity')) ?? {};
        idObject[n] = document.getElementById(n).value;
        if(document.getElementById(n).value <= amount){
            document.getElementById('message-' + n).innerHTML = ''
            localStorage.setItem('quanlity', JSON.stringify(idObject));
            document.querySelector(".price-" + n).innerHTML = document.getElementById(n).value * price + " VNĐ";
            document.querySelector(".sl-" + n).innerHTML = 'x'+document.getElementById(n).value
            updateTotalPrice()
            setValueInput(1)
        }else{
            document.getElementById('message-' + n).innerHTML = 'Không đủ hàng!'
        }

    }

    function handleSelect(s) {
        var storedArray =  JSON.parse(localStorage.getItem('quanlity')) ?? {};
        const selectedObj = JSON.parse(localStorage.getItem('selected')) ?? [];
        if (!storedArray.hasOwnProperty(s)) selectedObj.push(s)
        if (!storedArray.hasOwnProperty(s)) storedArray[s] = 1;
        localStorage.setItem('selected', JSON.stringify(selectedObj));
        localStorage.setItem('quanlity', JSON.stringify(storedArray));
        location.reload();

    }

    function updateTotalPrice() {
        totalPrice = 0
        var listItemSelected = JSON.parse(localStorage.getItem('quanlity')) ?? {};
        <c:forEach var="sanPham" items="${sanPhams}">
        if (listItemSelected.hasOwnProperty(${sanPham.ID})) {
            var s =  document.querySelector('.price-${sanPham.ID}').innerText.trim()
            var priceValue = s.split(" ")[0];
            console.log(s)
            totalPrice += parseInt(priceValue)
        }
        </c:forEach>
        document.getElementById('prices').innerHTML = totalPrice.toFixed(1) + " VNĐ"
        document.getElementById('money-discount').innerHTML = totalPrice*(0.2).toFixed(1) + " VNĐ"
        document.getElementById('total-money').innerHTML = (totalPrice*(1-0.2) + ${detail.phiVanChuyen}).toFixed(1) + " VNĐ"
    }

    function setValueInput(check = 0){
        var idValue = localStorage.getItem('quanlity');
        if(localStorage.getItem('selected') || check === 1) document.getElementById('btn-submit').classList.remove('d-none')
        var inputElement = document.getElementById('list_product');
        inputElement.value = idValue;
    }
</script>

<script>
    var btnSubmit = document.getElementById('btn-submit');
    btnSubmit.addEventListener('click', function(event) {
        event.preventDefault();
        localStorage.clear();
        event.target.form.submit();
    });
</script>