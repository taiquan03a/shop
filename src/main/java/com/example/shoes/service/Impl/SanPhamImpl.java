package com.example.shoes.service.Impl;

import com.example.shoes.entity.SanPham;
import com.example.shoes.repository.SanPhamRepository;
import com.example.shoes.service.SanPhamSerVice;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@AllArgsConstructor
public class SanPhamImpl implements SanPhamSerVice {
    final private SanPhamRepository sanPhamRepository;
    @Override
    public List<SanPham> getAllSanPham() {
        return sanPhamRepository.findAll();
    }
}
