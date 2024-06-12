package com.example.shoes.request;


import com.example.shoes.entity.TrangThaiDon;
import lombok.Builder;
import lombok.Data;
import lombok.ToString;

import java.util.Date;
@Data
@Builder
@ToString
public class HoaDonRequest {
    private Long ID;
    private Long tongSp;
    private Long tongTien;
    private String tenKH;
    private Date ngayTao;
    private String trangThaiDon;
}
