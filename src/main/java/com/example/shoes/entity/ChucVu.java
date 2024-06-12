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
    @Column(name = "TenChucVu")
    private String tenChucVu;
    @Column(name = "GhiChu")
    private String ghiChu;
    @Column(name = "TrangThai")
    private String trangThai;
}
