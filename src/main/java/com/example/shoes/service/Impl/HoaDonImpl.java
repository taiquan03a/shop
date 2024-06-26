package com.example.shoes.service.Impl;

import com.example.shoes.DTO.HoaDonDetailDTO;
import com.example.shoes.DTO.TimeLineDTO;
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
import java.util.Comparator;
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
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
        for(HoaDon hoaDon : hoaDons){
            long tongSl = 0,tongTien = 0;
            for(HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)){
                tongSl += hoaDonChiTiet.getSoLuong();
                tongTien += hoaDonChiTiet.getThanhTien();
            }
            HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                    .ID(hoaDon.getID())
                    .maHoaDon(hoaDon.getMaHoaDon())
                    .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                    .tongSp(tongSl)
                    .tongTien(tongTien)
                    .ngayTao(sdf.format(hoaDon.getNgayTao()))
                    .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                    .build();
            hoaDonRequests.add(hoaDonRequest);
        }
        hoaDonRequests.sort(new Comparator<HoaDonRequest>() {
            @Override
            public int compare(HoaDonRequest o1, HoaDonRequest o2) {
                if(o1.getID() < o2.getID()){
                    return 1;
                }
                return -1;
            }
        });
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
        List<TimeLineDTO> timeLineDTOList = new ArrayList<>();
        long idTrangThai = hoaDon.getTrangThaiDon().getID();

        List<String> idTrangThaiList = List.of(hoaDon.getIdStatus().split(","));
        List<String> timeList = List.of(hoaDon.getTimeLine().split(","));
        int index = 0;
        for(String id : idTrangThaiList){
            TrangThaiDon trangThaiDon = trangThaiDonRepository.findById(Long.parseLong(id)).get();
            String time = timeList.get(index);
            TimeLineDTO timeLineDTO = TimeLineDTO.builder()
                    .time(time)
                    .trangThaiDon(trangThaiDon)
                    .build();
            index++;
            timeLineDTOList.add(timeLineDTO);
        }
        HoaDonDetailDTO hoaDonDetailDTO = HoaDonDetailDTO.builder()
                .id(hoaDonId)
                .maHoaDon(hoaDon.getMaHoaDon())
                .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                .sdt(hoaDon.getSdtNguoiNhan())
                .tenNguoiNhan(hoaDon.getKhachHang().getTenKhachHang())
                .timeLineDTOList(timeLineDTOList)
                .trangThai(hoaDon.getTrangThaiDon().getTenTrangThai())
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
        List<TimeLineDTO> timeLineDTOList = new ArrayList<>();
        long idTrangThai = hoaDon.getTrangThaiDon().getID();
        String status = hoaDon.getIdStatus();
        String timeLine = hoaDon.getTimeLine();
        Date now = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
        String formattedDate = sdf.format(now);
        if(idTrangThai != 4 && idTrangThai != 5 && idTrangThai != 6) {
            idTrangThai += 1;
            status = status + "," + String.valueOf(idTrangThai);
            timeLine = timeLine + "," + formattedDate;
        }
        List<String> idTrangThaiList = List.of(status.split(","));
        List<String> timeLineList = List.of(timeLine.split(","));
        int index = 0;
        for(String id : idTrangThaiList){
            TrangThaiDon trangThaiDon = trangThaiDonRepository.findById(Long.parseLong(id)).get();
            String time = timeLineList.get(0);
            TimeLineDTO timeLineDTO = TimeLineDTO.builder()
                    .time(timeLineList.get(index))
                    .trangThaiDon(trangThaiDon)
                    .build();
            index++;
            timeLineDTOList.add(timeLineDTO);
        }
        hoaDon.setTrangThaiDon(trangThaiDonRepository.findById(idTrangThai).get());
        hoaDon.setIdStatus(status);
        hoaDon.setTimeLine(timeLine);
        hoaDonRepository.save(hoaDon);
        String tenGiamGia = "khong dung";
        float giaTriGiamGia = 0;
        if(hoaDon.getGiamGia() != null){
            tenGiamGia = hoaDon.getGiamGia().getTenGiamGia();
            giaTriGiamGia = hoaDon.getGiamGia().getGiaTriGiamGia();
        }
        HoaDonDetailDTO hoaDonDetailDTO = HoaDonDetailDTO.builder()
                .id(hoaDonId)
                .maHoaDon(hoaDon.getMaHoaDon())
                .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                .sdt(hoaDon.getSdtNguoiNhan())
                .tenNguoiNhan(hoaDon.getKhachHang().getTenKhachHang())
                .trangThai(hoaDon.getTrangThaiDon().getTenTrangThai())
                .timeLineDTOList(timeLineDTOList)
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
    public HoaDonDetailDTO huyTrangThai(long hoaDonId) {
        HoaDon hoaDon = hoaDonRepository.findById(hoaDonId).get();
        List<TrangThaiDon> trangThaiDonList = new ArrayList<>();
        List<TimeLineDTO> timeLineDTOList = new ArrayList<>();
        long idTrangThai = hoaDon.getTrangThaiDon().getID();
        String status = hoaDon.getIdStatus();
        String timeLine = hoaDon.getTimeLine();
        Date now = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
        String formattedDate = sdf.format(now);
        if(idTrangThai != 4 && idTrangThai != 5 && idTrangThai != 6) {
            idTrangThai = 5;
            status = status + "," + String.valueOf(idTrangThai);
            timeLine = timeLine + "," + formattedDate;
        } else if (idTrangThai == 4 && idTrangThai != 5 && idTrangThai != 6) {
            idTrangThai = 6;
            status = status + "," + String.valueOf(idTrangThai);
            timeLine = timeLine + "," + formattedDate;
        }

        List<String> idTrangThaiList = List.of(status.split(","));
        List<String> timeLineList = List.of(timeLine.split(","));
        int index = 0;
        for(String id : idTrangThaiList){
            TrangThaiDon trangThaiDon = trangThaiDonRepository.findById(Long.parseLong(id)).get();
            String time = timeLineList.get(0);
            TimeLineDTO timeLineDTO = TimeLineDTO.builder()
                    .time(timeLineList.get(index))
                    .trangThaiDon(trangThaiDon)
                    .build();
            index++;
            timeLineDTOList.add(timeLineDTO);
        }
        hoaDon.setTrangThaiDon(trangThaiDonRepository.findById(idTrangThai).get());
        hoaDon.setIdStatus(status);
        hoaDon.setTimeLine(timeLine);
        hoaDonRepository.save(hoaDon);
        String tenGiamGia = "khong dung";
        float giaTriGiamGia = 0;
        if(hoaDon.getGiamGia() != null){
            tenGiamGia = hoaDon.getGiamGia().getTenGiamGia();
            giaTriGiamGia = hoaDon.getGiamGia().getGiaTriGiamGia();
        }
        HoaDonDetailDTO hoaDonDetailDTO = HoaDonDetailDTO.builder()
                .id(hoaDonId)
                .maHoaDon(hoaDon.getMaHoaDon())
                .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                .sdt(hoaDon.getSdtNguoiNhan())
                .tenNguoiNhan(hoaDon.getKhachHang().getTenKhachHang())
                .trangThai(hoaDon.getTrangThaiDon().getTenTrangThai())
                .timeLineDTOList(timeLineDTOList)
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
    public List<HoaDonRequest> filterHoaDonRequest(String search, String status, String batDau, String ketThuc) throws ParseException {
        List<HoaDon> hoaDons = hoaDonRepository.findAll();

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date bd = null,kt = null ;
        if(!batDau.isEmpty() && !ketThuc.isEmpty()){
            bd = formatter.parse(batDau);
            kt = formatter.parse(ketThuc);
        }
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
        if(search != null && status != null && !batDau.isEmpty() && !ketThuc.isEmpty()) {
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();

            for (HoaDon hoaDon : hoaDons) {
                if (hoaDon.getMaHoaDon().contains(search) &&
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
                            .maHoaDon(hoaDon.getMaHoaDon())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(sdf.format(hoaDon.getNgayTao()))
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            hoaDonRequests.sort(new Comparator<HoaDonRequest>() {
                @Override
                public int compare(HoaDonRequest o1, HoaDonRequest o2) {
                    if(o1.getID() < o2.getID()){
                        return 1;
                    }
                    return -1;
                }
            });
            return hoaDonRequests;
        }else if (search == null && status != null && !batDau.isEmpty() && !ketThuc.isEmpty()) {
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
                            .maHoaDon(hoaDon.getMaHoaDon())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(sdf.format(hoaDon.getNgayTao()))
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            hoaDonRequests.sort(new Comparator<HoaDonRequest>() {
                @Override
                public int compare(HoaDonRequest o1, HoaDonRequest o2) {
                    if(o1.getID() < o2.getID()){
                        return 1;
                    }
                    return -1;
                }
            });
            return hoaDonRequests;
        } else if (search == null && status == null && !batDau.isEmpty() && !ketThuc.isEmpty()) {
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
                            .maHoaDon(hoaDon.getMaHoaDon())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(sdf.format(hoaDon.getNgayTao()))
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            hoaDonRequests.sort(new Comparator<HoaDonRequest>() {
                @Override
                public int compare(HoaDonRequest o1, HoaDonRequest o2) {
                    if(o1.getID() < o2.getID()){
                        return 1;
                    }
                    return -1;
                }
            });
            return hoaDonRequests;
        }else if (search != null && status == null && batDau.isEmpty() && ketThuc.isEmpty()){
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
            for (HoaDon hoaDon : hoaDons) {
                if (hoaDon.getMaHoaDon().contains(search)) {
                    long tongSl = 0, tongTien = 0;
                    for (HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)) {
                        tongSl += hoaDonChiTiet.getSoLuong();
                        tongTien += hoaDonChiTiet.getThanhTien();
                    }
                    HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                            .ID(hoaDon.getID())
                            .maHoaDon(hoaDon.getMaHoaDon())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(sdf.format(hoaDon.getNgayTao()))
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            hoaDonRequests.sort(new Comparator<HoaDonRequest>() {
                @Override
                public int compare(HoaDonRequest o1, HoaDonRequest o2) {
                    if(o1.getID() < o2.getID()){
                        return 1;
                    }
                    return -1;
                }
            });
            return hoaDonRequests;
        } else if (search == null && status != null && batDau.isEmpty() && ketThuc.isEmpty()) {
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
                            .maHoaDon(hoaDon.getMaHoaDon())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(sdf.format(hoaDon.getNgayTao()))
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            hoaDonRequests.sort(new Comparator<HoaDonRequest>() {
                @Override
                public int compare(HoaDonRequest o1, HoaDonRequest o2) {
                    if(o1.getID() < o2.getID()){
                        return 1;
                    }
                    return -1;
                }
            });
            return hoaDonRequests;
        }else if (search != null && status == null && !batDau.isEmpty() && !ketThuc.isEmpty()) {
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
            for (HoaDon hoaDon : hoaDons) {
                if (hoaDon.getMaHoaDon().contains(search) &&
                        hoaDon.getNgayTao().compareTo(bd) > 0 && hoaDon.getNgayTao().compareTo(kt) < 0) {
                    long tongSl = 0, tongTien = 0;
                    for (HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)) {
                        tongSl += hoaDonChiTiet.getSoLuong();
                        tongTien += hoaDonChiTiet.getThanhTien();
                    }
                    HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                            .ID(hoaDon.getID())
                            .maHoaDon(hoaDon.getMaHoaDon())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(sdf.format(hoaDon.getNgayTao()))
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            hoaDonRequests.sort(new Comparator<HoaDonRequest>() {
                @Override
                public int compare(HoaDonRequest o1, HoaDonRequest o2) {
                    if(o1.getID() < o2.getID()){
                        return 1;
                    }
                    return -1;
                }
            });
            return hoaDonRequests;
        } else if (search != null && status != null && batDau.isEmpty() && ketThuc.isEmpty()) {
            List<HoaDonRequest> hoaDonRequests = new ArrayList<>();
            for (HoaDon hoaDon : hoaDons) {
                if (hoaDon.getMaHoaDon().contains(search) &&
                        (hoaDon.getTrangThaiDon().getID() == Long.valueOf(status) || Long.valueOf(status) == 0)) {
                    long tongSl = 0, tongTien = 0;
                    for (HoaDonChiTiet hoaDonChiTiet : hoaDonChiTietRepository.findHoaDonChiTietsByHoaDon(hoaDon)) {
                        tongSl += hoaDonChiTiet.getSoLuong();
                        tongTien += hoaDonChiTiet.getThanhTien();
                    }
                    HoaDonRequest hoaDonRequest = HoaDonRequest.builder()
                            .ID(hoaDon.getID())
                            .maHoaDon(hoaDon.getMaHoaDon())
                            .tenKH(hoaDon.getKhachHang().getTenKhachHang())
                            .tongSp(tongSl)
                            .tongTien(tongTien)
                            .ngayTao(sdf.format(hoaDon.getNgayTao()))
                            .trangThaiDon(hoaDon.getTrangThaiDon().getTenTrangThai())
                            .build();
                    hoaDonRequests.add(hoaDonRequest);
                }
            }
            hoaDonRequests.sort(new Comparator<HoaDonRequest>() {
                @Override
                public int compare(HoaDonRequest o1, HoaDonRequest o2) {
                    if(o1.getID() < o2.getID()){
                        return 1;
                    }
                    return -1;
                }
            });
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
        long tongTienDonHang = 0,giamGiaNguyen = 0,thanhTien = 0;
        float tienGiamGia = 0;
        for(HoaDonChiTiet hd : hoaDonChiTietList){
            tongTienDonHang += hd.getThanhTien();
        }
        if(giamGia != null){
            tienGiamGia =(float) tongTienDonHang*giamGia.getGiaTriGiamGia()/100;
            giamGiaNguyen = Math.round(tienGiamGia);
        }

        thanhTien = tongTienDonHang - giamGiaNguyen;
        String hinhThuc = "";
        if(createDonHangRequest.getType().equals("2")){
            hinhThuc = "Tiền mặt";
        }else{
            hinhThuc = "Chuyển khoản";
        }
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
        String formattedDate = sdf.format(ngayHienTai);
        TrangThaiDon trangThaiDon = trangThaiDonRepository.findById(1L).get();
        HoaDon hoaDon = HoaDon.builder()
                .khachHang(khachHang)
                .ngayTao(new Date())
                .nguoiTao(nhanVien.getHoTen())
                .tongTienDonHang(tongTienDonHang)
                .tienGiamGia(giamGiaNguyen)
                .thanhTien((thanhTien))
                .hinhThucThanhToan(hinhThuc)
                .phiVanChuyen(0F)
                .diaCHiGiaoHang(null)
                .thoiGianGiaoHang(null)
                .sdtNguoiNhan(khachHang.getSdt())
                .trangThaiDon(trangThaiDon)
                .idStatus("1")
                .timeLine(formattedDate)
                .build();
        if(check && giamGia != null){
            hoaDon.setGiamGia(giamGia);
            giamGia.setSoLuong(giamGia.getSoLuong()-1);
        }else {
            hoaDon.setGiamGia(null);
        }
        hoaDonRepository.save(hoaDon);
        if(hoaDon.getID() < 1000){
            if(hoaDon.getID() < 10){
                hoaDon.setMaHoaDon("HD000" + String.valueOf(hoaDon.getID()));
            } else if (hoaDon.getID() < 100) {
                hoaDon.setMaHoaDon("HD00" + String.valueOf(hoaDon.getID()));
            }else {
                hoaDon.setMaHoaDon("HD00" + String.valueOf(hoaDon.getID()));
            }
        }else{
            hoaDon.setMaHoaDon("HD" + String.valueOf(hoaDon.getID()));
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
        long tongTienDonHang = 0,giamGiaNguyen = 0,thanhTien = 0;
        float tienGiamGia = 0;
        for(HoaDonChiTiet hd : hoaDonChiTietList){
            tongTienDonHang += hd.getThanhTien();
        }
        if(hoaDon.getGiamGia() != null){
            tienGiamGia =(float) tongTienDonHang*hoaDon.getGiamGia().getGiaTriGiamGia()/100;
            giamGiaNguyen = Math.round(tienGiamGia);
        }

        thanhTien = tongTienDonHang - giamGiaNguyen;
        thanhTien = tongTienDonHang - giamGiaNguyen;
        hoaDon.setTongTienDonHang((tongTienDonHang));
        hoaDon.setTienGiamGia(giamGiaNguyen);
        hoaDon.setThanhTien(thanhTien);
        hoaDonRepository.save(hoaDon);
        return true;
    }

}
