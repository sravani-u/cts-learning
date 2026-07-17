-- ==========================================
-- Exercise 03 : Stored Procedures
-- ==========================================

CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID),
    Salary DECIMAL(10,2),
    JoinDate DATE
);

INSERT INTO Departments VALUES
(1,'HR'),
(2,'Finance'),
(3,'IT'),
(4,'Marketing');

INSERT INTO Employees VALUES
(1,'John','Doe',1,5000,'2020-01-15'),
(2,'Jane','Smith',2,6000,'2019-03-22'),
(3,'Michael','Johnson',3,7000,'2018-07-30'),
(4,'Emily','Davis',4,5500,'2021-11-05');

---------------------------------------------------
-- Exercise 1
---------------------------------------------------

CREATE PROCEDURE sp_GetEmployeesByDepartment
    @DepartmentID INT
AS
BEGIN
    SELECT EmployeeID,
           FirstName,
           LastName
    FROM Employees
    WHERE DepartmentID=@DepartmentID;
END;
GO

CREATE PROCEDURE sp_InsertEmployee
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @DepartmentID INT,
    @Salary DECIMAL(10,2),
    @JoinDate DATE
AS
BEGIN
    INSERT INTO Employees
    (FirstName,LastName,DepartmentID,Salary,JoinDate)
    VALUES
    (@FirstName,@LastName,@DepartmentID,@Salary,@JoinDate);
END;
GO

---------------------------------------------------
-- Exercise 2
---------------------------------------------------

ALTER PROCEDURE sp_GetEmployeesByDepartment
    @DepartmentID INT
AS
BEGIN
    SELECT EmployeeID,
           FirstName,
           LastName,
           Salary
    FROM Employees
    WHERE DepartmentID=@DepartmentID;
END;
GO

---------------------------------------------------
-- Exercise 3
---------------------------------------------------

DROP PROCEDURE sp_InsertEmployee;
GO

---------------------------------------------------
-- Exercise 4
---------------------------------------------------

EXEC sp_GetEmployeesByDepartment 3;
GO

---------------------------------------------------
-- Exercise 5
---------------------------------------------------

CREATE PROCEDURE sp_TotalEmployees
    @DepartmentID INT
AS
BEGIN
    SELECT COUNT(*) AS TotalEmployees
    FROM Employees
    WHERE DepartmentID=@DepartmentID;
END;
GO

---------------------------------------------------
-- Exercise 6
---------------------------------------------------

CREATE PROCEDURE sp_TotalSalary
    @DepartmentID INT,
    @TotalSalary DECIMAL(10,2) OUTPUT
AS
BEGIN
    SELECT @TotalSalary=SUM(Salary)
    FROM Employees
    WHERE DepartmentID=@DepartmentID;
END;
GO

---------------------------------------------------
-- Exercise 7
---------------------------------------------------

CREATE PROCEDURE sp_UpdateEmployeeSalary
    @EmployeeID INT,
    @Salary DECIMAL(10,2)
AS
BEGIN
    UPDATE Employees
    SET Salary=@Salary
    WHERE EmployeeID=@EmployeeID;
END;
GO

EXEC sp_UpdateEmployeeSalary 1,5500;
GO

---------------------------------------------------
-- Exercise 8
---------------------------------------------------

CREATE PROCEDURE sp_GiveBonus
    @DepartmentID INT,
    @Bonus DECIMAL(10,2)
AS
BEGIN
    UPDATE Employees
    SET Salary=Salary+@Bonus
    WHERE DepartmentID=@DepartmentID;
END;
GO

EXEC sp_GiveBonus 1,500;
GO

---------------------------------------------------
-- Exercise 9
---------------------------------------------------

CREATE PROCEDURE sp_UpdateSalaryTransaction
    @EmployeeID INT,
    @Salary DECIMAL(10,2)
AS
BEGIN
    BEGIN TRANSACTION

    UPDATE Employees
    SET Salary=@Salary
    WHERE EmployeeID=@EmployeeID;

    COMMIT TRANSACTION;
END;
GO

---------------------------------------------------
-- Exercise 10
---------------------------------------------------

CREATE PROCEDURE sp_DynamicEmployeeSearch
    @ColumnName VARCHAR(50),
    @Value VARCHAR(50)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL='SELECT * FROM Employees WHERE '
            +QUOTENAME(@ColumnName)+'='''+@Value+'''';

    EXEC sp_executesql @SQL;
END;
GO

---------------------------------------------------
-- Exercise 11
---------------------------------------------------

CREATE PROCEDURE sp_UpdateSalaryWithErrorHandling
    @EmployeeID INT,
    @Salary DECIMAL(10,2)
AS
BEGIN

BEGIN TRY

UPDATE Employees
SET Salary=@Salary
WHERE EmployeeID=@EmployeeID;

PRINT 'Salary Updated Successfully';

END TRY

BEGIN CATCH

PRINT 'Error Updating Salary';

END CATCH

END;
GO
