package com.example.spring20230920;

import jakarta.annotation.PostConstruct;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp13 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp13.class, args);

    }
}

@Component
class MyClass26 {

    @PostConstruct  // 해당 메소드를 dependency injection 완료 직후에 바로 실행하는 annotation
    public void method1( ) {
        System.out.println("MyClass26.method1");
    }
}


