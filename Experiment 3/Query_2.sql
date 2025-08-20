--MADE BY YASH SHARMA
USE KRG_1B

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    salary INT,
    dept_id INT
);

CREATE TABLE departments (
    id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees VALUES (1, 'joe', 70000, 1);
INSERT INTO employees VALUES (2, 'jim', 90000, 1);
INSERT INTO employees VALUES (3, 'henry', 80000, 2);
INSERT INTO employees VALUES (4, 'sam', 60000, 2);
INSERT INTO employees VALUES (4, 'max', 90000, 1);

INSERT INTO departments VALUES (1, 'it');
INSERT INTO departments VALUES (2, 'sales');

SELECT d.dept_name, e.name, e.salary
FROM employees e
JOIN departments d ON e.dept_id = d.id
WHERE e.salary = (
    SELECT MAX(salary)
    FROM employees e2
    WHERE e2.dept_id = e.dept_id
)
ORDER BY d.dept_name;
--MADE BY YASH SHARMA
