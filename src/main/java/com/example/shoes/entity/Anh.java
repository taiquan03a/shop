package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "anh")
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Builder
public class Anh {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int ID;
    @Column(name = "Anh")
    private String anh;
    @Column(name = "trang_thai")
    private String trangThai;
}
