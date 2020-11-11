DROP DATABASE IF EXISTS ems_db;
CREATE database ems_db;
USE ems_db;
-- create employee table
CREATE TABLE employee (
  id INT AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id INT NOT NULL,
  manager_id INT NOT NULL,
  PRIMARY KEY (id)
);
-- create role table
CREATE TABLE role (
  id INT AUTO_INCREMENT NOT NULL,
  title VARCHAR(30) NULL,
  salary DECIMAL(10,2) NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (id)
);
-- create department table
CREATE TABLE department (
  id INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(30) NULL,
  PRIMARY KEY (id)
);
-- insert into dep
INSERT INTO ems_db.department(name) VALUES('IT');
INSERT INTO ems_db.department(name) VALUES('Management');
INSERT INTO ems_db.department(name) VALUES('Human Resource');
INSERT INTO ems_db.department(name) VALUES('PMO');
INSERT INTO ems_db.department(name) VALUES('Operation');
-- insert into roles
INSERT INTO ems_db.`role`(title, salary, department_id) VALUES('Manager', 70000, 2);
INSERT INTO ems_db.`role`(title, salary, department_id) VALUES('Scrum Master', 90000, 1);
INSERT INTO ems_db.`role`(title, salary, department_id) VALUES('Software Engineer', 65000, 1);
INSERT INTO ems_db.`role`(title, salary, department_id) VALUES('Web Developer', 55000, 1);
INSERT INTO ems_db.`role`(title, salary, department_id) VALUES('Finance', 50000, 2);

-- insert id
INSERT INTO ems_db.employee(first_name, last_name, role_id, manager_id) VALUES('Tommy', 'Jones', 1, 0);
