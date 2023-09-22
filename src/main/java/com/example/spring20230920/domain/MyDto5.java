package com.example.spring20230920.domain;

import lombok.*;

@AllArgsConstructor // 파이널이든 아니든 모든 필드에 대해 하나의 인수를 받는 생성자
@NoArgsConstructor  // 파라미터 없는 생성자가 필요할 때

//@RequiredArgsConstructor // 파이널 필드일 때는, 생성자에서 받을 수 있는 값을 추가
public class MyDto5 {
    private String name;
    private Integer age;

}
