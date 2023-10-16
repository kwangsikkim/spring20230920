-- 정규화 NORMALIZATION
-- 첫번째 정규화 (FIRST NORMAL FORM)  1NF
--      원자적 데이터를 가진 테이블, PK 컬럼이 있어야함

-- 책 369쪽
-- 두번째 정규화 (SECOND NORMAL FORM) 2NF
--      1NF이면서, 부분적 함수 의존이 없어야함
--      부분적 함수 의존(partial functional dependency)
--      키가 아닌 컬럼의 값이 키 컬럼 일부에 종속되지 않아야 한다.
--      키의 일부가 변경될 때, 키가 아닌 컬럼이 변경되어야 하면 부분적 함수 의존

-- 책 374쪽
-- 세번째 정규화 (THIRD NORMAL FORM) 3NF
--      2NF이면서, 이행적 종속이 없어야 함
--      이행적 종속(transitive dependency) : 키가 아닌 컬럼이 키가 아닌 다른 컬럼에 의존하는 것
--      키가 아닌 컬럼이 변경될 때, 다른 키가 아닌 컬럼이 변경되어야 할때.

-- 입사지원자
-- id, 이름, 최종학교, 학교주소
use mydb1;
CREATE TABLE my_table30_person
(
    id             INT PRIMARY KEY AUTO_INCREMENT,
    name           VARCHAR(10),
    school         VARCHAR(10),
    school_address VARCHAR(20)
);
INSERT INTO my_table30_person (name, school, school_address)
VALUES ('흥민', '서울대', '관악'),
       ('강인', '고려대', '안암'),
       ('민재', '연세대', '신촌'),
       ('지성', '고려대', '관악'),
       ('범근', '연세대', '신촌');
SELECT *
FROM my_table30_person;

CREATE TABLE my_table31_person
(
    id     INT PRIMARY KEY AUTO_INCREMENT,
    name   VARCHAR(10),
    school VARCHAR(20)
);
CREATE TABLE my_table32_school
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(20),
    address VARCHAR(20)
);
INSERT INTO my_table31_person (name, school)
VALUES ('흥민', '서울대'),
       ('강인', '고려대'),
       ('민재', '연세대'),
       ('지성', '고려대'),
       ('범근', '연세대');

INSERT INTO my_table32_school (name, address)
VALUES ('서울대', '관악'),
       ('고려대', '안암'),
       ('연세대', '신촌'),
       ('고려대', '관악'),
       ('연세대', '신촌');

CREATE TABLE my_table33_person
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    name      VARCHAR(10),
    school_id INT -- 한테이블의 컬럼이 다른 테이블을 참조하면 pk를 사용해야 함
);
CREATE TABLE my_table34_school
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(20),
    address VARCHAR(20)
);
INSERT INTO my_table33_person (name, school_id)
VALUES ('흥민', 1),
       ('강인', 2),
       ('민재', 1);
INSERT INTO my_table34_school (name, address)
VALUES ('서울대', '관악'),
       ('연세대', '신촌'),
       ('고려대', '안암');
SELECT *
FROM my_table34_school;

INSERT INTO my_table33_person (name, school_id)
VALUES ('지성', 4); -- 존재하지 않는 4번 학교가 등록가능함..

CREATE TABLE my_table35_person
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    name      VARCHAR(10),
    school_id INT REFERENCES my_table36_school (id)
    -- 한테이블의 컬럼이 다른 테이블을 참조하면 pk를 사용해야 함
    -- 외래키(foreign key) 제약 사항
);
CREATE TABLE my_table36_school
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(20),
    address VARCHAR(20)
);
INSERT INTO my_table35_person (name, school_id)
VALUES ('흥민', 1),
       ('강인', 2),
       ('민재', 1);
INSERT INTO my_table36_school (name, address)
VALUES ('서울대', '관악'),
       ('연세대', '신촌'),
       ('고려대', '안암');
INSERT INTO my_table35_person (name, school_id)
VALUES ('지성', 4); -- 존재하지 않는 4번 학교가 등록 불가!

DELETE
FROM my_table36_school
WHERE id = 1;
-- not ok
-- 이것을 참조하는 다른 데이터가 있어서 지울 수 없음.
-- 참조하고 있는 데이터를 먼저 지우고 지워야함
DELETE
FROM my_table36_school
WHERE id = 3;
-- ok
-- 3번 학교는 참조하고 있는 자료가 없어서 삭제 가능

DESC my_table35_person; -- 참조 : MUL
SHOW CREATE TABLE my_table35_person;
CREATE TABLE `my_table35_person`
(
    `id`        int(11) NOT NULL AUTO_INCREMENT,
    `name`      varchar(10) DEFAULT NULL,
    `school_id` int(11)     DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `school_id` (`school_id`),
    CONSTRAINT `my_table35_person_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `my_table36_school` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 8
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci


-- 외래키(foreign key), 참조키, FK




