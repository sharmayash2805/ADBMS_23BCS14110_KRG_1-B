--MADE BY YASH SHARMA

USE KRG_1B

create table employee (
    emp_id int,
    empname varchar(50),
    gender varchar(10),
    salary int,
    city varchar(50),
    dept_id int
);

insert into employee(emp_id, empname, gender, salary, city, dept_id)
values
(1, 'amit', 'male', 50000, 'delhi', 2),
(2, 'priya', 'female', 60000, 'mumbai', 1),
(3, 'rajesh', 'male', 45000, 'agra', 3),
(4, 'sneha', 'female', 55000, 'delhi', 4),
(5, 'anil', 'male', 52000, 'agra', 2),
(6, 'sunita', 'female', 48000, 'mumbai', 1),
(7, 'vijay', 'male', 47000, 'agra', 3),
(8, 'ritu', 'female', 62000, 'mumbai', 2),
(8, 'alok', 'male', 51000, 'delhi', 1),
(9, 'neha', 'female', 53000, 'agra', 4),
(9, 'simran', 'female', 33000, 'agra', 3);

SELECT MAX(emp_id) AS id
FROM (
    SELECT emp_id
    FROM employee
    GROUP BY emp_id
    HAVING COUNT(emp_id) = 1
) AS unique_emp_ids;
--MADE BY YASH SHARMA

