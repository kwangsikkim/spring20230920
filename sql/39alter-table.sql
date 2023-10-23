use w3schools;
-- ALTER TABLE : 테이블 수정
-- 컬럼 추가, 변경, 삭제

-- 제약 사항 변경
-- NOT NULL, UNIQUE, PRIMARY KEY, DEFAULT, FOREIGN KEY 등

-- 컬럼 추가
ALTER TABLE products
ADD COLUMN col1 INT;
ALTER TABLE products
ADD COLUMN col2 VARCHAR(10);

ALTER TABLE products
ADD COLUMN col3 VARCHAR(10) AFTER ProductName;

ALTER TABLE products
ADD COLUMN col4 VARCHAR(10) FIRST ;

ALTER TABLE products
ADD COLUMN col5 INT
    NOT NULL DEFAULT 1 REFERENCES employees (EmployeeID);

DESC products;

-- 예) 직원 테이블에 salary 컬럼 마지마게 추가
-- data type dec(10, 2), null 미허용, 기본갑  0.00

ALTER TABLE employees
ADD COLUMN Salary DEC(10,2) NOT NULL DEFAULT 0.00;

DESC employees;

-- 컬럼 삭제
ALTER TABLE products
DROP COLUMN col1;

-- 예) products 테이블에서 col2 컬럼 삭제
ALTER TABLE products
DROP COLUMN col2;

DESC products;

-- 컬럼 변경
ALTER TABLE products
MODIFY COLUMN col3 INT;

DESC products;

INSERT INTO products (col4)
VALUE ('pizza');

SELECT * FROM products ORDER BY ProductID DESC ;

ALTER TABLE products
MODIFY COLUMN col4 INT;
-- 이미 VARCHAR 타입의 데이터(pizza)가 있기에 INT 타입으로 변경 불가








