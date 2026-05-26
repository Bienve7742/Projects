CREATE TABLE IF NOT EXISTS EMPLOYEES (
    emp_id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary REAL
);

INSERT INTO EMPLOYEES (name, department, salary) VALUES
('Alice Johnson', 'Sales', 55000),
('Bob Smith', 'Marketing', 62000),
('Carol Davis', 'Sales', 48000),
('David Brown', 'IT', 75000),
('Eva White', 'IT', 81000),
('Frank Lee', 'Marketing', 59000),
('Grace Kim', 'Sales', 67000),
('Henry Wu', 'HR', 52000);

SELECT SUM(salary) AS "Total Salary (All Employees)" FROM EMPLOYEES;

SELECT AVG(salary) AS "Average Salary" FROM EMPLOYEES;

SELECT COUNT(DISTINCT department) AS "Number of Departments" FROM EMPLOYEES;

SELECT MIN(salary) AS "Minimum Salary" FROM EMPLOYEES;

SELECT MAX(salary) AS "Maximum Salary" FROM EMPLOYEES;

SELECT 
    SUM(salary) AS total_salary,
    AVG(salary) AS avg_salary,
    COUNT(DISTINCT department) AS distinct_depts,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM EMPLOYEES;