package com.example.shoes.controller;

import com.example.shoes.repository.TrangThaiDonRepository;
import com.example.shoes.request.CreateDonHangRequest;
import com.example.shoes.request.UpdateDonHangRequest;
import com.example.shoes.service.*;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;

@Controller
@RequestMapping("/")
@AllArgsConstructor
public class DonHangController {
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
        UpdateDonHangRequest updateDonHangRequest = new UpdateDonHangRequest();
        model.addAttribute("detail",hoaDonSerVice.getHoaDonDetail(id));
        model.addAttribute("sanPhams",sanPhamChiTietService.getSanPhamChiTiet());
        model.addAttribute("updateDonHangRequest",updateDonHangRequest);
        return "detail";
    }
    @PostMapping("donHang/{id}")
    public String updateHoaDon(Model model, @PathVariable long id,@ModelAttribute("updateDonHangRequest") UpdateDonHangRequest updateDonHangRequest) {
        System.out.println(updateDonHangRequest);
        hoaDonSerVice.updateHoaDon(updateDonHangRequest,id);
        model.addAttribute("detail",hoaDonSerVice.getHoaDonDetail(id));
        model.addAttribute("sanPhams",sanPhamChiTietService.getSanPhamChiTiet());
        model.addAttribute("updateDonHangRequest",updateDonHangRequest);
        return "detail";
    }
    @GetMapping("donHangUP/{id}")
    public String postHoaDon(@PathVariable long id, Model model) {
        UpdateDonHangRequest updateDonHangRequest = new UpdateDonHangRequest();
        model.addAttribute("detail",hoaDonSerVice.updateTrangThai(id));
        model.addAttribute("sanPhams",sanPhamChiTietService.getSanPhamChiTiet());
        model.addAttribute("updateDonHangRequest",updateDonHangRequest);
        return "detail";
    }
    @GetMapping("donHangHuy/{id}")
    public String postHoaDonHuy(@PathVariable long id, Model model) {
        UpdateDonHangRequest updateDonHangRequest = new UpdateDonHangRequest();
        model.addAttribute("detail",hoaDonSerVice.huyTrangThai(id));
        model.addAttribute("sanPhams",sanPhamChiTietService.getSanPhamChiTiet());
        model.addAttribute("updateDonHangRequest",updateDonHangRequest);
        return "detail";
    }
    @GetMapping("create")
    public String create(Model model) {
        CreateDonHangRequest createDonHangRequest = new CreateDonHangRequest();
        model.addAttribute("sanPhams",sanPhamChiTietService.getSanPhamChiTiet());
        model.addAttribute("giamGias",giamGiaService.getGiamGia());
        model.addAttribute("createDonHangRequest",createDonHangRequest);
        return "create_order";
    }
    @GetMapping("/filter")
    public String filter(Model model,
                         @RequestParam String search,
                         @RequestParam String status,
                         @RequestParam String batDau,
                         @RequestParam String ketThuc
    ) throws ParseException {
        System.out.println(batDau + " " + ketThuc);
        model.addAttribute("hoaDons", hoaDonSerVice.filterHoaDonRequest(search,status,batDau,ketThuc));
        model.addAttribute("trangThais",trangThaiDonRepository.findAll());
        System.out.println(search+status + batDau + ketThuc);
        return "sidebar";
    }
    @PostMapping("create")
    public String createHoaDon(Model model, @ModelAttribute("createDonHangRequest") CreateDonHangRequest createDonHangRequest, BindingResult result){
        System.out.println(createDonHangRequest);
        hoaDonSerVice.addHoaDon(createDonHangRequest);
        model.addAttribute("hoaDons", hoaDonSerVice.getHoaDonRequests());
        model.addAttribute("trangThais",trangThaiDonRepository.findAll());
        return "sidebar";
    }
}
