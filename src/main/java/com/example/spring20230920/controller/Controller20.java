package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto15;
import com.example.spring20230920.domain.MyDto16;
import com.example.spring20230920.domain.MyDto17;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main20")
public class Controller20 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(){

    }

    @GetMapping("sub2")
    public String method2(Model model, String id) throws SQLException {
        String sql = """
                SELECT CustomerID, CustomerName, Address, Country
                FROM customers
                WHERE CustomerID = ?
                """;


        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, id);
        ResultSet resultSet = statement.executeQuery();

        List<MyDto15> list = new ArrayList<>();

        try (connection; statement; resultSet){
            while (resultSet.next()) {
                MyDto15 dto = new MyDto15();
                dto.setId(resultSet.getInt(1));
                dto.setName(resultSet.getString(2));
                dto.setAddress(resultSet.getString(3));
                dto.setCountry(resultSet.getString(4));

                list.add(dto);
            }
        }
        model.addAttribute("customerList", list);
        return "/main19/sub6";
    }

    @GetMapping("sub3")
    public void method3(String id) throws SQLException {
        String sql = """
                SELECT customerId, customerName, country
                FROM customers
                WHERE customerId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setString(1, id);
//        statement.setInt(1, 3);

        ResultSet resultSet = statement.executeQuery();

        try (connection; statement; resultSet) {
            while (resultSet.next()) {
                System.out.println();
                System.out.println("고객 정보");
                System.out.println("id = " + resultSet.getString(1));
                System.out.println("name = " + resultSet.getString(2));
            }
        }
    }

    @GetMapping("sub4")
    public void method4(Integer pid) throws SQLException{
        String sql = """
                SELECT productId, productName
                FROM products
                WHERE productId = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, pid);
        ResultSet resultSet = statement.executeQuery();

        try (connection; statement; resultSet){
            while (resultSet.next()){
                System.out.println();
                System.out.println("상품 정보");
                System.out.println("상품번호 = " + resultSet.getInt(1));
                System.out.println("상품명 = " + resultSet.getString(2));
            }
        }
    }

    // main20/sub5?country=spain
    // 콘솔에 spain에 사는 고객 이름 출력
    @GetMapping("sub5")
    public void method(String country) throws SQLException{
        String sql = """
                    SELECT CustomerName
                    FROM customers
                    WHERE Country = ?
                    """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, country);
        ResultSet resultSet = statement.executeQuery();

        try (connection; statement; resultSet){
            while (resultSet.next()) {
                System.out.println();
                System.out.println("고객 정보");
                System.out.println("고객 국가 = " + country);
                System.out.println("고객 이름 = " + resultSet.getString(1));
            }
        }
    }

    @GetMapping("sub6")
    public void method6(String c1, String c2) throws SQLException{
        String sql = """
                SELECT customerName, country
                FROM customers
                WHERE country = ? OR country = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setString(1, c1);
        statement.setString(2, c2);

        ResultSet resultSet = statement.executeQuery();

        try (connection; statement; resultSet){
            System.out.println();
            System.out.println("고객 목록");
            while (resultSet.next()) {
                String country = resultSet.getString(2);
                String name = resultSet.getString(1);
                System.out.println(country + " : " + name);
            }
        }
    }

    @GetMapping("sub7")
    public void method7(){

    }

    @GetMapping("sub8")
    public String method8(Double min, Double max, Model model) throws SQLException{
        String sql = """
                SELECT productid, productname, unit, price
                FROM products
                WHERE Price >= ? AND Price <= ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setDouble(1, min);
        statement.setDouble(2, max);
        ResultSet resultSet = statement.executeQuery();

        List<MyDto16> list = new ArrayList<>();
        try (connection; statement; resultSet){

            while (resultSet.next()) {
                MyDto16 dto = new MyDto16();
                dto.setPrice(resultSet.getDouble(4));
                dto.setUnit(resultSet.getString(3));
                dto.setPid(resultSet.getInt(1));
                dto.setPname(resultSet.getString(2));

                list.add(dto);
            }
        }
        model.addAttribute(list);
        return "/main19/sub5";
    }

    // main20/sub9?country=spain&country=mexico
    @GetMapping("sub9")
    public void method9(@RequestParam("country") List<String> countryList) throws SQLException{
        String questionMarks = "";
        for (int i = 0; i < countryList.size(); i++) {
            questionMarks += "?";

            if (i < countryList.size()-1) {
                questionMarks +=", ";
            }
        }
        // 특정 국가에 속한 고객 조회
        String sql = """
                SELECT *
                FROM customers
                WHERE country IN ("""
                +
                questionMarks
                +
                """
                )
                """;

//        System.out.println("sql = " + sql);

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);


        for (int i = 0; i < countryList.size(); i++) {
            statement.setString(i + 1, countryList.get(i));
        }
        ResultSet resultSet = statement.executeQuery();

        try (connection; statement; resultSet){
            while (resultSet.next()) {
                String name = resultSet.getString(2);
                String country = resultSet.getString(7);

                System.out.println(name + " : " + country);
            }

        }
    }

    @GetMapping("sub10")
    public void method10(Model model) throws SQLException{
        // 공급자의 국가 목록 조회
        String sql = """
                SELECT DISTINCT country
                FROM suppliers 
                """;

    Connection connection = dataSource.getConnection();
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(sql);

    List<String> list = new ArrayList<>();
    try (connection; statement; resultSet){
        while (resultSet.next()){
            list.add(resultSet.getString(1));
        }
    }
        model.addAttribute("countryList", list);
    }

    @GetMapping("sub11")
    public void method11(@RequestParam("suppliersList") List<String> suppliersList,
                         Model model) throws SQLException{
        String questionmarks = "";
        for (int i = 0; i < suppliersList.size(); i++) {
            questionmarks += "?";

            if (i < suppliersList.size()-1) {
                questionmarks +=", ";
            }
        }

        String sql = """
                SELECT *
                FROM suppliers
                WHERE Country IN ("""
                +
                questionmarks
                +
                """
                )
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        for (int i = 0; i < suppliersList.size(); i++) {
            statement.setString(i + 1, suppliersList.get(i));
        }
        List<MyDto17> list = new ArrayList<>();
        ResultSet resultSet = statement.executeQuery();

        try (connection; statement; resultSet){
            while (resultSet.next()) {
                MyDto17 dto = new MyDto17();
                dto.setId(resultSet.getInt(1));
                dto.setName(resultSet.getString(2));
                dto.setCountry(resultSet.getString(7));
                dto.setAddress(resultSet.getString(4));
                dto.setCity(resultSet.getString(5));
                dto.setPhone(resultSet.getString(8));

                list.add(dto);
            }
        }
        model.addAttribute("suppliersList", list);
    }

}
























