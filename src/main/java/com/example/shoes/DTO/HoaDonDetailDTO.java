package com.example.shoes.DTO;

import java.util.*;

import com.example.shoes.entity.HoaDonChiTiet;
import com.example.shoes.entity.LichSuThanhToan;
import com.example.shoes.entity.SanPhamChiTiet;
import com.example.shoes.entity.TrangThaiDon;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class HoaDonDetailDTO {
    private Long id;
    private String maHoaDon;
    private String tenKH;
    private String sdt;
    private String trangThai;
    private String tenNguoiNhan;
    private List<TimeLineDTO> timeLineDTOList;
    private TrangThaiDon trangThaiDon;
    private List<LichSuThanhToan> lichSuThanhToanList;
    private List<HoaDonChiTiet> hoaDonChiTietList;
    private String tenGiamGia;
    private Float giaTriGiamGia;
    private String tongTienHang;
    private String giamGia;
    private String phiVanChuyen;
    private String tongTien;
}
