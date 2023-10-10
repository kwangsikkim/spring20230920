-- DELETE FROM tableName WHERE 조건
-- 주의!!!!!!!1 WHERE 절 꼭!! 작성!!!!!!


SELECT * FROM employees WHERE LastName = '손';
DELETE FROM employees WHERE LastName = '손';

-- 지우기 전 같은 WHERE 절로 지울 레코드인지 꼭 확인!

SELECT * FROM employees;
DELETE FROM employees WHERE LastName = '김';

-- 예) 직원 테이블에 오늘 입력한 레코드 지우기
SELECT * FROM employees;
DELETE FROM employees WHERE LastName = '이';
DELETE FROM employees WHERE LastName = '박';
DELETE FROM employees WHERE LastName = 'son';
DELETE FROM employees WHERE LastName = 1234;
DELETE FROM employees WHERE EmployeeID = 15;
DELETE FROM employees WHERE EmployeeID = 16;

-- 예) 상품 테이블에 오늘 입력한 레코드 지우기
SELECT * FROM products ORDER BY ProductID DESC;
DELETE FROM products WHERE ProductID = 78;
DELETE FROM products WHERE ProductID = 81;
DELETE FROM products WHERE ProductName = '돈까스';
DELETE FROM products WHERE ProductName = 'Basketball';
# DELETE FROM products WHERE ProductID > 77;














