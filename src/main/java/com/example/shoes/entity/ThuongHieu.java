package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "thuong_hieu")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ThuongHieu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long ID;
    @Column(name = "ten_thuong_hieu")
    private String tenThuongHieu;
    @Column(name = "mo_ta")
    private String moTa;
    @Column(name = "trang_thai")
    private String trangThai;
}
