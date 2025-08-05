--MADE BY YASH SHARMA
USE KRG_1B;

CREATE TABLE TBL_DEPARTMENT (
    DEPT_ID INT PRIMARY KEY, 
    DEPT_NAME VARCHAR(30)
);


CREATE TABLE TBL_COURSE(
    COURSE_ID INT PRIMARY KEY, 
    COURSE_NAME VARCHAR(30), 
    DEPT_ID INT, 
    CONSTRAINT FK_TBL_COURSE_DEPT FOREIGN KEY (DEPT_ID) REFERENCES TBL_DEPARTMENT(DEPT_ID)
);


INSERT INTO TBL_DEPARTMENT (DEPT_ID, DEPT_NAME) VALUES
    (1, 'Biotechnology'),
    (2, 'Chemical Engineering'),
    (3, 'Aerospace Engineering'),
    (4, 'Environmental Science'),
    (5, 'Physics');


INSERT INTO TBL_COURSE (COURSE_ID, COURSE_NAME, DEPT_ID) VALUES
    (101, 'Genetics', 1),
    (102, 'Molecular Biology', 1),
    (103, 'Bioinformatics', 1),
    (104, 'Process Engineering', 2),
    (105, 'Organic Chemistry', 2),
    (106, 'Aerodynamics', 3),
    (107, 'Space Propulsion', 3),
    (108, 'Climate Change', 4),
    (109, 'Quantum Mechanics', 5),
    (110, 'Optics', 5),
    (111, 'Thermodynamics', 5);


SELECT DEPT_NAME
FROM TBL_DEPARTMENT
WHERE DEPT_ID IN (
    SELECT DEPT_ID
    FROM TBL_COURSE
    GROUP BY DEPT_ID
    HAVING COUNT(*) > 2
);

--MADE BY YASH SHARMA
