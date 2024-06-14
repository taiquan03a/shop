package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Table(name = "nhan_vien")
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Builder
public class NhanVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long ID;
    @Column(name = "ho_ten")
    private String hoTen;
    @Column(name = "Email")
    private String email;
    @Column(name = "mat_khau")
    private String matKhau;
    @Column(name = "dia_chi")
    private String diaChi;
    @Column(name = "ngay_tao")
    private Date ngayTao;
    @Column(name = "SDT")
    private String sdt;
    @Column(name = "Anh")
    private String anh;
    @Column(name = "trang_thai")
    private String trangThai;
}
