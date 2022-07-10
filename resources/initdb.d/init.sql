DROP SCHEMA IF EXISTS sample;
CREATE SCHEMA sample;
USE sample;

DROP TABLE IF EXISTS employee;

CREATE TABLE employee
(
  id           INT(10),
  name     VARCHAR(40),
  PRIMARY KEY(id)
);

-- employeeテーブルを作成する
INSERT INTO employee (id, name) VALUES (1, "Nagaoka");
INSERT INTO employee (id, name) VALUES (2, "Tanaka");

DROP TABLE IF EXISTS skill;

-- skillテーブルを作成する
CREATE TABLE skill
(
  id            INT(10),
  employee_id   INT(10),
  language  VARCHAR(40),
  PRIMARY KEY(id)
);

INSERT INTO skill (id, employee_id, language) VALUES (1, 1, "JavaScript");
INSERT INTO skill (id, employee_id, language) VALUES (2, 1, "HTML");
INSERT INTO skill (id, employee_id, language) VALUES (3, 1, "CSS");
INSERT INTO skill (id, employee_id, language) VALUES (4, 2, "Java");
