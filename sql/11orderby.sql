SELECT * FROM employees;

SELECT *
FROM employees
ORDER BY BirthDate;

SELECT *
FROM employees
ORDER BY 4;

SELECT EmployeeID, LastName, BirthDate
FROM employees
ORDER BY BirthDate;

SELECT EmployeeID, LastName, BirthDate
FROM employees
ORDER BY 3;
-- SELECT절의 column 순서로 작성 가능

SELECT * FROM products;
SELECT * FROM products
ORDER BY CategoryID, Price;
-- 앞을 우선 순위로 정렬

SELECT * FROM products
ORDER BY CategoryID ASC;
-- 오름차순(기본적으로 오름차순이라 생략가능)

SELECT * FROM products
ORDER BY CategoryID DESC;
-- 내림차순

SELECT * FROM products
ORDER BY CategoryID DESC , Price ASC;

-- 예) 고객을 국가명 오름차순 조회
SELECT * FROM customers
ORDER BY Country;

-- 예) 가격이 비싼 상품이 먼저 조회
SELECT * FROM products
ORDER BY Price DESC;

-- 예) 가장 어린 직원이 먼저 조회
SELECT * FROM employees
ORDER BY BirthDate DESC;









