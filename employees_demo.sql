-- SQL script to create demo employees database
-- Table: departments
CREATE TABLE departments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

-- Table: employees
CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    department_id INTEGER,
    salary REAL,
    hire_date TEXT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- Insert demo departments
INSERT INTO departments (name) VALUES ('HR');
INSERT INTO departments (name) VALUES ('Engineering');
INSERT INTO departments (name) VALUES ('Sales');

-- Insert demo employees
INSERT INTO employees (name, department_id, salary, hire_date) VALUES ('Alice Smith', 1, 60000, '2020-01-15');
INSERT INTO employees (name, department_id, salary, hire_date) VALUES ('Bob Johnson', 2, 80000, '2019-03-22');
INSERT INTO employees (name, department_id, salary, hire_date) VALUES ('Carol Lee', 2, 95000, '2018-07-10');
INSERT INTO employees (name, department_id, salary, hire_date) VALUES ('David Kim', 3, 55000, '2021-11-01');
INSERT INTO employees (name, department_id, salary, hire_date) VALUES ('Eva Brown', 1, 62000, '2022-05-18');
