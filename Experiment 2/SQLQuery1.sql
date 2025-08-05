--MADE BY YASH SHARMA

CREATE TABLE employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    ManagerID INT
);

INSERT INTO employee (EmpID, EmpName, Department, ManagerID) VALUES
    (101, 'Rajesh Kumar', 'Engineering', NULL),
    (102, 'Anita Sharma', 'Engineering', 101),
    (103, 'Sunil Mehta', 'HR', 101),
    (104, 'Neha Joshi', 'Engineering', 102),
    (105, 'Rahul Singh', 'HR', 103),
    (106, 'Kiran Reddy', 'Sales', 105),
    (107, 'Pooja Verma', 'Sales', 106);

SELECT
    E1.EmpName AS [EMPLOYEE NAME],
    E1.Department AS [EMP_DEPARTMENT],
    E2.EmpName AS [MANAGER NAME],
    E2.Department AS [MANAGER_DEPARTMENT]
FROM
    employee AS E1
LEFT OUTER JOIN
    employee AS E2 ON E1.ManagerID = E2.EmpID;
--MADE BY YASH SHARMA
