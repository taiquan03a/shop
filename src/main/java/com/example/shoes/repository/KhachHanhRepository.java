package com.example.shoes.repository;

import com.example.shoes.entity.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KhachHanhRepository extends JpaRepository<KhachHang,Long> {
}
