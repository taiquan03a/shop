package com.example.shoes.repository;

import com.example.shoes.entity.HoaDon;
import com.example.shoes.entity.HoaDonChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface HoaDonChiTietRePository extends JpaRepository<HoaDonChiTiet, Long> {
    List<HoaDonChiTiet> findHoaDonChiTietsByHoaDon (HoaDon hoaDon);
}
