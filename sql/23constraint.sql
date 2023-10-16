-- NULL 허용 여부
-- 유일한 값 허용
-- 기본값 지정
-- 값 체크

USE mydb1;
CREATE TABLE my_table13
(
    col1 INT NULL,    -- NULL 허용(기본값)
    col2 INT NOT NULL -- NULL 허용 안함
);

INSERT INTO my_table13 (col1, col2)
    VALUE (33, 44); -- ok

INSERT INTO my_table13 (col2)
    VALUE (66);

INSERT INTO my_table13 (col1)
    VALUE (66); -- 안됨 (col2) NULL 미허용. 값 입력 필수.

SELECT *
FROM my_table13;


-- UNIQUE : 해당 컬럼에 유일한 값만 허용
CREATE TABLE my_table14
(
    col1 INT,
    col2 INT UNIQUE -- 이 컬럼에 중복된 값을 넣을 수 없음
);

INSERT INTO my_table14 (col1, col2)
    VALUE (11, 22); -- ok

INSERT INTO my_table14 (col1, col2)
    VALUE (11, 33); -- ok

INSERT INTO my_table14 (col1, col2)
    VALUE (11, 33); -- 안됨. col2 는 UNIQUE

INSERT INTO my_table14 (col1)
    VALUE (11);

INSERT INTO my_table14 (col1)
    VALUE (11); -- ok. NULL은 중복에 포함 안됨

SELECT *
FROM my_table14;

CREATE TABLE my_table15
(
    col1 INT,
    col2 INT NOT NULL,
    col3 INT UNIQUE,
    col4 INT NOT NULL UNIQUE
);

INSERT INTO my_table15 (col1, col2, col3, col4)
    VALUE (11, 22, 33, 44); --  ok

INSERT INTO my_table15 (col1, col2, col3, col4)
    VALUE (11, 22, 33, 44); --  not ok

INSERT INTO my_table15 (col1, col2, col3, col4)
    VALUE (11, 22, 44, NULL); --  not ok

INSERT INTO my_table15 (col1, col2, col3, col4)
    VALUE (11, 22, 44, 55);
--  ok


-- 예) my_table16
CREATE TABLE my_table16
(
    col1 INT,
    col2 INT        NOT NULL,
    col3 INT UNIQUE,
    col4 INT UNIQUE NOT NULL
);

INSERT INTO my_table16 (col1, col2, col3, col4) VALUE (1, 2, 3, 4); -- ok
INSERT INTO my_table16 (col1, col3, col4) VALUE (1, 3, 4); -- not ok
INSERT INTO my_table16 (col1, col2, col3, col4) VALUE (1, 2, 3, 4); -- not ok
INSERT INTO my_table16 (col1, col2, col3, col4) VALUE (1, 2, 4, 3); -- ok

SELECT *
FROM my_table16;


-- DEFAULT : 기본값

CREATE TABLE my_table17_1
(
    col1 INT,
    col2 INT         DEFAULT 100,     -- 값 안 넣으면 100
    col3 VARCHAR(10) DEFAULT 'empty', -- 값 안 넣으면 empty
    col4 DATETIME    DEFAULT NOW()    -- 값 안 넣으면 현재일시
);

INSERT INTO my_table17_1 (col1, col2, col3, col4)
    VALUE (22, 33, 'son', '2023-11-11 22:23:24');

INSERT INTO my_table17_1 (col1)
    VALUE (22);       -- col2, 3, 4 에 100, 'empty', 현재일시 들어감
INSERT INTO my_table17_1 (col1, col2, col3, col4)
    VALUE (300, NULL, NULL, NULL);      -- NULL 사용 가능

SELECT *
FROM my_table17_1;

CREATE TABLE my_table18
(
    col1 INT,
    col2 INT          DEFAULT 300,
    col3 INT NOT NULL DEFAULT 500
);
INSERT INTO my_table18 (col1, col2, col3)
    VALUE (3, NULL, NULL); -- not ok
INSERT INTO my_table18 (col1, col3)
    VALUE (3, 222); -- ok
INSERT INTO my_table18 (col1)
    VALUE (4);
SELECT *
FROM my_table18;

CREATE TABLE my_table19
(
    col1 INT NOT NULL UNIQUE DEFAULT 100
);

-- 테이블 컬럼과 타입, 제약사항 확인
-- DESCRIBE, DESC
DESCRIBE my_table18;
DESC my_table18;
DESC my_table19;
# Key : 유니크인지 아닌지(UNI : 유니크만 적용 / PRI : NOT NULL UNIQUE)


-- TABLE 생성 쿼리 확인
SHOW CREATE TABLE my_table15;
CREATE TABLE `my_table15`
(
    `col1` int(11) DEFAULT NULL,
    `col2` int(11) NOT NULL,
    `col3` int(11) DEFAULT NULL,
    `col4` int(11) NOT NULL,
    UNIQUE KEY `col4` (`col4`),
    UNIQUE KEY `col3` (`col3`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;


-- CHECK : 값의 유효범위체크
CREATE TABLE my_table20
(
    col1 INT,
    col2 INT CHECK (col2 > 100),
    col3 INT CHECK ( col3 > 1000 AND col3 < 2000 )
);
SHOW CREATE TABLE my_table20;

INSERT INTO my_table20 (col1, col2, col3)
    VALUE (10000, 50, -10); -- not ok
INSERT INTO my_table20 (col1, col2, col3)
    VALUE (10000, 150, 1500); -- ok

























