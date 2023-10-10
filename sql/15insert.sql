-- INSERT INTO tableName ( columnName1, columnName2, ...)
-- VALUES (value1, value2, ...)

INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUE (10, '손', '흥민', '2000-01-01', '사진10', 'pl득점왕');


INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
    VALUE (11, '이', '강인', '2002-02-02', '사진11', '군면제');

-- 모든 컬럼에 값을 넣을 때는 컬럼명 생략 가능
INSERT INTO employees
VALUE (12, '김', '민재', '2000-03-03', '사진12', '수비왕');


-- 특정 컬럼에만 넣을때는 컬럼명 나열 생략 불가능
INSERT INTO employees (EmployeeID, LastName, FirstName)
VALUE (13, '박', '지성');  -- 나열된 컬럼명과  값의 순서, 갯수가 동일해야 함

SELECT * FROM employees ORDER BY EmployeeID DESC;


-- 값의 타입에 따라 넣는 방법이 다름

-- 권장
INSERT INTO employees (EmployeeID)
VALUE (15);

-- 되긴 됨
INSERT INTO employees (EmployeeID)
VALUE ('16');


INSERT INTO employees (LastName)
    VALUE ('son');

-- 권장
INSERT INTO employees (LastName)
     VALUE ('12345');

-- 되긴 됨
INSERT INTO employees (LastName)
    VALUE (1234);

SELECT * FROM employees ORDER BY EmployeeID DESC;

INSERT INTO employees (BirthDate)
    VALUE ('2000-01-12');

SELECT * FROM products
ORDER BY ProductID DESC;

INSERT INTO products (Price)
VALUE (20.10);

INSERT INTO products (Price)
VALUE ('30.33'); -- 되긴 됨

# INSERT INTO products (Price)
# VALUE ('thirteen'); -- 안됨

-- 예) 80번 상품 입력 (productId, productName, supplierId, categoryId, unit, price)
-- 예) 81번 상품 입력 (productId, supplierId, categoryId, unit, price)
INSERT INTO products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
VALUE (80, 'Basketball', 23, 24, '30 balls', 60.00);

INSERT INTO products (ProductID, SupplierID, CategoryID, Unit, Price)
VALUE (81, 12, 13, '10 balls', 6.00);

INSERT INTO products (ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
    VALUE (82, 'Basketball', 23, 24, '30 balls', 60.00);

INSERT INTO products
    VALUE (83, 'Basketball', 23, 24, '30 balls', 60.00);

SELECT * FROM suppliers
ORDER BY SupplierID DESC;

SELECT * FROM employees
ORDER BY EmployeeID DESC;








