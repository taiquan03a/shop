package com.example.shoes.service.Impl;

import com.example.shoes.entity.GiamGia;
import com.example.shoes.repository.GiamGiaRepository;
import com.example.shoes.service.GiamGiaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GiamGiaImpl implements GiamGiaService {
    @Autowired
    private GiamGiaRepository giamGiaRepository;

    @Override
    public List<GiamGia> getGiamGia() {
        return giamGiaRepository.findAll();
    }
}
