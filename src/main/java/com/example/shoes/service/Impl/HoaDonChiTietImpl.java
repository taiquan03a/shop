package com.example.shoes.service.Impl;

import com.example.shoes.entity.HoaDonChiTiet;
import com.example.shoes.repository.HoaDonChiTietRePository;
import com.example.shoes.service.HoaDonChiTietService;
import com.example.shoes.service.HoaDonSerVice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HoaDonChiTietImpl implements HoaDonChiTietService {
    @Autowired
    private HoaDonChiTietRePository hoaDonChiTietRePository;
    @Override
    public List<HoaDonChiTiet> getHoaDonChiTiets() {
        return hoaDonChiTietRePository.findAll();
    }
}
