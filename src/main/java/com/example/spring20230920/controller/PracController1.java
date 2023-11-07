package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao99;
import com.example.spring20230920.domain.MyDto33Employee;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequiredArgsConstructor
@RequestMapping("api/prac1")
public class PracController1 {
    private final MyDao99 dao;

    @GetMapping("sub1")
    @ResponseBody
    public MyDto33Employee method1() {
        return dao.getEmployee();
    }

}
