package com.example.spring20230920.dao;

import com.example.spring20230920.domain.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Mapper
public interface MyDao3 {

    // 1행 1열
    @Select("""
            SELECT customerName FROM customers
            WHERE CustomerID = 1
            """)
    String select1();

    @Select("""
            SELECT price FROM products
            WHERE ProductID = 1
            """)
    Double select2();

    @Select("""
            SELECT LastName FROM employees
            WHERE EmployeeID = 1
            """)
    String select3();

    @Select("""
            SELECT BirthDate FROM employees
            WHERE EmployeeID = 2
            """)
    LocalDate select4();

    @Select("""
            SELECT DISTINCT Country FROM customers
            ORDER BY 1
            """)
    List<String> select5();

    @Select("""
            SELECT BirthDate FROM employees
            ORDER BY 1
            """)
    List<LocalDate> select6();

    @Select("""
            SELECT Price FROM products
            ORDER BY 1
            """)
    List<Double> select7();

    @Select("""
            SELECT CustomerID, CustomerName, Address
            FROM customers
            WHERE CustomerID = 1
            """)
    Map<String, Object> select8();


    @Select("""
            SELECT ProductName, Price, CategoryName
            FROM products p
            JOIN categories c 
            ON c.CategoryID = p.CategoryID
            WHERE p.ProductID = 1
            """)
    Map<String, Object> select9();


    @Select("""
            SELECT EmployeeID, LastName, FirstName
            FROM employees
            WHERE EmployeeID = 1
            """)
    MyDto19 select10();


    @Select("""
            SELECT ProductName productName, Price price, CategoryName categoryName 
            FROM products p  
            JOIN categories c 
            ON p.CategoryID = c.CategoryID
            WHERE p.ProductID = 1
            """)
    MyDto20 select11();


    @Select("""
            SELECT CustomerID id, CustomerName name, Country country
            FROM customers
            WHERE CustomerID = 1
            """)
    MyDto21 select12();

    @Select("""
            SELECT ProductID id, ProductName name, Price price
            FROM products
            WHERE CategoryID = 2
            ORDER BY Price
            """)
    List<Map<String, Object>> select13();

    @Select("""
            SELECT ProductName name, Quantity quantity, Price price
            FROM products p
            JOIN orderdetails od
            ON p.ProductID = od.ProductID
            JOIN orders o 
            ON o.OrderID = od.OrderID
            WHERE o.OrderDate = '1996-07-04'
            """)
    List<Map<String, Object>> select14();


    @Select("""
            SELECT ProductName name, Quantity quantity, Price price
            FROM products p
            JOIN orderdetails od
            ON p.ProductID = od.ProductID
            JOIN orders o 
            ON o.OrderID = od.OrderID
            WHERE o.OrderDate = '1996-07-04'
            """)
    List<MyDto22> select15();

    @Select("""
            SELECT OrderDate orderDate, ProductName name, CategoryName categoryName, Quantity quantity, Price price
            FROM orders o 
            JOIN orderdetails od
            ON o.OrderID = od.OrderID
            JOIN products p 
            ON p.ProductID = od.ProductID
            JOIN categories c 
            ON c.CategoryID = p.CategoryID
            WHERE c.CategoryID = 1
            ORDER BY OrderDate AND ProductName
            """)
    List<MyDto23> select16();


    @Select("""
            SELECT CustomerName 
            FROM customers
            WHERE CustomerID = 100
            """)
    String select17();


    @Select("""
            SELECT CustomerID
            FROM customers
            WHERE CustomerID = 100""")
    Integer select18();


    @Select("""
            SELECT CustomerID id, CustomerName name, Country
            FROM customers
            WHERE CustomerID = 1
            """)
    MyDto24 select19();


    @Select("""
            SELECT CustomerID id, CustomerName name, Country
            FROM customers
            WHERE CustomerID > 1
            """)
    MyDto24 select20();
}













