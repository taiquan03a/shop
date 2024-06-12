package com.example.shoes.repository;

import com.example.shoes.entity.HoaDon;
import com.example.shoes.entity.TrangThaiDon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon, Long> {

}
