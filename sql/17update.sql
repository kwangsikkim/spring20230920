# UPDATE tableName
# SET column1 = value1, column2 = value2, ...
# WHERE condition;


SELECT * FROM products;
SELECT * FROM products WHERE ProductID = 1;
UPDATE products
SET ProductName = '차이즈',
    Unit = '10박스',
    Price = 36.00
WHERE ProductID = 1;

UPDATE products
SET ProductName = '두부김치'; -- 안됨, WHERE절 꼭 쓰기

-- 예) 5번 고객의 이름 수정하기
SELECT * FROM customers
WHERE CustomerID = 5;
UPDATE customers
SET CustomerName = '광식'
WHERE CustomerID = 5;

-- 예) 5번 직원의 notes 변경하기
SELECT * FROM employees
WHERE EmployeeID = 5;
UPDATE employees
SET Notes = '???'
WHERE EmployeeID = 5;

-- 예) 1번 공급자의 전화번호, 주소 변경하기
SELECT * FROM suppliers
WHERE SupplierID = 1;
UPDATE suppliers
SET Address = '신림',
    Phone = '01048461234'
WHERE SupplierID = 1;

-- 원래 값 기준, 연산자도 사용 가능
SELECT * FROM products
         WHERE CategoryID = 1;
UPDATE products
SET Price = Price * 2
WHERE CategoryID = 1;


SELECT * FROM employees;







