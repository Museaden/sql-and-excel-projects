
CREATE TABLE HR1 (
	 EmployeeName text,
    EmpID varchar(50) CONSTRAINT EmpID_key PRIMARY KEY,
	Gender varchar(50),
    MaritalStatus varchar(50),
	PayRateHour1 integer,
	  position1 varchar(50),
    Department varchar(50),
    HireDate1 date,
    TermReason varchar(50),
	ManagerName varchar(50),
	RecruitmentSource varchar(50),
	Country varchar(50),
	State1 varchar(50),
	City varchar(30),
	EmpSatisfaction integer
);

COPY HR1
FROM 'C:\Users\DELL\OneDrive\Documents\sql\Hr data\HR1.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',');

--  Querying all rows and columns from the HR1 table

SELECT * FROM HR1;

--  Querying a subset of columns
SELECT
   Gender,
   MaritalStatus
FROM HR1;
--  Querying distinct values in the Department column
SELECT  DISTINCT  Department
FROM HR1;

--  Querying distinct pairs of values in the  Department and Manager Name
-- columns

SELECT DISTINCT  Department, ManagerName
FROM HR1;

--  Sorting a column with ORDER BY

SELECT Department, ManagerName, PayRateHour1
FROM HR1
ORDER BY PayRateHour1 DESC;

--  Using IS NULL to find missing values in the State1 column
SELECT Department,
       ManagerName,
       city,
       State1,
       PayRateHour1
FROM HR1
WHERE State1 IS NULL;

--  Using length() and count() to test the position1 column

SELECT length( position1),
       count(*) AS length_count
FROM HR1
GROUP BY length( position1)
ORDER BY length(position1) ASC;