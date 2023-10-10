-- < 작다, > 크다, <= 작거나 같다, >= 크거나 같다

SELECT *
FROM products
WHERE Price < 10.00;

SELECT *
FROM products
WHERE Price > 10.00;

SELECT *
FROM products
WHERE Price >= 10.00;

SELECT *
FROM products
WHERE Price <+ 10.00;

SELECT *
FROM products
WHERE Price = 10.00;


-- 같지 않다(NOT, !=, <>)
SELECT *
FROM products
WHERE NOT Price = 10.00;
SELECT *
FROM products
WHERE Price != 10.00;
SELECT *
FROM products
WHERE Price <> 10.00;

SELECT *
FROM customers
WHERE CustomerID < 3;
SELECT *
FROM customers
WHERE CustomerID < '3';

SELECT *
FROM customers
WHERE CustomerName = 'Alfreds Futterkiste';

SELECT *
FROM customers
WHERE CustomerName < 'B';   -- 사전 순으로 B보다 먼저 나오는 것들 조회

SELECT *
FROM customers
WHERE CustomerName >= 'R';

SELECT *
FROM customers
WHERE CustomerName >= 'r';   -- 대소문자의 구분이 없다

SELECT *
FROM employees;

SELECT *
FROM employees
WHERE BirthDate >= '1960-01-01';

SELECT *
FROM employees
WHERE BirthDate < '1960-01-01';


















