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
                    <a href="" data-toggle="collapse" aria-expanded="false">Thống kê</a>
                </li>
                <li>
                    <i class="fa-solid fa-money-bill"></i>
                    <a href="#">Bán hàng tại quầy</a>
                </li>
                <li>
                    <img src="/img/order.png" alt="">
                    <a href="sidebar.jsp" data-toggle="collapse" aria-expanded="false">Quản lý đơn hàng</a>
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
                <h3>Quản lý đơn hàng / HD10</h3>
                <section class="mt-5">
                    <h3 style="margin-top: -30px; padding-bottom: 15px;" class="line-bottom">Lịch sử đơn hàng</h3>
                    <div class="text">
                    <c:forEach var="trangThai" items="${detail.trangThaiDonList}">
                      <div class="one">
                        <h4>${trangThai.tenTrangThai}</h4>
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
                            <div class="d-flex justify-content-between gap-4">
                                <a style="color: #ffa500 !important;" href="http://localhost:8080/donHangUP/${detail.id}" id="confirmBtn" class="function" methods="post">Chuyển sang trạng thái kế tiếp</a>
                                <a style="color: #fff !important;" href="http://localhost:8080/donHangUP/${detail.id}" id="cancelBtn" class="function cancel" methods="post">Hủy Đơn</a>
                            </div>
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
                                            <td>Tran Thuy Quynh</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>  

                    <div class="filter mt-5">
                        <h3 style=" padding-bottom: 15px;" class="line-bottom">Danh sách sản phẩm</h3>
                        <div class="w-100">
                            <c:forEach var="hoaDon" items="${detail.hoaDonChiTietList}">
                            <div class="row d-flex align-items-center line-bottom">
                                <div class="col-3 d-flex">
                                    <img style="width: 60px; height: 60px; margin: auto;" src="/img/sneaker.png" alt="">
                                </div>
                                <div class="col-3">
                                    <div>${hoaDon.sanPhamChiTiet.sanPham.tenSanPham}</div>
                                    <div style="color: red;">${hoaDon.donGia} đ</div>
                                    <div>Size ${hoaDon.sanPhamChiTiet.kichCo.tenKichCo}</div>
                                    <div>x${hoaDon.soLuong}</div>
                                </div>
                                <div class="col-3">
                                    <div class="quantity">
                                        <button class="minus" aria-label="Decrease">&minus;</button>
                                        <input type="number" class="input-box" value="1" min="1" max="100">
                                        <button class="plus" aria-label="Increase">&plus;</button>
                                      </div>    
                                </div>
                                <div class="col-3" style="font-weight: 700; color: red;">${hoaDon.thanhTien} VNĐ</div>
                            </div>
                            </c:forEach>
                        </div>
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
                                    <b>${detail.tongTienHang} VNĐ</b>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <div>Giảm giá</div>
                                    <b>${detail.giamGia} VNĐ</b>
                                </div> 
                                <div class="d-flex justify-content-between">
                                    <div>Phí vận chuyển</div>
                                    <b>${detail.phiVanChuyen} VNĐ</b>
                                </div>
                                <i>Miễn phí vận chuyển với đơn hàng có giá trị trên 1.000.000vnđ</i> 
                                <div class="line-bottom"></div>
                                <div  class="d-flex justify-content-between">
                                    <b>Tổng tiền</b>
                                    <b style="color: red;">${detail.tongTien}VND</b>
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

    (function () {
  const quantityContainer = document.querySelector(".quantity");
  const minusBtn = quantityContainer.querySelector(".minus");
  const plusBtn = quantityContainer.querySelector(".plus");
  const inputBox = quantityContainer.querySelector(".input-box");

  updateButtonStates();

  quantityContainer.addEventListener("click", handleButtonClick);
  inputBox.addEventListener("input", handleQuantityChange);

  function updateButtonStates() {
    const value = parseInt(inputBox.value);
    minusBtn.disabled = value <= 1;
    plusBtn.disabled = value >= parseInt(inputBox.max);
  }

  function handleButtonClick(event) {
    if (event.target.classList.contains("minus")) {
      decreaseValue();
    } else if (event.target.classList.contains("plus")) {
      increaseValue();
    }
  }

  function decreaseValue() {
    let value = parseInt(inputBox.value);
    value = isNaN(value) ? 1 : Math.max(value - 1, 1);
    inputBox.value = value;
    updateButtonStates();
    handleQuantityChange();
  }

  function increaseValue() {
    let value = parseInt(inputBox.value);
    value = isNaN(value) ? 1 : Math.min(value + 1, parseInt(inputBox.max));
    inputBox.value = value;
    updateButtonStates();
    handleQuantityChange();
  }

  function handleQuantityChange() {
    let value = parseInt(inputBox.value);
    value = isNaN(value) ? 1 : value;

    // Execute your code here based on the updated quantity value
    console.log("Quantity changed:", value);
  }
})();

</script>

<script>
    function handleButtonClick(s) {
        if( ! confirm("Xác nhận thay đổi trạng thái?") ){
            e.preventDefault(); 
        } else {
            window.location.href = s
        }
    }

</script>