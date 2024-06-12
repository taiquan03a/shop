package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Table(name = "khach_hang")
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Builder
public class KhachHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long ID;
    @Column(name = "ten_khach_hang")
    private String tenKhachHang;
    @Column(name = "SDT")
    private String sdt;
    @Column(name = "gioi_tinh")
    private String gioiTinh;
    @Column(name = "Email")
    private String email;
    @Column(name = "ngay_tao")
    private Date ngayTao;
    @Column(name = "trang_thai")
    private String trangThai;
    @Column(name = "anh")
    private String anh;
    @Column(name = "mat_khau")
    private String matKhau;
}
