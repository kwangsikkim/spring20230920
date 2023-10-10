SELECT Price FROM products
WHERE ProductID = 1;

SELECT Price + 1 FROM products
WHERE ProductID = 1;

SELECT Price - 10.5 FROM products
WHERE ProductID = 1;

SELECT Price * 25 FROM products
WHERE ProductID = 1;

SELECT Price / 17 FROM products
WHERE ProductID = 1;

SELECT Price % 5 FROM products
WHERE ProductID = 1;

SELECT ProductName, Price FROM products;

SELECT ProductName, Price * 2 FROM products;

SELECT ProductName + 1 FROM products;  -- 문자열 연결 연산은 안됨!

SELECT CONCAT(ProductName, 1), Price FROM products; -- 문자열 연결은 concat 사용

-- 1968-12-08
SELECT LastName, BirthDate FROM employees
WHERE EmployeeID = 1;

SELECT LastName, BirthDate + 1 FROM employees
WHERE EmployeeID = 1;   -- 19681209

SELECT LastName, ADDDATE(BirthDate, INTERVAL 1 DAY) FROM employees
WHERE EmployeeID = 1;

SELECT LastName, ADDDATE(BirthDate, INTERVAL -10 DAY) FROM employees
WHERE EmployeeID = 1;

SELECT * FROM employees;

SELECT EmployeeID, LastName, FirstName FROM employees;

SELECT EmployeeID, CONCAT(LastName, FirstName) FROM employees;

SELECT EmployeeID, CONCAT(FirstName, ' ', LastName) FROM employees;

SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName),
       ADDDATE(BirthDate, INTERVAL 1 YEAR)
FROM employees;


-- 예) 주문 수량(quantity) * 2 결과 조회(orderDetails 테이블)
SELECT OrderDetailID, OrderID, ProductID, Quantity * 2 FROM orderdetails;

-- 예) city, country 고객 테이블 조회
SELECT CustomerName, CustomerID, CONCAT(City, ', ', Country) FROM customers;

















