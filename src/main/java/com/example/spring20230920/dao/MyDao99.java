package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto33Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MyDao99 {

    @Select("""
            SELECT * FROM employees
            WHERE EmployeeID = 2
            """)
    MyDto33Employee getEmployee();
}
