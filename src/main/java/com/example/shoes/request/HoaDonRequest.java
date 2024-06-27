package com.example.shoes.request;


import com.example.shoes.entity.TrangThaiDon;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Builder;
import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
@Data
@Builder
@ToString
public class HoaDonRequest {
    private Long ID;
    private String maHoaDon;
    private Long tongSp;
    private Long tongTien;
    private String tenKH;
    private String ngayTao;
    private String trangThaiDon;
}
