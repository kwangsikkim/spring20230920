SELECT CustomerName, City, Country FROM customers
WHERE Country = 'spain';

SELECT CustomerName, City, Country FROM customers
WHERE City = 'Madrid';

SELECT CustomerName, City, Country FROM customers
WHERE City = 'Madrid' AND Country = 'Spain';

SELECT CustomerName, City, Country FROM customers
WHERE City != 'Madrid' AND Country = 'Spain';

SELECT CustomerName, City, Country FROM customers
WHERE City <> 'Madrid' AND Country <> 'Spain';

SELECT CustomerName, City, Country FROM customers
WHERE NOT (City = 'Madrid' AND Country = 'Spain');

SELECT CustomerName, City, Country FROM customers
WHERE City <> 'Madrid' OR Country <> 'Spain';

SELECT CustomerName, City, Country FROM customers
WHERE City = 'Madrid';
SELECT CustomerName, City, Country FROM customers
WHERE Country = 'Spain';
SELECT CustomerName, City, Country FROM customers
WHERE City = 'Madrid' OR Country = 'Spain';

SELECT CustomerName, City, Country FROM customers
WHERE Country = 'Spain' OR Country = 'UK';


SELECT *FROM products
WHERE Price >= 10.00 AND Price <= 20.00;

SELECT * FROM customers
WHERE CustomerName >= 'c' AND CustomerName < 'd';

SELECT * FROM employees
WHERE BirthDate >= '1958-01-01' AND BirthDate < '1959-01-01';

-- 예) 스웨덴이나 이탈리아에 있는 공급자들 조회
SELECT * FROM suppliers
WHERE Country = 'Sweden' OR Country = 'Italy';

-- 예) 1963년 8월생 직원 조회
SELECT * FROM employees
WHERE BirthDate >= '1963-08-01' AND BirthDate < '1963-09-01';

-- 예) 가격이 100.00이상 200.00이하인 상품 조회
SELECT * FROM products
WHERE Price >= 100.00 AND Price <= 200.00;

-- 예) 1997년에 주문한 주문 조회
SELECT * FROM orders
WHERE OrderDate >= '1997-01-01' AND OrderDate < '1998-01-01';

-- 여러 연산자 조합 시 () 사용해 우선 순위 결정
-- 예) 1번 카테고리 상품 중에서 10달러 미만, 100달러 이상
SELECT * FROM products
WHERE (Price < 10 OR Price >= 100) AND CategoryID = 1;

--






















