--MADE BY YASH SHARMA
CREATE TABLE Year_tbl (
    ID INT,
    YEAR INT,
    NPV INT
);


CREATE TABLE Queries (
    ID INT,
    YEAR INT
);


INSERT INTO Year_tbl (ID, YEAR, NPV)
VALUES
    (10, 2021, 150),
    (20, 2023, 75),
    (30, 2022, 90),
    (10, 2022, 160),
    (40, 2015, 200),
    (50, 2016, 85),
    (60, 2023, 120),
    (20, 2022, 60);


INSERT INTO Queries (ID, YEAR)
VALUES
    (10, 2022),
    (40, 2015),
    (50, 2016),
    (20, 2021),
    (20, 2022),
    (20, 2023),
    (30, 2022);

SELECT * FROM Year_tbl;
SELECT * FROM Queries;

SELECT q.ID, q.YEAR, y.NPV
FROM
    Queries AS q 
LEFT JOIN
    Year_tbl AS y ON q.ID = y.ID AND q.YEAR = y.YEAR 
ORDER BY
    q.ID ASC;
--MADE BY YASH SHARMA
