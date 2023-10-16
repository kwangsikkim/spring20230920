-- PRIMARY KEY (주카, 기본키, pk)
use mydb1;

CREATE TABLE my_table27 (
    id INT PRIMARY KEY ,
    name VARCHAR(20)
);

CREATE TABLE my_table28 (
    id INT,
    name VARCHAR(20),
    PRIMARY KEY (id)
);

CREATE TABLE my_table29 (
    name VARCHAR(20),
    birth DATE,
    PRIMARY KEY (name, birth)
);

CREATE TABLE my_table30 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);


INSERT INTO my_table30 (name)
VALUE ('son');
INSERT INTO my_table30 (name)
    VALUE ('lee');
INSERT INTO my_table30 (name)
    VALUE ('kim');
INSERT INTO my_table30 (name)
    VALUE ('son');
INSERT INTO my_table30 (name)
    VALUE ('kim');

SELECT * FROM my_table30;











