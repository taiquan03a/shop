package com.example.shoes.service;

import com.example.shoes.entity.HoaDonChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface HoaDonChiTietService{
    List<HoaDonChiTiet> getHoaDonChiTiets();
}
