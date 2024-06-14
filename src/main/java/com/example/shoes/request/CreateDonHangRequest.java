package com.example.shoes.request;

import lombok.*;

@Data
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CreateDonHangRequest {
    private String name;
    private String phone;
    private String type;
    private String list_product;
    private String note;
    private String discount_name;
}
