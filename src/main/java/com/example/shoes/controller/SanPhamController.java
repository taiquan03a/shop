package com.example.shoes.controller;

import com.example.shoes.repository.TrangThaiDonRepository;
import com.example.shoes.service.*;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;

@Controller
@RequestMapping("/")
@AllArgsConstructor
public class SanPhamController {
    final private SanPhamSerVice sanPhamSerVice;
    final private HoaDonSerVice hoaDonSerVice;
    final private SanPhamChiTietService sanPhamChiTietService;
    final private GiamGiaService giamGiaService;
    final private TrangThaiDonRepository trangThaiDonRepository;

    @GetMapping("/getDonHang")
    public String getDonHang(Model model) {
        System.out.println(trangThaiDonRepository.findAll());
        model.addAttribute("hoaDons", hoaDonSerVice.getHoaDonRequests());
        model.addAttribute("trangThais",trangThaiDonRepository.findAll());
        return "sidebar";
    }
    @GetMapping("donHang/{id}")
    public String getHoaDon(Model model, @PathVariable long id) {
        System.out.println(hoaDonSerVice.getHoaDonDetail(id));
        model.addAttribute("detail",hoaDonSerVice.getHoaDonDetail(id));
        return "detail";
    }
    @GetMapping("donHangUP/{id}")
    public String postHoaDon(@PathVariable long id, Model model) {
        model.addAttribute("detail",hoaDonSerVice.updateTrangThai(id));
        return "detail";
    }
    @GetMapping("donHangHuy/{id}")
    public String postHoaDonHuy(@PathVariable long id, Model model) {
        model.addAttribute("detail",hoaDonSerVice.huyTrangThai(id));
        return "detail";
    }
    @GetMapping("create")
    public String create(Model model) {
        model.addAttribute("sanPhams",sanPhamChiTietService.getSanPhamChiTiet());
        model.addAttribute("giamGias",giamGiaService.getGiamGia());
        return "create_order";
    }
    @GetMapping("/filter")
    public String filter(Model model,
                         @RequestParam String search,
                         @RequestParam String status,
                         @RequestParam String batDau,
                         @RequestParam String ketThuc
    ) throws ParseException {
        model.addAttribute("hoaDons", hoaDonSerVice.filterHoaDonRequest(search,status,batDau,ketThuc));
        model.addAttribute("trangThais",trangThaiDonRepository.findAll());
        System.out.println(search+status + batDau + ketThuc);
        return "sidebar";
    }
}
