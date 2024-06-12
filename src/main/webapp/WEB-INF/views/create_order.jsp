<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
                <a href="sidebar.html" data-toggle="collapse" aria-expanded="false">Quản lý đơn hàng</a>
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
            <div class="filter mt-3">
                <div class="d-flex justify-content-between line-bottom">
                    <h3 style=" padding-bottom: 15px;">Danh sách sản phẩm</h3>
                    <a style="cursor: pointer;"><div data-toggle="modal" data-toggle="modal" data-target="#myModal" class="function">Thêm sản phẩm</div></a>

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
                    <c:forEach var="sanPham" items="${sanPhams}">
                    <div id="item-${sanPham.ID}" class="row d-flex align-items-center line-bottom">
                        <div class="col-3 d-flex">
                            <img style="width: 60px; height: 60px; margin: auto;" src="/img/sneaker.png" alt="">
                        </div>
                        <div class="col-2">
                            <div>${sanPham.sanPham.tenSanPham}</div>
                            <div style="color: red;">${sanPham.giaBan} đ</div>
                            <div>Size ${sanPham.kichCo.tenKichCo}</div>
                            <div class="sl-${sanPham.ID}">x1</div>
                        </div>
                        <div class="col-3">
                            <div class="quantity" style="display: block !important;">
                                <input type="number" onblur="updateQuanlity(${sanPham.ID}, ${sanPham.giaBan}, ${sanPham.soLuong})" id = "${sanPham.ID}" style="width: 125px; margin-right: 210px" class="input-box" value="1" min="1">
                                <span style="color: red; margin-left: 5px" id="message-${sanPham.ID}"></span>
                            </div>
                        </div>
                        <div class="col-2 price-${sanPham.ID}" style="font-weight: 700; color: red;"> ${sanPham.giaBan} VNĐ</div>
                        <div class="col-2" style="cursor: pointer; color: red;" onclick="handleButtonDelete(${sanPham.ID})"><i class="fa-solid fa-trash"></i></div>
                    </div>
                    </c:forEach>
                </div>
            </div>

            <div class="filter mt-5">
                <div class="d-flex justify-content-between line-bottom">
                    <h3 style=" padding-bottom: 15px;">Thông tin khách hàng</h3>
                </div>
                <div class="row d-flex justify-content-between">
                    <div class="col-6">
                        <form>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Tên khách hàng</label>
                                <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Số điện thoại</label>
                                <input type="text" name="phone" class="form-control" id="exampleInputPassword1" required>
                            </div>
                            <div class="type d-flex gap-2 align-items-center" style="font-size: 14px;">
                                <div style="font-weight: 700; margin-bottom: 4px;">Phương thức thanh toán:</div>
                                <input type="radio" id="css" name="type" value="2" required>
                                <label  for="css">Chuyển khoản</label>
                                <input type="radio" id="javascript" name="type" value="3" required>
                                <label  for="javascript">Tiền mặt</label>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Tiền khách trả</label>
                                <input type="number" name="phone" class="form-control" id="total_price" required>
                                <label for="exampleInputPassword1" class="form-label">Còn Dư</label>
                                <input type="number" name="phone" value="0" class="form-control" id="return" readonly>
                            </div>
                            <div class="mb-3" style="display: block;">
                                <label for="exampleInputPassword1" class="form-label"></label>
                                <input type="text" name="list_product" value="" class="form-control" id="list_product">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Ghi chú</label>
                                <textarea id="w3review" name="note" rows="4" class="w-100" required></textarea>
                            </div>
                            <button style="background-color: #ffa500;" type="submit" class="btn btn-primary">Xác nhận</button>
                        </form>
                    </div>

                    <div class="col-4">
                        <div class="d-flex mb-3 gap-3">
                            <input style="padding: 5px 5px; border-radius: 4px; width: 48%; border: 2px solid #ccc;" type="text" placeholder="Mã giảm giá">
                            <input style="padding: 5px 5px; border-radius: 4px; width: 48%; border: 2px solid #ccc;" type="text" placeholder="Phần trăm giảm giá" readonly>
                        </div>
                        <div class="d-flex mb-3 justify-content-between">
                            <div>Tổng tiền hàng</div>
                            <b>2.377.232 VNĐ</b>
                        </div>
                        <div class="d-flex mb-3 justify-content-between">
                            <div>Giảm giá</div>
                            <b>250.000 VNĐ</b>
                        </div>
                        <i>Miễn phí vận chuyển với đơn hàng có giá trị trên 1.000.000vnđ</i>
                        <div class="line-bottom"></div>
                        <div  class="d-flex justify-content-between">
                            <b>Tổng tiền</b>
                            <b style="color: red;">2.123.323 VND</b>
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
        searching: true
    });

</script>

<script>
    function handleButtonDelete(s) {
        console.log(localStorage.getItem('id'));
        if( ! confirm("Bạn có muốn xóa sản phẩm này?") ){
            event.preventDefault();
        } else {
            var storedArray = localStorage.getItem('quanlity');
            var newObject = {};
            newObject = JSON.parse(storedArray);
            if (newObject.hasOwnProperty(s)) {
                delete newObject[s];
            }
            localStorage.setItem('quanlity', JSON.stringify(newObject));
            setValueInput();
            location.reload();

        }
    }

    function handleSelect(s) {
        var storedArray = localStorage.getItem('quanlity');
        var newObject = {};
        if (!storedArray) newObject[s] = 1;
        else {
            newObject = JSON.parse(storedArray);
            if (!newObject.hasOwnProperty(s)) newObject[s] = 1;
        }

        localStorage.setItem('quanlity', JSON.stringify(newObject));
        setValueInput()
        location.reload();
        console.log(localStorage.getItem('quanlity'));

    }

    var totalPriceInput = document.getElementById('total_price');
    var returnInput = document.getElementById('return');
    var totalPrice = 1000000;
    totalPriceInput.addEventListener('input', function() {
        var customerPayment = parseFloat(totalPriceInput.value);
        var change = customerPayment - totalPrice;
        returnInput.value = isNaN(returnInput.value) ? 0 : change;
    });

    function updateQuanlity(n, price, amount) {
        var idObject = JSON.parse(localStorage.getItem('quanlity'));
        idObject[n] = document.getElementById(n).value;
        if(document.getElementById(n).value < amount){
            document.getElementById('message-' + n).innerHTML = ''
            localStorage.setItem('quanlity', JSON.stringify(idObject));
            document.querySelector(".price-" + n).innerHTML = document.getElementById(n).value * price + " VNĐ";
            document.querySelector(".sl-" + n).innerHTML = 'x'+document.getElementById(n).value
            updateTotalPrice()
            setValueInput()
        }else{
            document.getElementById('message-' + n).innerHTML = 'Không đủ hàng!'
        }

    }

    function setValueInput(){
        var idValue = localStorage.getItem('quanlity');
        var inputElement = document.getElementById('list_product');
        inputElement.value = idValue;
        console.log(document.getElementById('list_product').value);

    }

    function updateTotalPrice() {
        console.log(123)
        totalPrice = 0
        var listItemSelected = JSON.parse(localStorage.getItem('quanlity'));
        <c:forEach var="sanPham" items="${sanPhams}">
        if (!listItemSelected.hasOwnProperty(${sanPham.ID})) {
            console.log(document.querySelector('.price-${sanPham.ID}').value)
        }
        </c:forEach>
    }

    window.addEventListener('DOMContentLoaded', function () {
        var listItemSelected = JSON.parse(localStorage.getItem('quanlity'));

        <c:forEach var="sanPham" items="${sanPhams}">
        if (!listItemSelected.hasOwnProperty(${sanPham.ID})){
                document.getElementById('item-${sanPham.ID}').classList.add("d-none")
            }
        </c:forEach>
    });
</script>