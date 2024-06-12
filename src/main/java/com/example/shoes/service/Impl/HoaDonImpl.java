package com.example.shoes.service.Impl;

import com.example.shoes.DTO.HoaDonDetailDTO;
import com.example.shoes.entity.HoaDon;
import com.example.shoes.entity.HoaDonChiTiet;
import com.example.shoes.entity.TrangThaiDon;
import com.example.shoes.repository.HoaDonChiTietRePository;
import com.example.shoes.repository.HoaDonRepository;
import com.example.shoes.repository.LichSuHoaDonRepository;
import com.example.shoes.repository.TrangThaiDonRepository;
import com.example.shoes.request.HoaDonRequest;
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
        List<TrangThaiDon> trangThaiDonChiTietList = trangThaiDonRepository.findAll();
        long idTrangThai = hoaDon.getTrangThaiDon().getID();
        for(long i = 0; i < idTrangThai; i++){
            trangThaiDonList.add(trangThaiDonChiTietList.get((int)i));
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
    public HoaDonDetailDTO updateTrangThai(long hoaDonId) {

        HoaDon hoaDon = hoaDonRepository.findById(hoaDonId).get();
        List<TrangThaiDon> trangThaiDonList = new ArrayList<>();
        List<TrangThaiDon> trangThaiDonChiTietList = trangThaiDonRepository.findAll();
        long idTrangThai = hoaDon.getTrangThaiDon().getID();
        if(idTrangThai != 4 && idTrangThai != 5) idTrangThai += 1;
        for(long i = 0; i < idTrangThai; i++){
            trangThaiDonList.add(trangThaiDonChiTietList.get((int)i));
        }
        hoaDon.setTrangThaiDon(trangThaiDonRepository.findById((int)idTrangThai).get());
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
        List<TrangThaiDon> trangThaiDonChiTietList = trangThaiDonRepository.findAll();
        long idTrangThai = hoaDon.getTrangThaiDon().getID();
        for(long i = 0; i < idTrangThai; i++){
            trangThaiDonList.add(trangThaiDonChiTietList.get((int)i));
        }
        if(idTrangThai != 4 && idTrangThai != 5) {
            idTrangThai = 5;
            trangThaiDonList.add(trangThaiDonChiTietList.get(4));
        }

        hoaDon.setTrangThaiDon(trangThaiDonRepository.findById((int)idTrangThai).get());
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
        }
        return null;
    }
}
