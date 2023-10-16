use mydb1;
-- 1 : n
-- 가장 흔하고 일반적인 형태

-- 책 347쪽
-- 1 : 1
-- 민감 정보(연봉, 주소)를 따로 관리하고 싶을 때를 예로 든 1:1 관계
CREATE TABLE my_table37_employee
(
    id    INT AUTO_INCREMENT PRIMARY KEY,
    name  VARCHAR(20),
    birth DATE
);
CREATE TABLE my_table38_employee_info
(
    id      INT REFERENCES my_table37_employee (id),
    salary  INT,
    address VARCHAR(30)
);

-- 책 350쪽
-- n : m (다 대 다)
-- 1 : n, 1 : m 인 중간 테이블이 생성되어야 한다.
CREATE TABLE my_table39_person
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);
CREATE TABLE my_table40_skill
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    skill_name VARCHAR(20)
);
CREATE TABLE my_table41_person_skill
(
    person_id INT REFERENCES my_table39_person (id),
    skill_id  INT REFERENCES my_table40_skill (id),
    PRIMARY KEY (person_id, skill_id)
);



















