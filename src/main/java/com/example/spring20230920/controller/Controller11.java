package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto9;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main11")
public class Controller11 {
    @RequestMapping("sub1")
    public void method1() {

    }

    @RequestMapping("sub2")
    public void method2() {

    }

    @RequestMapping("sub3")
    public void method3() {

    }

    @RequestMapping({"sub4", "sub5", "sub6"})
    public void method4() {

    }

    @RequestMapping("sub7")
    public void method5(@RequestParam(value = "show", defaultValue = "false")
                        Boolean show, Model model) {

        if (show) {
            List<MyDto9> list = new ArrayList<>();
            list.add(new MyDto9("fw", "hm", "son", "tot", "01"));
            list.add(new MyDto9("atm", "ki", "lee", "psg", "02"));
            list.add(new MyDto9("cb", "mj", "kim", "bm", "03"));
            list.add(new MyDto9("st", "sd", "kim", "ph", "12"));
            list.add(new MyDto9("coach", "kd", "kim", "ph", "00"));

            model.addAttribute("man", list);
        }
    }
}
