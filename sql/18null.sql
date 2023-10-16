SELECT * FROM customers ORDER BY 1 DESC;
INSERT INTO customers (CustomerName)
VALUE ('흥민');

-- NULL : 값이 없음

INSERT INTO customers (CustomerName, ContactName)
VALUE ('강인', '');  -- null과 빈 스트링은 다름

INSERT INTO customers (CustomerName, ContactName)
VALUE ('민재', null); -- null을 일부러 넣고 싶으면 null 키워드 사용

SELECT ProductID, ProductName, Price FROM products ORDER BY 1 DESC;
INSERT INTO products (ProductName, Price)
VALUE ('피자', 0.00);
INSERT INTO products (ProductName, Price)
VALUE ('햄버거', null);

-- 비교연산시, 피연산자가 NULL이면 결과는 항상 false이기 때문에
-- 아래처럼 조회해도 나오지 않는다.

SELECT * FROM products
WHERE Price = 0.00
ORDER BY 1 DESC;

SELECT * FROM products
WHERE Price != 0.00
ORDER BY 1 DESC;

-- NULL 판단 방법
SELECT * FROM products
WHERE Price IS NULL;

SELECT * FROM products
WHERE Price IS NOT NULL;

-- NULL이 피연산자이면, 산술연산시 결과는 NULL

SELECT ProductName, Price * 100
FROM products;

SELECT ProductName, Price
FROM products
ORDER BY ProductID DESC;

-- 조회시, NULL값을 대체해 조회하고 싶을 시, IFNULL(column, 대체값) 사용
SELECT ProductName, IFNULL(Price, 0.00)
FROM products
ORDER BY ProductID DESC;

-- 예) contactName이 null인 고객 조회
SELECT * FROM customers
WHERE ContactName IS NULL;

-- 예) address가 null인 고객 조회
SELECT * FROM customers
WHERE Address IS NULL;

-- 예) 고객 조회(customerName, country 컬럼만), 단, country가 null이면 '없음' 표시
SELECT CustomerName, IFNULL(Country, '없음')
FROM customers
ORDER BY 1 DESC;





















