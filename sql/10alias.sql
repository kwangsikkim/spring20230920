SELECT * FROM employees;

SELECT EmployeeID, LastName FROM employees;

-- AS : 컬럼명(테이블명) 변경
SELECT EmployeeID AS id, LastName AS name FROM employees;

SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName) AS FullName
FROM employees;

SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName) FullName
FROM employees;                                 -- AS 생략가능

-- 키워드명이나 띄어쓰기 등 특수기호는 backtick `` 사용
SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName) AS `Full Name`
FROM employees;

-- 예) 공급자의 이름(supplierName), 주소(address, city, country)
-- 전화번호(phone -> phone number)

-- suppliersName, address, `phone number`
SELECT SupplierName, CONCAT(Address, ' ', City, ' ', Country) AS address,
       Phone AS `phone number`
FROM suppliers;

SELECT * FROM products;
SELECT * FROM categories;


SELECT products.ProductName,
       categories.CategoryName
FROM products JOIN categories
                   ON products.CategoryID = categories.CategoryID;

SELECT p.ProductName,
       c.CategoryName
FROM products AS p JOIN categories AS c
                     ON p.CategoryID = c.CategoryID;

SELECT p.ProductName,
       c.CategoryName
FROM products p JOIN categories c
                     ON p.CategoryID = c.CategoryID;




















