package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto18Employees;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.*;
import java.time.LocalDate;
import java.util.Map;

@Controller
@RequestMapping("main25")
public class Controller25 {

    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    private void method1(@RequestParam(value = "id", required = false)
                         Integer customerId) throws SQLException {
        String sql = """
                DELETE FROM customers
                WHERE customerID = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement){
            statement.setInt(1, customerId);
            int rows = statement.executeUpdate();  // insert, delete, update ->

            if (rows == 1) {
                System.out.println(rows + "개 잘 삭제됨");
            } else {
                System.out.println("삭제 안됨");
            }
        }
    }
    @GetMapping("sub2")
    private void method2(@RequestParam(value = "pid", required = false) Integer pid,
                        Model model) throws SQLException {

    }

    @PostMapping("sub2")
    private void method3(@RequestParam("pid") Integer productId) throws SQLException{
        String sql = """
                DELETE FROM products
                WHERE ProductID = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement){

            statement.setInt(1, productId);

            int rows = statement.executeUpdate();

            if (rows == 1) {
                System.out.println(rows + "개 잘 삭제됨");
            } else {
                System.out.println("삭제 안됨");
            }
        }

    }

    @GetMapping("sub4")
    private void method4() throws SQLException {
        String sql = """
                UPDATE shippers
                SET
                    shipperName = ?,
                    phone = ?
                WHERE
                    shipperId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement){
            statement.setString(1, "이강인");
            statement.setString(2, "01012345678");
            statement.setInt(3, 1);

            int rows = statement.executeUpdate();
            if (rows == 1) {
                System.out.println("잘됨");
            } else {
                System.out.println("안됨");
            }

        }
    }


    @GetMapping("sub5")
    public void method5(@RequestParam("id") Integer shipperId, Model model) throws SQLException {
        String sql = """
                SELECT * FROM shippers
                WHERE shipperId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setInt(1, shipperId);

            ResultSet resultSet = statement.executeQuery();

            try (resultSet) {
                if (resultSet.next()) {
                    model.addAttribute("shipper", Map.of("shipperId", resultSet.getInt("shipperId"),
                            "shipperName", resultSet.getString("shipperName"),
                            "phone", resultSet.getString("phone")));
                }

            }

        }

    }

    @PostMapping("sub5")
    public String method6(
            @RequestParam("id") Integer shipperId,
            @RequestParam("name") String shipperName,
            @RequestParam("phone") String phone,
            RedirectAttributes rttr
    ) throws SQLException {
        String sql = """
                UPDATE shippers
                SET shipperName = ?,
                    phone = ?
                WHERE
                    shipperId = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement) {
            statement.setString(1, shipperName);
            statement.setString(2, phone);
            statement.setInt(3, shipperId);

            int rows = statement.executeUpdate();

            if (rows == 1) {
                System.out.println("잘 변경됨");
            } else {
                System.out.println("문제 생김");
            }

        }

        rttr.addAttribute("id", shipperId);
        return "redirect:/main25/sub5";
    }


    @GetMapping("sub7")
    public void method7(@RequestParam(value = "id", required = false) Integer employeeId,
                        Model model) throws SQLException {
        if (employeeId == null) {
            return;
        }
        String sql = """
                SELECT * FROM employees
                WHERE employeeId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setInt(1, employeeId);

            ResultSet resultSet = statement.executeQuery();

            try (resultSet) {
                if (resultSet.next()) {
                    String lastName = resultSet.getString("lastName");
                    String firstName = resultSet.getString("firstName");
                    LocalDate birthDate = resultSet.getTimestamp("birthDate").toLocalDateTime().toLocalDate();
                    String photo = resultSet.getString("photo");
                    String notes = resultSet.getString("notes");

                    model.addAttribute("employee", Map.of("lastName", lastName,
                            "firstName", firstName,
                            "birthDate", birthDate,
                            "photo", photo,
                            "notes", notes,
                            "employeeId", employeeId));

                }
            }
        }
    }

    @PostMapping("sub7")
    public String method8(
            MyDto18Employees employees,
            RedirectAttributes rttr
    ) throws SQLException {
        String sql = """
                UPDATE employees
                SET LastName = ?,
                    FirstName = ?,
                    BirthDate = ?,
                    Photo = ?,
                    Notes = ?
                WHERE EmployeeID = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement){
            statement.setString(1, employees.getLastName());
            statement.setString(2, employees.getFirstName());
            statement.setTimestamp(3, Timestamp.valueOf(employees.getBirthDate().atStartOfDay()));
            statement.setString(4, employees.getPhoto());
            statement.setString(5, employees.getNotes());
            statement.setInt(6, employees.getEmployeeId());

            int rows = statement.executeUpdate();

            if (rows == 1) {
                System.out.println("잘 변경됨");
            } else {
                System.out.println("문제 생김");
            }
        }
        rttr.addAttribute("id", employees.getEmployeeId());
        return "redirect:/main25/sub7";
    }

    @GetMapping("sub9")
    private String method9(RedirectAttributes rttr) {
        // Controller의 request handler 메소드의 리턴이
        // void(또는 null 리턴) 이면 view의 이름으로 해석

        // String이면 view의 이름으로 해석
        // "redirect: " 접두어 붙으면
        // 응답코드가 302이고 location 응답헤더의 값이 접두어 이후의 값으로 세팅

        // 쿼리스트링에 request parameter로 붙음
        rttr.addAttribute("abc", "def");
        rttr.addAttribute("address", "seoul");

        // 모델에 붙임(session을 잠까 거침)
        rttr.addFlashAttribute("email", "abc@naver.com");


        return "redirect:/main25/sub10";
    }

    @GetMapping("sub10")
    private void method10(Model model) {
        System.out.println("Controller25.method10");

        Object email = model.getAttribute("email");
        System.out.println("email = " + email);
        System.out.println("Controller25.method10");
    }
}







