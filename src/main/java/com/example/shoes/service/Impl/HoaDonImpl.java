package com.example.shoes.service.Impl;

import com.example.shoes.DTO.HoaDonDetailDTO;
import com.example.shoes.entity.*;
import com.example.shoes.repository.*;
import com.example.shoes.request.CreateDonHangRequest;
import com.example.shoes.request.HoaDonRequest;
import com.example.shoes.request.UpdateDonHangRequest;
import com.example.shoes.service.HoaDonSerVice;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
@AllArgsConstructor
public class HoaDonImpl implements HoaDonSerVice {
    final private HoaDonRepository hoaDonRepository;
    final private HoaDonChiTietRePository hoaDonChiTietRepository;
    final private LichSuHoaDonRepository lichSuHoaDonRepository;
    final private TrangThaiDonRepository trangThaiDonRepository;
    final private NhanVienRepository nhanVienRepository;
    final private KhachHanhRepository khachHanhRepository;
    final private GiamGiaRepository giamGiaRepository;
    private final SanPhamChiTietRepository sanPhamChiTietRepository;

    @Override
    public List<HoaDonRequest> getHoaDonRequests() {
        List<HoaDon> hoaDons = hoaDonRepository.findAll();
        List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
        for(HoaDon hoaDon : hoaDons){
            long tongSl = 0,tongTien = 0;
            for(HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)){
                tongSl += hoaDonChiTiet.getSoLuong();
                tongTien += hoaDonChiTiet.getThanhTien();
            }
            HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                    .ID(hoaDon.getID())
                    .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                    .tongSp(tongSl)
                    .tongTien(tongTien)
                    .ngayTao(hoaDon.getNgayTao())
                    .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                    .build();
            hoaDonRequests.add(hoaDonRequest);
        }
        return hoaDonRequests;
    }

    @Override
    public HoaDonDetailDTO getHoaDonDetail(long hoaDonId) {
        HoaDon hoaDon = hoaDonRepository.findById(hoaDonId).get();

        String tenGiamGia = "khong dung";
        float giaTriGiamGia = 0;
        if(hoaDon.getGiamGia() != null){
            tenGiamGia = hoaDon.getGiamGia().getTenGiamGia();
            giaTriGiamGia = hoaDon.getGiamGia().getGiaTriGiamGia();
        }
        List<TrangThaiDon> trangThaiDonList = new ArrayList<>();
        long idTrangThai = hoaDon.getTrangThaiDon().getID();

        List<String> idTrangThaiList = List.of(hoaDon.getIdStatus().split(","));
        for(String id : idTrangThaiList){
            TrangThaiDon trangThaiDon = trangThaiDonRepository.findById(Long.parseLong(id)).get();
            trangThaiDonList.add(trangThaiDon);
        }
        HoaDonDetailDTO hoaDonDetailDTO = HoaDonDetailDTO.builder()
                .id(hoaDonId)
                .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                .sdt(hoaDon.getSdtNguoiNhan())
                .tenNguoiNhan(hoaDon.getKhachHang().getTenKhachHang())
                .trangThai(hoaDon.getTrangThaiDon().getTenTrangThai())
                .trangThaiDonList(trangThaiDonList)
                .trangThaiDon(trangThaiDonRepository.findById(idTrangThai).get())
                .hoaDonChiTietList(hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon))
                .tenGiamGia(tenGiamGia)
                .giaTriGiamGia(giaTriGiamGia)
                .giamGia(String.valueOf(hoaDon.getTienGiamGia()))
                .tongTienHang(String.valueOf(hoaDon.getTongTienDonHang()))
                .phiVanChuyen(String.valueOf(hoaDon.getPhiVanChuyen()))
                .tongTien(String.valueOf(hoaDon.getThanhTien()))
                .lichSuThanhToanList(lichSuHoaDonRepository.findLichSuThanhToansByHoaDon(hoaDon))
                .build();
        return hoaDonDetailDTO;
    }

    @Override
    public HoaDonDetailDTO updateTrangThai(long hoaDonId) {

        HoaDon hoaDon = hoaDonRepository.findById(hoaDonId).get();
        List<TrangThaiDon> trangThaiDonList = new ArrayList<>();
        long idTrangThai = hoaDon.getTrangThaiDon().getID();
        String status = hoaDon.getIdStatus();
        if(idTrangThai != 4 && idTrangThai != 5 && idTrangThai != 6) {
            idTrangThai += 1;
            status = status + "," + String.valueOf(idTrangThai);
        }
        List<String> idTrangThaiList = List.of(status.split(","));
        for(String id : idTrangThaiList){
            TrangThaiDon trangThaiDon = trangThaiDonRepository.findById(Long.parseLong(id)).get();
            trangThaiDonList.add(trangThaiDon);
        }
        hoaDon.setTrangThaiDon(trangThaiDonRepository.findById(idTrangThai).get());
        hoaDon.setIdStatus(status);
        hoaDonRepository.save(hoaDon);
        String tenGiamGia = "khong dung";
        float giaTriGiamGia = 0;
        if(hoaDon.getGiamGia() != null){
            tenGiamGia = hoaDon.getGiamGia().getTenGiamGia();
            giaTriGiamGia = hoaDon.getGiamGia().getGiaTriGiamGia();
        }
        HoaDonDetailDTO hoaDonDetailDTO = HoaDonDetailDTO.builder()
                .id(hoaDonId)
                .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                .sdt(hoaDon.getSdtNguoiNhan())
                .tenNguoiNhan(hoaDon.getKhachHang().getTenKhachHang())
                .trangThai(hoaDon.getTrangThaiDon().getTenTrangThai())
                .trangThaiDonList(trangThaiDonList)
                .hoaDonChiTietList(hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon))
                .tenGiamGia(tenGiamGia)
                .giaTriGiamGia(giaTriGiamGia)
                .giamGia(String.valueOf(hoaDon.getTienGiamGia()))
                .tongTienHang(String.valueOf(hoaDon.getTongTienDonHang()))
                .phiVanChuyen(String.valueOf(hoaDon.getPhiVanChuyen()))
                .tongTien(String.valueOf(hoaDon.getThanhTien()))
                .lichSuThanhToanList(lichSuHoaDonRepository.findLichSuThanhToansByHoaDon(hoaDon))
                .build();
        return hoaDonDetailDTO;
    }

    @Override
    public HoaDonDetailDTO huyTrangThai(long hoaDonId) {
        HoaDon hoaDon = hoaDonRepository.findById(hoaDonId).get();
        List<TrangThaiDon> trangThaiDonList = new ArrayList<>();

        long idTrangThai = hoaDon.getTrangThaiDon().getID();
        String status = hoaDon.getIdStatus();
        if(idTrangThai != 4 && idTrangThai != 5 && idTrangThai != 6) {
            idTrangThai = 5;
            status = status + "," + String.valueOf(idTrangThai);
        } else if (idTrangThai == 4 && idTrangThai != 5 && idTrangThai != 6) {
            idTrangThai = 6;
            status = status + "," + String.valueOf(idTrangThai);
        }

        List<String> idTrangThaiList = List.of(status.split(","));
        for(String id : idTrangThaiList){
            TrangThaiDon trangThaiDon = trangThaiDonRepository.findById(Long.parseLong(id)).get();
            trangThaiDonList.add(trangThaiDon);
        }
        hoaDon.setTrangThaiDon(trangThaiDonRepository.findById(idTrangThai).get());
        hoaDon.setIdStatus(status);
        hoaDonRepository.save(hoaDon);
        String tenGiamGia = "khong dung";
        float giaTriGiamGia = 0;
        if(hoaDon.getGiamGia() != null){
            tenGiamGia = hoaDon.getGiamGia().getTenGiamGia();
            giaTriGiamGia = hoaDon.getGiamGia().getGiaTriGiamGia();
        }
        HoaDonDetailDTO hoaDonDetailDTO = HoaDonDetailDTO.builder()
                .id(hoaDonId)
                .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                .sdt(hoaDon.getSdtNguoiNhan())
                .tenNguoiNhan(hoaDon.getKhachHang().getTenKhachHang())
                .trangThai(hoaDon.getTrangThaiDon().getTenTrangThai())
                .trangThaiDonList(trangThaiDonList)
                .hoaDonChiTietList(hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon))
                .tenGiamGia(tenGiamGia)
                .giaTriGiamGia(giaTriGiamGia)
                .giamGia(String.valueOf(hoaDon.getTienGiamGia()))
                .tongTienHang(String.valueOf(hoaDon.getTongTienDonHang()))
                .phiVanChuyen(String.valueOf(hoaDon.getPhiVanChuyen()))
                .tongTien(String.valueOf(hoaDon.getThanhTien()))
                .lichSuThanhToanList(lichSuHoaDonRepository.findLichSuThanhToansByHoaDon(hoaDon))
                .build();
        return hoaDonDetailDTO;
    }

    @Override
    public List<HoaDonRequest> filterHoaDonRequest(String search, String status, String batDau, String ketThuc) throws ParseException {
        List<HoaDon> hoaDons = hoaDonRepository.findAll();

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date bd = formatter.parse(batDau);
        Date kt = formatter.parse(ketThuc);
        if(search != null && status != null && batDau != null && ketThuc != null) {
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
            for (HoaDon hoaDon : hoaDons) {
                if (hoaDon.getKhachHang().getTenKhachHang().contains(search) &&
                        (hoaDon.getTrangThaiDon().getID() == Long.valueOf(status) || Long.valueOf(status) == 0)&&
                        hoaDon.getNgayTao().compareTo(bd) > 0 && hoaDon.getNgayTao().compareTo(kt) < 0) {
                    System.out.println("hihi");
                    long tongSl = 0, tongTien = 0;
                    for (HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)) {
                        tongSl += hoaDonChiTiet.getSoLuong();
                        tongTien += hoaDonChiTiet.getThanhTien();
                    }
                    HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                            .ID(hoaDon.getID())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(hoaDon.getNgayTao())
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            return hoaDonRequests;
        }else if (search == null && status != null && batDau != null && ketThuc != null) {
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
            for (HoaDon hoaDon : hoaDons) {
                if ((hoaDon.getTrangThaiDon().getID() == Long.valueOf(status) || Long.valueOf(status) == 0)&&
                        hoaDon.getNgayTao().compareTo(bd) > 0 && hoaDon.getNgayTao().compareTo(kt) < 0) {
                    long tongSl = 0, tongTien = 0;
                    for (HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)) {
                        tongSl += hoaDonChiTiet.getSoLuong();
                        tongTien += hoaDonChiTiet.getThanhTien();
                    }
                    HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                            .ID(hoaDon.getID())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(hoaDon.getNgayTao())
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            return hoaDonRequests;
        } else if (search == null && status == null && batDau != null && ketThuc != null) {
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
            for (HoaDon hoaDon : hoaDons) {
                if (hoaDon.getNgayTao().compareTo(bd) > 0 && hoaDon.getNgayTao().compareTo(kt) < 0) {
                    long tongSl = 0, tongTien = 0;
                    for (HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)) {
                        tongSl += hoaDonChiTiet.getSoLuong();
                        tongTien += hoaDonChiTiet.getThanhTien();
                    }
                    HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                            .ID(hoaDon.getID())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(hoaDon.getNgayTao())
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            return hoaDonRequests;
        }else if (search != null && status == null && batDau == null && ketThuc == null){
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
            for (HoaDon hoaDon : hoaDons) {
                if (hoaDon.getKhachHang().getTenKhachHang().contains(search)) {
                    long tongSl = 0, tongTien = 0;
                    for (HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)) {
                        tongSl += hoaDonChiTiet.getSoLuong();
                        tongTien += hoaDonChiTiet.getThanhTien();
                    }
                    HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                            .ID(hoaDon.getID())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(hoaDon.getNgayTao())
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            return hoaDonRequests;
        } else if (search == null && status != null && batDau == null && ketThuc == null) {
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
            for (HoaDon hoaDon : hoaDons) {
                if (hoaDon.getTrangThaiDon().getID() == Long.valueOf(status) || Long.valueOf(status) == 0) {
                    long tongSl = 0, tongTien = 0;
                    for (HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)) {
                        tongSl += hoaDonChiTiet.getSoLuong();
                        tongTien += hoaDonChiTiet.getThanhTien();
                    }
                    HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                            .ID(hoaDon.getID())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(hoaDon.getNgayTao())
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            return hoaDonRequests;
        }else if (search != null && status == null && batDau != null && ketThuc != null) {
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
            for (HoaDon hoaDon : hoaDons) {
                if (hoaDon.getKhachHang().getTenKhachHang().contains(search) &&
                        hoaDon.getNgayTao().compareTo(bd) > 0 && hoaDon.getNgayTao().compareTo(kt) < 0) {
                    long tongSl = 0, tongTien = 0;
                    for (HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)) {
                        tongSl += hoaDonChiTiet.getSoLuong();
                        tongTien += hoaDonChiTiet.getThanhTien();
                    }
                    HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                            .ID(hoaDon.getID())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(hoaDon.getNgayTao())
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            return hoaDonRequests;
        } else if (search != null && status != null && batDau == null && ketThuc == null) {
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
            for (HoaDon hoaDon : hoaDons) {
                if (hoaDon.getKhachHang().getTenKhachHang().contains(search) &&
                        (hoaDon.getTrangThaiDon().getID() == Long.valueOf(status) || Long.valueOf(status) == 0)) {
                    long tongSl = 0, tongTien = 0;
                    for (HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)) {
                        tongSl += hoaDonChiTiet.getSoLuong();
                        tongTien += hoaDonChiTiet.getThanhTien();
                    }
                    HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                            .ID(hoaDon.getID())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(hoaDon.getNgayTao())
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            return hoaDonRequests;
        }
        return null;
    }

    @Override
    public boolean addHoaDon(CreateDonHangRequest createDonHangRequest) {
        //insert hoa don
        NhanVien nhanVien = nhanVienRepository.findById(1L).get();
        KhachHang khachHang = KhachHang.builder()
                .tenKhachHang(createDonHangRequest.getName())
                .sdt(createDonHangRequest.getPhone())
                .ngayTao(new Date())
                .trangThai(true)
                .build();
        khachHanhRepository.save(khachHang);

        GiamGia giamGia = giamGiaRepository.findGiamGiaByTenGiamGia(createDonHangRequest.getDiscount_name());
        Date ngayHienTai = new Date();
        boolean check = true;
        if(giamGia != null){
            if(ngayHienTai.compareTo(giamGia.getNgayBatDau()) < 0 || ngayHienTai.compareTo(giamGia.getNgayKetThuc()) > 0){
                giamGia.setGiaTriGiamGia(0F);
                check = false;
            } else if (giamGia.getSoLuong() == 0) {
                giamGia.setGiaTriGiamGia(0F);
                check = false;
            }
        }

        List<HoaDonChiTiet> hoaDonChiTietList = new ArrayList<>();
        String strippedInput = createDonHangRequest.getList_product().substring(1, createDonHangRequest.getList_product().length() - 1);
        String[] pairs = strippedInput.split(",");
        for (String pair : pairs) {
            pair = pair.replace("\"", "");
            String[] numbers = pair.split(":");
            String id = numbers[0];
            String sl = numbers[1];

            SanPhamChiTiet  sanPhamChiTiet = sanPhamChiTietRepository.findById(Long.valueOf(id)).get();
            HoaDonChiTiet hoaDonChiTiet = HoaDonChiTiet.builder()
                    .sanPhamChiTiet(sanPhamChiTiet)
                    .soLuong(Long.valueOf(sl))
                    .donGia(Long.valueOf(sanPhamChiTiet.getGiaBan()))
                    .thanhTien(Long.valueOf(sl) * Long.valueOf(sanPhamChiTiet.getGiaBan()))
                    .trangThai(true)
                    .build();
            hoaDonChiTietList.add(hoaDonChiTiet);
        }
        long tongTienDonHang = 0;
        float tienGiamGia = 0,thanhTien = 0;;
        for(HoaDonChiTiet hd : hoaDonChiTietList){
            tongTienDonHang += hd.getThanhTien();
        }
        if(giamGia != null){
            tienGiamGia =(float) tongTienDonHang*giamGia.getGiaTriGiamGia()/100;
        }

        thanhTien = tongTienDonHang - tienGiamGia;
        String hinhThuc = "";
        if(createDonHangRequest.getType().equals("2")){
            hinhThuc = "Tiền mặt";
        }else{
            hinhThuc = "chuyển khoản";
        }
        TrangThaiDon trangThaiDon = trangThaiDonRepository.findById(1L).get();
        HoaDon hoaDon = HoaDon.builder()
                .khachHang(khachHang)
                .ngayTao(new Date())
                .nguoiTao(nhanVien.getHoTen())
                .tongTienDonHang((float) tongTienDonHang)
                .tienGiamGia(tienGiamGia)
                .thanhTien((thanhTien))
                .hinhThucThanhToan(hinhThuc)
                .phiVanChuyen(0F)
                .diaCHiGiaoHang(null)
                .thoiGianGiaoHang(null)
                .sdtNguoiNhan(khachHang.getSdt())
                .trangThaiDon(trangThaiDon)
                .idStatus("1,")
                .build();
        if(check && giamGia != null){
            hoaDon.setGiamGia(giamGia);
            giamGia.setSoLuong(giamGia.getSoLuong()-1);
        }else {
            hoaDon.setGiamGia(null);
        }
        hoaDonRepository.save(hoaDon);
        for(HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietList){
            hoaDonChiTiet.setHoaDon(hoaDon);
            hoaDonChiTietRepository.save(hoaDonChiTiet);
        }
        LichSuThanhToan lichSuThanhToan = LichSuThanhToan.builder()
                .hoaDon(hoaDon)
                .ngayTao(new Date())
                .nguoiTao(nhanVien.getHoTen())
                .soTienThanhToan((long) thanhTien)
                .soTienConLai(0L)
                .build();
        lichSuHoaDonRepository.save(lichSuThanhToan);
        return true;
    }

    @Override
    public boolean updateHoaDon(UpdateDonHangRequest updateDonHangRequest, long hoaDonId) {
        HoaDon hoaDon = hoaDonRepository.findById(hoaDonId).get();
        System.out.println("hihi");

        hoaDonChiTietRepository.deleteAll(hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon));

        List<HoaDonChiTiet> hoaDonChiTietList = new ArrayList<>();
        String strippedInput = updateDonHangRequest.getList_product().substring(1, updateDonHangRequest.getList_product().length() - 1);
        String[] pairs = strippedInput.split(",");
        for (String pair : pairs) {
            pair = pair.replace("\"", "");
            String[] numbers = pair.split(":");
            String id = numbers[0];
            String sl = numbers[1];

            SanPhamChiTiet  sanPhamChiTiet = sanPhamChiTietRepository.findById(Long.valueOf(id)).get();
            HoaDonChiTiet hoaDonChiTiet = HoaDonChiTiet.builder()
                    .hoaDon(hoaDon)
                    .sanPhamChiTiet(sanPhamChiTiet)
                    .soLuong(Long.valueOf(sl))
                    .donGia(Long.valueOf(sanPhamChiTiet.getGiaBan()))
                    .thanhTien(Long.valueOf(sl) * Long.valueOf(sanPhamChiTiet.getGiaBan()))
                    .trangThai(true)
                    .build();
            hoaDonChiTietRepository.save(hoaDonChiTiet);
            hoaDonChiTietList.add(hoaDonChiTiet);
        }
        long tongTienDonHang = 0;
        float tienGiamGia = 0,thanhTien = 0;;
        for(HoaDonChiTiet hd : hoaDonChiTietList){
            tongTienDonHang += hd.getThanhTien();
        }
        if(hoaDon.getGiamGia() != null){
            tienGiamGia =(float) tongTienDonHang*hoaDon.getGiamGia().getGiaTriGiamGia()/100;
        }
        thanhTien = tongTienDonHang - tienGiamGia;
        hoaDon.setTongTienDonHang((float) tongTienDonHang);
        hoaDon.setTienGiamGia(tienGiamGia);
        hoaDon.setThanhTien(thanhTien);
        hoaDonRepository.save(hoaDon);
        return true;
    }

}
