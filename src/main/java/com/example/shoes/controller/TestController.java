package com.example.shoes.controller;

import jakarta.persistence.Column;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class TestController {
    @GetMapping("/test")
    public String viewBooks() {

//        l;jasdlj

        return "view-book";
        /**/
    }
}

