DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT _PRIMARY KEY_,
  name VARCHAR(_30_) NOT NULL
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT _PRIMARY KEY_,
    title VARCHAR(_30_) NOT NULL,
    salary DECIMAL(_10_, _2_) NOT NULL,  _-- Added precision and scale for DECIMAL_
    department_id INT NOT NULL,      _-- Corrected from department_id:_
    _CONSTRAINT_ fk_department _FOREIGN KEY_ (department_id) _REFERENCES_ department(id) _ON DELETE CASCADE_
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT _PRIMARY KEY_,
    first_name VARCHAR(_30_) NOT NULL,
    last_name VARCHAR(_30_) NOT NULL,
    role_id INT NOT NULL,
    _CONSTRAINT_ fk_role _FOREIGN KEY_ (role_id) _REFERENCES_ role(id) _ON DELETE CASCADE_,
    manager_id INT,                 _-- Corrected from manager_id:_
    _CONSTRAINT_ fk_manager _FOREIGN KEY_ (manager_id) _REFERENCES_ employee(id) _ON DELETE_ SET NULL
);