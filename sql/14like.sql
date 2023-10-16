SELECT * From customers
WHERE CustomerName = 'Around the Horn';
SELECT * FROM customers
WHERE CustomerName LIKE '%the%';
SELECT * FROM customers
WHERE CustomerName LIKE '%ch%';

-- LIKE : 검색
-- %, _ 기호(wildcard)와 함께 사용

SELECT * FROM customers
WHERE CustomerName LIKE 'the%';
-- % : 0개 이상의 문자. 즉, ch로 시작하는 문자열

SELECT * FROM customers
WHERE CustomerName LIKE '%ch';
-- ch로 끝나는 문자열

SELECT * FROM customers
WHERE CustomerName LIKE '%er';
-- er로 끝나는 문자열

SELECT * FROM customers
WHERE CustomerName LIKE '%er%';
-- 중간에 er이 있는 문자열

SELECT * FROM employees
WHERE FirstName LIKE '_____'; -- : 아무 문자 한음절

SELECT * FROM employees
WHERE LastName LIKE '____';

SELECT * FROM employees
WHERE LastName LIKE '_e%';
-- LastName의 두번째 글자가 e인 직원

-- 예) ch로 시작하는 상품명 조회
SELECT * FROM products
WHERE ProductName LIKE 'ch%';

-- 예) es로 끝나는 상품명 조회
SELECT * FROM products
WHERE ProductName LIKE '%es';

-- 예) 중간에 use가 들어간 상품명 조회
SELECT * FROM products
WHERE ProductName LIKE '%use%';

-- 예) 두번째 글자가 u인 상품명 조회
SELECT * FROM products
WHERE ProductName LIKE '_u%';

SELECT * FROM customers
WHERE CustomerName LIKE '%red%';

SELECT * FROM customers
WHERE ContactName LIKE '%red%';

SELECT * FROM products;










