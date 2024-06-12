package com.example.shoes.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "chat_lieu")
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class ChatLieu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long ID;
    @Column(name = "ten_chat_lieu")
    private String tenChatLieu;
    @Column(name = "mo_ta")
    private String moTa;
    @Column(name = "trang_thai")
    private String trangThai;
}
