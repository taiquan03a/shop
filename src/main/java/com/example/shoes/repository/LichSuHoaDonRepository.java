package com.example.shoes.repository;

import com.example.shoes.entity.HoaDon;
import com.example.shoes.entity.LichSuThanhToan;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LichSuHoaDonRepository extends JpaRepository<LichSuThanhToan,Long> {
    List<LichSuThanhToan> findLichSuThanhToansByHoaDon(HoaDon hoaDon);
}
