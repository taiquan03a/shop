package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "mau_sac")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class MauSac {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long ID;
    @Column(name = "ten_mau_sac")
    private String tenMauSac;
    @Column(name = "mo_ta")
    private String moTa;
    @Column(name = "trang_thai")
    private String trangThai;
}