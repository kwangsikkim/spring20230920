USE w3schools;
-- aggregate function : 집합 함수, 집계 함수, 그룹함수
-- MAX, MIN, COUNT, SUM, AVG 등..

SELECT *
FROM products;

-- MAX
SELECT MAX(Price)
FROM products;

SELECT *
FROM products
ORDER BY Price DESC;
-- Côte de Blaye가 263.50 으로 가장 비싼 가격

SELECT ProductName, MAX(Price)
FROM products;
-- Chais로 나옴. 이렇게 하면 안됨.
-- 다음과 같이 서브쿼리를 이용해 작성
SELECT ProductName
FROM products
WHERE Price = (SELECT MAX(Price) FROM products);

-- MIN
SELECT MIN(Price)
FROM products;

SELECT *
FROM products
WHERE Price = (SELECT MIN(Price) FROM products);

-- 예) 가장 어린 직원명 조회
SELECT CONCAT(FirstName, ' ', LastName)
FROM employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM employees);

-- 예) 가장 나이 많은 직원명 조회
SELECT CONCAT(FirstName, ' ', LastName)
FROM employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM employees);

-- COUNT : 개수
SELECT *
FROM employees;
SELECT COUNT(EmployeeID)
FROM employees;
SELECT COUNT(LastName)
FROM employees;
SELECT COUNT(FirstName)
FROM employees;
-- NULL은 집계함수에서 포함하지 않는다.
-- NULL을 가진 data가 있다면 같은 table의 column들이어도 다른 COUNT가 나올수 있다

INSERT INTO employees(LastName)
VALUES ('흥민');
SELECT *
FROM employees
ORDER BY 1 DESC;
SELECT COUNT(EmployeeID)
FROM employees; -- 10
SELECT COUNT(LastName)
FROM employees; -- 10
SELECT COUNT(FirstName)
FROM employees; -- 9 , firstName이 NULL

SELECT MIN(BirthDate)
FROM employees;
SELECT MAX(BirthDate)
FROM employees; -- MIN, MAX에도 NULL은 집계 X

INSERT INTO products (ProductName)
VALUES ('커피');

SELECT *
FROM products
ORDER BY 1 DESC;
SELECT MIN(Price)
FROM products;
-- 만약 NULL을 0으로 계산하고싶다면
SELECT MIN(IFNULL(Price, 0))
FROM products;
SELECT *
FROM products
WHERE IFNULL(Price, 0) = (SELECT MIN(IFNULL(Price, 0)) FROM products);

-- SUM : 합
SELECT *
FROM products;
SELECT SUM(Price)
FROM products;

SELECT SUM(od.Quantity)
FROM orders o
         JOIN orderdetails od
              ON o.OrderID = od.OrderID
WHERE o.OrderDate = '1996-07-04';

-- 예) 1996-07-04 매출액 구하기
SELECT SUM(p.Price * od.Quantity)
FROM orders o
         JOIN orderdetails od
              ON o.OrderID = od.OrderID
         JOIN products p
            ON p.ProductID = od.ProductID
     WHERE o.OrderDate = '1996-07-04';

-- AVG : 평균
SELECT AVG(Price) FROM products;        -- 28.866364
SELECT SUM(Price) FROM products;        -- 2222.71
SELECT COUNT(ProductID) FROM products;  -- 78 (NULL이 하나 있음)
SELECT COUNT(Price) FROM products;      -- 77

SELECT 2222.71 / 78;                    --  28.496282
SELECT 2222.71 / 77;                    --  28.866364









