package com.example.shoes.repository;

import com.example.shoes.entity.GiamGia;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GiamGiaRepository extends JpaRepository<GiamGia, Long> {
    GiamGia findGiamGiaByTenGiamGia(String tenGiamGia);
}
