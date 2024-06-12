package com.example.shoes.service.Impl;

import com.example.shoes.entity.SanPhamChiTiet;
import com.example.shoes.repository.SanPhamChiTietRepository;
import com.example.shoes.service.SanPhamChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SanPhamChiTietImpl implements SanPhamChiTietService {
    @Autowired
    private SanPhamChiTietRepository sanPhamChiTietRepository;
    @Override
    public List<SanPhamChiTiet> getSanPhamChiTiet() {
        return sanPhamChiTietRepository.findAll();
    }
}
