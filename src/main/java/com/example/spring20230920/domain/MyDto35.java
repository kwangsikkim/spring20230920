package com.example.spring20230920.domain;

import lombok.Getter;

public class MyDto35 {
    private String id;
    @Getter
    private String uRL;

    // 프로퍼티 명 : id (get 없애고 앞글자 소문자로)
    public String getId() {
        return id;
    }
//    public String getuRL() {
//        return uRL;
//    }

}
