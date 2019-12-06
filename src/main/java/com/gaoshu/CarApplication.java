package com.gaoshu;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//创建Mapper层代理类对象
@MapperScan("com.gaoshu.mapper")
@SpringBootApplication
public class CarApplication {

    public static void main(String[] args) {
        SpringApplication.run(CarApplication.class, args);
    }

}
