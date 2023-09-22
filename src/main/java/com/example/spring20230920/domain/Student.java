package com.example.spring20230920.domain;

public class Student {
    // email property (쓰기)
    // info property (없어짐)
    // information property(생김), (읽기, 쓰기)

    // get, set 메소드의 이름을 바꾸면,
    // information property가 있는 것이지, info property 가 있는 것이 아님

    // email의 get 메소드를 지웠다면 set메소드만 남고 email property는 쓰기 기능만 남은 것.

    private String email;
    private String info;

//    public String getEmail() {
//        return email;
//    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getInformation() {
        return info;
    }

    public void setInformation(String info) {
        this.info = info;
    }


}
