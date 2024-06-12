package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "trang_thai_don")
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class TrangThaiDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long ID;
    @Column(name ="ten_trang_thai")
    private String tenTrangThai;
    @Column(name = "ghi_chu")
    private String ghiChu;
    @Column(name = "trang_thai")
    private String trangThai;
}
