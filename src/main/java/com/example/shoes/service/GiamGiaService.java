package com.example.shoes.service;

import com.example.shoes.entity.GiamGia;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public interface GiamGiaService {
    List<GiamGia> getGiamGia();
}
