# 컬럼의 타입
# 숫자형(정수, 실수)
# 문자형
# 날짜(날짜시간)

-- 정수 : int
USE mydb1;
CREATE TABLE my_table3 (
    col1 int
);

INSERT INTO my_table3 (col1)
VALUE (12345);
INSERT INTO my_table3 (col1)
VALUE ('12348');

SELECT * FROM my_table3;

-- 실수 : DEC(DECIMAL)
CREATE TABLE my_table4 (
    col1 DEC -- DEC(10, 0)이 기본값
);
INSERT INTO my_table4 (col1)
VALUE (3.14);

SELECT * FROM my_table4;

-- 총 길이 5, 소수점 이하 길이 3
CREATE TABLE my_table5 (
    col1 DEC(5, 3)
);

INSERT INTO my_table5 (col1)
VALUE (3.141592);

INSERT INTO my_table5 (col1)
    VALUE (23.141592);

SELECT * FROM my_table5;

-- 예) my_table6 만들기
-- age 컬럽 정수 타입
-- score 컬럼 총길이 7 소수점 이하 길이 2

CREATE TABLE my_table6 (
    age INT,
    score DEC(7, 2)
);

INSERT INTO my_table6 (age, score)
VALUE (30, 279.74);

SELECT * FROM my_table6;

-- 문자열 : VARCHAR
-- 너무 긴 문자열을 넣고 싶을 떄는 TEXT 사용
CREATE TABLE my_table7 (
    col1 VARCHAR(1),
    col2 VARCHAR(2),
    col3 VARCHAR(16000)
    );

CREATE TABLE my_table8(
    col1 VARCHAR(8000),
    col2 VARCHAR(8000)
);

INSERT INTO my_table7 (col1)
VALUE ('a');
INSERT INTO my_table7 (col1)
VALUE ('가');
# INSERT INTO my_table7 (col1)
# VALUE ('ab'); 안됨

INSERT INTO my_table7 (col2)
    VALUE ('ab');
INSERT INTO my_table7 (col2)
    VALUE ('가나');
INSERT INTO my_table7 (col2)
    VALUE ('a가');
INSERT INTO my_table7 (col2)
    VALUE ('😊😊');
SELECT * FROM my_table7;

-- 예) my_table9 만들기
-- name 문자열 최대길이 100자
-- 주소 문자열 최대길이 200자
-- 전화번호 최대길이 100자

CREATE TABLE my_table9 (
    Name VARCHAR(100),
    Address VARCHAR(200),
    Phone VARCHAR(100)
);
INSERT INTO my_table9 (Name, Address, Phone)
VALUE ('ks', 'sillim', '41442');
SELECT * FROM my_table9;

-- 날짜
CREATE TABLE my_table10 (
    col1 DATE
);
INSERT INTO my_table10 (col1)
VALUE ('1990-02-26');
INSERT INTO my_table10 (col1)
VALUE (NOW());
SELECT * FROM my_table10;

-- 날짜 시간: DATETIME
CREATE TABLE my_table11 (
    col1 DATETIME
);

INSERT INTO my_table11 (col1)
VALUE ('2023-10-11 15:51:23');

-- NOW()
INSERT INTO my_table11 (col1)
VALUE (NOW());

SELECT * FROM my_table11;



















