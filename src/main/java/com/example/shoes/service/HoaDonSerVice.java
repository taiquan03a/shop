package com.example.shoes.service;

import com.example.shoes.DTO.HoaDonDetailDTO;
import com.example.shoes.request.HoaDonRequest;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.ParseException;
import java.util.List;

public interface HoaDonSerVice {
    List<HoaDonRequest> getHoaDonRequests();
    HoaDonDetailDTO getHoaDonDetail(long hoaDonId);
    HoaDonDetailDTO updateTrangThai(long hoaDonId);
    HoaDonDetailDTO huyTrangThai(long hoaDonId);
    List<HoaDonRequest> filterHoaDonRequest(String search,String status,String batDau,String ketThuc) throws ParseException;
}
