package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto10;
import com.example.spring20230920.domain.MyDto9;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main10")
public class Controller10 {
    @RequestMapping("sub1")
    public void method1(Model model){
        MyDto9 o1 = new MyDto9();
        MyDto9 o2 = new MyDto9();

        o1.setFirstName("son");
        o2.setFirstName("lee");

        model.addAttribute("students", List.of(o1, o2));

        MyDto9 l1 = new MyDto9();
        MyDto9 l2 = new MyDto9();
        MyDto9 l3 = new MyDto9();

        l1.setFirstName("kim");
        l2.setFirstName("park");
        l3.setFirstName("choi");

        model.addAttribute("studentList", List.of(l1, l2, l3));
    }

    @RequestMapping("sub2")
    public void method2(Model model){
        MyDto9 o1 = new MyDto9();
        MyDto9 o2 = new MyDto9();

        o1.setLastName("두식");
        o2.setLastName("봉석");

        model.addAttribute("personMap",
                Map.of("person1", o1, "person2", o2));


        model.addAttribute("people",
                Map.of("1st", o1, "2nd", o2));

    }

    @RequestMapping("sub3")
    public void method3(Model model){
        MyDto10 o1 = new MyDto10();

        o1.setName("doosik");
        o1.setId(3);
        o1.setFoods(List.of("pizza", "burger", "milk"));
        o1.setCars(List.of("ferrari", "mclaren", "mercedes"));

        model.addAttribute("person1", o1);
    }

    @RequestMapping("sub4")
    public void method4(Model model){
        model.addAttribute("myList", List.of("ferrari", "mclaren", "mercedes"));
    }

    @RequestMapping("sub5")
    public void method5(Model model){
        model.addAttribute("foodList", List.of("pizza", "hamburger", "pasta", "chicken"));
        model.addAttribute("names", List.of("두식", "봉석", "희수", "미현"));

    }

    @RequestMapping("sub6")
    public void method(Model model){
        List<MyDto9> list = new ArrayList<>();
        list.add(new MyDto9("fw", "hm", "son", "tot", "01"));
        list.add(new MyDto9("atm", "ki", "lee", "psg", "02"));
        list.add(new MyDto9("cb", "mj", "kim", "bm", "03"));
        list.add(new MyDto9("st", "sd", "kim", "ph", "12"));
        list.add(new MyDto9("coach", "kd", "kim", "ph", "00"));

        model.addAttribute("man", list);
    }

    @RequestMapping("sub7")
    public void method7(Model model){
        model.addAttribute("a", 3);
        model.addAttribute("b", 5);

        model.addAttribute("c", "8");
        model.addAttribute("d", "9");
    }

    @RequestMapping("sub8")
    public void method8(Model model) {
        model.addAttribute("a", 3);
        model.addAttribute("b", 5);

        model.addAttribute("c","java" );
        model.addAttribute("d","spring" );

        model.addAttribute("e", "11");
        model.addAttribute("f", "2");
        model.addAttribute("g", 2);
        // ${e>f} -> false : string끼리의 비교
        // ${e > g} -> true : 다른 타입끼리의 비교는 숫자로 변환하려고 노력함

    }

    @RequestMapping("sub9")
    public void method9(Model model){
        model.addAttribute("a", "java");
        model.addAttribute("b", "");

        model.addAttribute("c", List.of(3, 4));
        model.addAttribute("d", List.of());

        model.addAttribute("e", Map.of("name", "son"));
        model.addAttribute("f", Map.of());

        model.addAttribute("g", null);

    }















}
