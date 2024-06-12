package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "co_ao")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class CoAo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long ID;
    @Column(name = "ten_co_ao")
    private String tenLoaiCoAo;
    @Column(name = "mo_ta")
    private String moTa;
    @Column(name = "trang_thai")
    private String trangThai;
}
