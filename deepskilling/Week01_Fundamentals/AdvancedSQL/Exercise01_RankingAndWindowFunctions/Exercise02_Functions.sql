-- ==========================================
-- Exercise 2 : SQL Functions
-- ==========================================

-- Create Database
CREATE DATABASE EmployeeManagement;
GO

USE EmployeeManagement;
GO

-- Create Departments Table
CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- Create Employees Table
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE,
    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
);

-- Insert Departments

INSERT INTO Departments VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance');

-- Insert Employees

INSERT INTO Employees VALUES
(1,'John','Doe',1,5000,'2020-01-15'),
(2,'Jane','Smith',2,6000,'2019-03-22'),
(3,'Bob','Johnson',3,5500,'2021-07-01');

--------------------------------------------------
-- Exercise 1
--------------------------------------------------

CREATE FUNCTION fn_CalculateAnnualSalary
(
    @Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    RETURN @Salary*12
END;
GO

SELECT EmployeeID,
FirstName,
dbo.fn_CalculateAnnualSalary(Salary) AS AnnualSalary
FROM Employees;

--------------------------------------------------
-- Exercise 2
--------------------------------------------------

CREATE FUNCTION fn_GetEmployeesByDepartment
(
    @DepartmentID INT
)
RETURNS TABLE
AS
RETURN
(
SELECT *
FROM Employees
WHERE DepartmentID=@DepartmentID
);
GO

SELECT *
FROM dbo.fn_GetEmployeesByDepartment(2);

--------------------------------------------------
-- Exercise 3
--------------------------------------------------

CREATE FUNCTION fn_CalculateBonus
(
@Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
RETURN @Salary*0.10
END;
GO

SELECT EmployeeID,
FirstName,
dbo.fn_CalculateBonus(Salary) AS Bonus
FROM Employees;

--------------------------------------------------
-- Exercise 4
--------------------------------------------------

ALTER FUNCTION fn_CalculateBonus
(
@Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
RETURN @Salary*0.15
END;
GO

SELECT EmployeeID,
FirstName,
dbo.fn_CalculateBonus(Salary) AS Bonus
FROM Employees;

--------------------------------------------------
-- Exercise 5
--------------------------------------------------

DROP FUNCTION fn_CalculateBonus;
GO

--------------------------------------------------
-- Exercise 6
--------------------------------------------------

SELECT EmployeeID,
FirstName,
dbo.fn_CalculateAnnualSalary(Salary) AS AnnualSalary
FROM Employees;

--------------------------------------------------
-- Exercise 7
--------------------------------------------------

SELECT dbo.fn_CalculateAnnualSalary(Salary)
AS AnnualSalary
FROM Employees
WHERE EmployeeID=1;

--------------------------------------------------
-- Exercise 8
--------------------------------------------------

SELECT *
FROM dbo.fn_GetEmployeesByDepartment(3);

--------------------------------------------------
-- Exercise 9
--------------------------------------------------

CREATE FUNCTION fn_CalculateBonus
(
@Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
RETURN @Salary*0.15
END;
GO

CREATE FUNCTION fn_CalculateTotalCompensation
(
@Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN

RETURN dbo.fn_CalculateAnnualSalary(@Salary)+
dbo.fn_CalculateBonus(@Salary)

END;
GO

SELECT EmployeeID,
FirstName,
dbo.fn_CalculateTotalCompensation(Salary)
AS TotalCompensation
FROM Employees;

--------------------------------------------------
-- Exercise 10
--------------------------------------------------

ALTER FUNCTION fn_CalculateBonus
(
@Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
RETURN @Salary*0.20
END;
GO

ALTER FUNCTION fn_CalculateTotalCompensation
(
@Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN

RETURN dbo.fn_CalculateAnnualSalary(@Salary)+
dbo.fn_CalculateBonus(@Salary)

END;
GO

SELECT EmployeeID,
FirstName,
dbo.fn_CalculateTotalCompensation(Salary)
AS TotalCompensation
FROM Employees;
