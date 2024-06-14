package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "chuc_vu")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class ChucVu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long ID;
    @Column(name = "ten_chuc_vu")
    private String tenChucVu;
    @Column(name = "ghi_chu")
    private String ghiChu;
    @Column(name = "trang_thai")
    private String trangThai;
}
