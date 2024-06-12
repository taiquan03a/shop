package com.example.shoes.controller;

import com.example.shoes.service.*;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
@AllArgsConstructor
public class SanPhamController {
    final private SanPhamSerVice sanPhamSerVice;
    final private HoaDonSerVice hoaDonSerVice;
    final private SanPhamChiTietService sanPhamChiTietService;
    final private GiamGiaService giamGiaService;

    @GetMapping("/getDonHang")
    public String getDonHang(Model model) {
        System.out.println(hoaDonSerVice.getHoaDonRequests());
        model.addAttribute("hoaDons", hoaDonSerVice.getHoaDonRequests());
        return "sidebar";
    }
    @GetMapping("donHang/{id}")
    public String getHoaDon(Model model, @PathVariable long id) {
        System.out.println(hoaDonSerVice.getHoaDonDetail(id));
        model.addAttribute("detail",hoaDonSerVice.getHoaDonDetail(id));
        return "detail";
    }
    @GetMapping("donHangUP/%7B{id}")
    public String postHoaDon(@PathVariable long id, Model model) {
        model.addAttribute("detail",hoaDonSerVice.updateTrangThai(id));
        return "datail";
    }
    @GetMapping("create")
    public String create(Model model) {
        model.addAttribute("sanPhams",sanPhamChiTietService.getSanPhamChiTiet());
        model.addAttribute("giamGias",giamGiaService.getGiamGia());
        return "create_order";
    }
}
