use mydb1;

CREATE TABLE my_table46
(
    col1 INT,
    col2 INT,
    col3 INT,
    col4 INT,
    col5 INT
);

-- NOT NULL 제약 사항 추가
ALTER TABLE my_table46
    MODIFY col1 INT NOT NULL;

DESC my_table46;

-- NOT NULL 제약 사항 삭제
ALTER TABLE my_table46
    MODIFY col1 INT NULL;

DESC my_table46;

-- 예) col2에 NOT NULL 제약 사항 추가
ALTER TABLE my_table46
    MODIFY col2 INT NOT NULL;

DESC my_table46;

-- 예) col2에 NOT NULL 제약 사항 제거
ALTER TABLE my_table46
    MODIFY col2 INT NULL;

DESC my_table46;

-- DEFAULT 제약 사항 추가
ALTER TABLE my_table46
    ALTER col3 SET DEFAULT 100;

DESC my_table46;

-- DEFAULT 제약 사항 삭제
ALTER TABLE my_table46
    ALTER col3 DROP DEFAULT;

DESC my_table46;

-- 예) col4에 기본값 0 제약 사항 추가
ALTER TABLE my_table46
    ALTER col4 SET DEFAULT 0;

DESC my_table46;

-- 예) col4에 기본값 0 제약 사항 삭제
ALTER TABLE my_table46
    ALTER col4 DROP DEFAULT;

DESC my_table46;

-- UNIQUE 제약 사항 추가
ALTER TABLE my_table46
    ADD UNIQUE (col5);

DESC my_table46;

-- UNIQUE 제약 사항 삭제

-- 1. UNIQUE 제약사항 명칭 확인
SHOW CREATE TABLE my_table46;

CREATE TABLE `my_table46`
(
    `col1` int(11) DEFAULT NULL,
    `col2` int(11) DEFAULT NULL,
    `col3` int(11),
    `col4` int(11),
    `col5` int(11) DEFAULT NULL,
    UNIQUE KEY `col5` (`col5`) -- `유니크 키 이름` (컬럼이름)
) ENGINE = InnoDB -- 유니크 키 이름으로 지워야함
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- 2. UNIQUE 제약사항 삭제
ALTER TABLE my_table46
    DROP INDEX col5;

DESC my_table46;


-- PRIMARY KEY 제약 사항 추가
ALTER TABLE my_table46
    ADD PRIMARY KEY (col1);

DESC my_table46;

-- PRIMARY KEY 제약 사항 삭제
-- 1. PRIMARY KEY 삭제
ALTER TABLE my_table46
    DROP PRIMARY KEY;

DESC my_table46;
-- 2. NULL 허용으로 바꾸기
ALTER TABLE my_table46
    MODIFY col1 INT NULL;

DESC my_table46;


CREATE TABLE my_table47
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(10)
);

-- FOREIGN KEY 제약 사항 추가
ALTER TABLE my_table46
    ADD FOREIGN KEY (col5) REFERENCES my_table47 (id);

DESC my_table46;

-- FOREIGN KEY 제약 사항 삭제
-- 1. FOREIGN KEY 제약 사항 확인
SHOW CREATE TABLE my_table46;
CREATE TABLE `my_table46`
(
    `col1` int(11) DEFAULT NULL,
    `col2` int(11) DEFAULT NULL,
    `col3` int(11),
    `col4` int(11),
    `col5` int(11) DEFAULT NULL,
    KEY `col5` (`col5`),
    CONSTRAINT `my_table46_ibfk_1` FOREIGN KEY (`col5`) REFERENCES `my_table47` (`id`)
) ENGINE = InnoDB                  -- FOREIGN KEY 앞의 제약 사항(CONSTRAINT) 확인
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- 2. FOREIGN KEY 삭제
ALTER TABLE my_table46
DROP FOREIGN KEY my_table46_ibfk_1;

-- 3. MUL 삭제
ALTER TABLE my_table46
DROP INDEX col5;

DESC my_table46;

use sample1;

use w3

SELECT * FROM























