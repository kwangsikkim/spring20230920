package com.example.spring20230920.dao;

import com.example.spring20230920.domain.*;
import org.apache.ibatis.annotations.*;

import java.time.LocalDate;
import java.util.List;

@Mapper
public interface MyDao4 {

    @Select("""
            SELECT CustomerName
            FROM customers
            WHERE CustomerID = #{sdfasdfsdfdsfdsf}
            """)
    //                                  ^
    // 파라미터가 하나라면, 이름이 일치하지 않아도 된다.
    // 둘 이상이면 이름을 꼭 상호간에 맞춰야 함!
    String select1(int customerId);


    @Select("""
            SELECT  ProductName
            FROM products
            WHERE Price BETWEEN #{from} AND #{to}
            """)

    List<String> select2(Double from, Double to);


    @Select("""
            SELECT DISTINCT p.ProductName
            FROM products p
            JOIN orderdetails od
            ON p.ProductID = od.ProductID
            JOIN orders o
            ON o.OrderID = od.OrderID
            WHERE o.OrderDate BETWEEN #{min} AND #{max}
            ORDER BY 1
            """)

    List<String> select3(LocalDate min, LocalDate max);

    @Select("""
            SELECT ProductName FROM products
            WHERE Price BETWEEN #{min} AND #{max}
            """)

    List<String> select4(MyDto25 dto);


    @Select("""
            SELECT CustomerName FROM customers
            WHERE Country IN (#{country1}, #{country2})
            """)
    List<String> select5(MyDto26 dto);


    @Select("""
            SELECT COUNT(OrderID)
            FROM orders
            WHERE OrderDate BETWEEN #{dto1.from} AND #{dto2.to}
            """)
                                // javaBean이 2개 일때
    Integer select6(MyDto27 dto1, MyDto28 dto2);

    @Select("""
            SELECT customerName
            FROM customers
            WHERE customerName LIKE #{dto2.keyword}
            LIMIT #{dto1.from}, #{dto1.rows}
            """)
    List<String> select7(MyDto29 dto1, MyDto30 dto2);


    @Insert("""
            INSERT INTO customers (CustomerName, Country)
            VALUE (#{name}, #{country})
            """)
    int insert1(MyDto31 dto);


    @Insert("""
            INSERT INTO employees (FirstName, LastName)
            VALUE (#{firstName}, #{lastName})
            """)
    int insert2(MyDto32 emp);


    @Delete("""
            DELETE FROM customers
            WHERE  CustomerID = #{id}
            """)
    int delete1(Integer id);


    @Delete("""
            DELETE FROM customers
            WHERE CustomerID = #{pid}
            """)
    int delete2(Integer pid);


    @Select("""
            SELECT EmployeeID id,
                   LastName,
                   FirstName,
                   BirthDate,
                   Photo,
                   Notes
            FROM employees
            WHERE EmployeeID = #{id}
            """)
    MyDto33Employee select8(Integer id);


    @Update("""
            UPDATE employees
            SET LastName = #{lastName},
                FirstName = #{firstName},
                Photo = #{photo},
                Notes = #{notes},
                BirthDate = #{birthDate}
            WHERE EmployeeID = #{id}  
            """)
    int update1(MyDto33Employee employee);


    @Select("""
            SELECT CustomerID id,
                   CustomerName,
                   ContactName,
                   Address,
                   City,
                   PostalCode,
                   Country
            FROM customers
            WHERE CustomerID = #{id}
            """)
    MyDto34Customers select15(Integer id);

    @Update("""
            UPDATE customers
            SET CustomerName = #{customerName},
                ContactName = #{contactName},
                Address = #{address},
                City = #{city},
                PostalCode = #{postalCode},
                Country = #{country}
            WHERE CustomerID = #{id}    
            """)
    int update2(MyDto34Customers customers);
}
















