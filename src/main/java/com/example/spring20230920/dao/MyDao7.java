package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto40;
import com.example.spring20230920.domain.MyDto41;
import org.apache.ibatis.annotations.*;

import java.time.LocalDate;
import java.util.Map;

@Mapper
public interface MyDao7 {

    @Select("""
            SELECT * FROM customers
            WHERE customerID = #{id}
            """)
    Map<String, Object> selectByCustomerId(Integer id);

    @Select("""
        SELECT * FROM Employees
        WHERE EmployeeId = #{id}
        """)
    Map<String, Object> selectByEmployeeId(Integer id);

    @Insert("""
            INSERT INTO employees (lastName, firstName, birthDate)
            VALUES (#{lastName}, #{firstName}, #{birthDate})
            """)
    int insertEmployee(String lastName, String firstName, LocalDate birthDate);


    @Insert("""
        INSERT INTO products (productName, price, categoryId)
        VALUES (#{name}, #{price}, #{category})
        """)
    int insertProduct(String name, Double price, Integer category);


    /*
    axios.delete("/main36/sub11/1")
    axios.delete("/main36/sub11/3")
    axios.delete("/main36/sub11/5")
     */
    @Delete("""
            DELETE FROM products
            WHERE ProductID = #{pid}
            """)
    int deleteByProductId(Integer pid);


    @Delete("""
            DELETE FROM customers
            WHERE CustomerID = #{cid}
            """)
    int deleteByCustomerId(Integer cid);

    @Update("""
        UPDATE products
        SET Price = #{price},
            CategoryID = #{category},
            ProductName = #{name}
        WHERE ProductID = #{id}
        """)
    int updateProduct(MyDto40 dto);


    @Update("""
            UPDATE employees
            SET LastName = #{lastName},
                FirstName = #{firstName},
                BirthDate = #{birthDate}
            WHERE EmployeeID = #{id}
            """)
    int updateEmployee(MyDto41 dto);
}










