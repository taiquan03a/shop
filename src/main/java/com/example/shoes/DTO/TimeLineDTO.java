package com.example.shoes.DTO;

import com.example.shoes.entity.TrangThaiDon;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class TimeLineDTO {
    private String time;
    private TrangThaiDon trangThaiDon;
}
