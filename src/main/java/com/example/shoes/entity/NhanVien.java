package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Entity
@Table(name = "Nhanvien")
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
    @Column(name = "HoTen")
    private String hoTen;
    @Column(name = "Email")
    private String email;
    @Column(name = "MatKhau")
    private String matKhau;
    @Column(name = "DiaChi")
    private String diaChi;
    @Column(name = "NgayTao")
    private Date ngayTao;
    @Column(name = "SDT")
    private String sdt;
    @Column(name = "Anh")
    private String anh;
    @Column(name = "TrangThai")
    private String trangThai;
}
