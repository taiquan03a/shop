package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Table(name = "hoa_don")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long ID;
    @Column(name = "ngay_tao")
    private Date ngayTao;
    @Column(name = "ngay_cap_nhat")
    private Date ngayCapNhat;
    @Column(name = "nguoi_tao")
    private String nguoiTao;
    @Column(name = "nguoi_cap_nhat")
    private String nguoiCapNhat;
    @Column(name = "tong_tien_don_hang")
    private Float tongTienDonHang;
    @Column(name = "tien_giam_gia")
    private Float tienGiamGia;
    @Column(name = "thanh_tien")
    private Float thanhTien;
    @Column(name = "hinh_thuc_thanh_toan")
    private String hinhThucThanhToan;
    @Column(name = "phi_van_chuyen")
    private Float phiVanChuyen;
    @Column(name = "dia_chi_giao_hang")
    private String diaCHiGiaoHang;
    @Column(name = "thoi_gian_giao_hang")
    private Date thoiGianGiaoHang;
    @Column(name = "sdt_nguoi_nhan")
    private String sdtNguoiNhan;
    @Column(name = "nguoi_thanh_toan")
    private String nguoiThanhToan;
    @Column(name = "id_status")
    private String idStatus;

//    @OneToMany(mappedBy = "hoa_don", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
//    List<HoaDonChiTietRepository> hoaDonChiTiets = new ArrayList<>();

    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_khach_hang")
    private KhachHang khachHang;

    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_trang_thai_hoa_don")
    private TrangThaiDon trangThaiDon;

    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_giam_gia")
    private GiamGia giamGia;
}
