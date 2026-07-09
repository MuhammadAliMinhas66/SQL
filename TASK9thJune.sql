CREATE TABLE employee_master (
		row_id INT NOT NULL IDENTITY(1,1),
		emp_id INT NOT NULL,
		emp_name VARCHAR(50),
		emp_cnic VARCHAR(20) NOT NULL,
		emp_phone_number VARCHAR(15),
		emp_designation VARCHAR(50),
		emp_department VARCHAR(50),
		emp_salary INT,
		emp_status INT,
		emp_address NVARCHAR(100),
		CONSTRAINT pk_employee_master PRIMARY KEY (row_id)
)
SELECT * 
FROM employee_master;

INSERT INTO employee_master (emp_id, emp_name, emp_cnic, emp_phone_number , emp_designation , emp_department , emp_salary , emp_status , emp_address)
VALUES 
(1099 , 'Zeeshan' , 3710107198000 , 03126579542 , 'MTO' , 'MIS' , 50000 , 1 , 'Thokar niaz baig near residential area Lahore'),
(4572 , 'Ali' ,     3560109478103 , 03065264103 , 'MTO' , 'MIS' , 60000 , 1 , 'Firdous market near model colony gulberg 3 Lahore'),
(9800 , 'SkullX' , 8971300436102 , 7892200113 , 'AM' , 'Booking' , 65000 , 0 , 'Street 3 House 24 Boustan Sites Austria'),
(7835 , 'Arslan' , 7120103428101 , 03246523792 , 'DGM' , 'HD' , 175000 , 1 , 'Shahalam market bazar hafizabad town Lahore'),
(2341 , 'Haroon' , 5113034754901 , 03334613222 , 'Loader' , 'Booking' , 45000 , 0 , 'DHA raya housing society township 3 Lahore')

SELECT emp_name AS Name, emp_designation AS Designation , emp_status,
CASE
	WHEN emp_status = 0 THEN 'INACTIVE'
	ELSE 'ACTIVE'
END AS EmployeeStatus
FROM employee_master
-- checking IS NULL OR IS NOT NULL
SELECT * 
FROM employee_master 
WHERE emp_salary IS  NULL;
-- inserted a null record for a column named as emp_salary
INSERT INTO employee_master (emp_id, emp_name, emp_cnic, emp_phone_number , emp_designation , emp_department , emp_status , emp_address)
VALUES 
(2341 , 'Haroon' , 5113034754901 , 03334613222 , 'Loader' , 'Booking' , 0 , 'DHA raya housing society township 3 Lahore')

UPDATE employee_master 
SET emp_id = 9999, emp_name = 'Ansa', emp_cnic = 3450109762106 , emp_phone_number = 03455623425 , emp_designation = 'CallAgent', emp_department = 'Call center' , emp_status = 0, emp_address = 'Jhelum cantt near mart of ghani petrolium house no 33 street 44'
WHERE row_id = 6;

-- displaying all the records with NOT NULL values
SELECT * 
FROM employee_master
WHERE emp_salary IS NOT NULL;

-- using some other key to update the values inside a record
UPDATE employee_master
SET emp_designation = 'PubgPlayer' 
WHERE emp_department = 'Call center';


-- adding a new record into table and then deleting it
INSERT INTO employee_master (emp_id, emp_name, emp_cnic, emp_phone_number , emp_designation , emp_department  , emp_status , emp_address)
VALUES 
(8769 , 'HazleNuts' ,  3710107138111 , 03208052454 , 'CEOOOOO' , 'DAEWOO' , 1 , 'DHA RAYA')

-- deleting a row
DELETE FROM employee_master
WHERE emp_designation = 'CEOOOOO';

SELECT * FROM employee_master;

-- TOP CLAUSE
SELECT TOP 3 emp_name AS Name,emp_cnic AS Cnic, emp_salary AS Salary  FROM employee_master;
-- getting that last 3 records from table 
SELECT TOP 3 emp_name AS Name,emp_cnic AS Cnic, emp_salary AS Salary
FROM employee_master 
ORDER BY row_id DESC;


-- aggregate functions
SELECT emp_name, emp_salary, emp_department
FROM employee_master;
-- MIN FUNCTION
SELECT  MAX(emp_salary)  AS MAX_SALARY,emp_department
FROM employee_master
GROUP BY emp_department,emp_salary
        
ORDER BY emp_salary ASC;

-- COUNT
SELECT COUNT(*) AS TotalNoOfEntries,emp_name
FROM employee_master
WHERE emp_salary IS NULL
GROUP BY emp_name;

-- GROUP BY 
-- har department ma kitney employees hn unka count dikhana ha 
SELECT emp_department , COUNT(*) AS total_employees
FROM employee_master
GROUP BY emp_department


-- not writing inside select the column name and still getting the results in group by query 
SELECT COUNT(*) AS Total_employees_in_department
FROM employee_master
GROUP BY emp_department;

-- Declaring a variable
DECLARE @UserName VARCHAR(50);
SET @UserName ='Ali'

SELECT * 
FROM employee_master 
WHERE emp_name =@UserName;

-- IF ELSE

DECLARE @EmployeesSalaryOfMIS INT;
SET @EmployeesSalaryOfMIS = (SELECT emp_salary FROM employee_master WHERE emp_salary>150000) ;
IF @EmployeesSalaryOfMIS > 100000
	BEGIN
		PRINT 'HE IS EARNING A SIX FIGURE';
	END
	ELSE
	BEGIN
		PRINT 'HE IS BELOW AVERAGE'
	END

 -- DECLARING variables and using them 
DECLARE @empName VARCHAR(50);
SET @empName = 'Ali';
DECLARE @empName2 VARCHAR(50);
SET @empName2 = 'Zeeshan';
SELECT emp_name AS Name, emp_department AS Department , emp_salary AS Salary 
FROM employee_master
WHERE emp_name = @empName;
SELECT row_id AS IdentityNumber
FROM employee_master
WHERE emp_name = @empName2;

-- displaying the employee names whose salary is greater than 50000
SELECT *
FROM employee_master;
DECLARE @minSalary INT;
SET @minSalary = 50000;
SELECT emp_name AS Employee_Names, emp_salary AS Greater_than_50k
FROM employee_master
WHERE emp_salary > @minSalary;

-- getting all employees of booking department using variable
SELECT emp_name , emp_department 
FROM employee_master 
WHERE emp_department = 'Booking';
DECLARE @dept VARCHAR(50);
SET @dept = 'Booking';
SELECT * 
FROM employee_master
WHERE emp_department = @dept;

-- 
DECLARE @empID INT;
DECLARE @empNameX VARCHAR(50);
SET @empID = 2341;
SET @empNameX = 'Haroon';
SELECT * 
FROM employee_master
WHERE emp_id = @empID AND emp_name = @empNameX ; 

DECLARE @totalEmployees INT;              
SET @totalEmployees = (SELECT  COUNT (*) FROM employee_master);
PRINT @totalEmployees;

-- finding average salary of company
DECLARE @avgSalary INT;
SET @avgSalary = (SELECT AVG(emp_salary) from employee_master);
PRINT @avgSalary;

-- Ek variable @deptCount banao jisme 'HD' 
-- department ke employees ka count store ho. 
-- IF-ELSE se check karo: agar count 0 hai, 
-- PRINT karo "No employees in HD", 
-- warna PRINT karo "HD has employees".

SELECT * 
FROM employee_master;
DECLARE @deptCount INT;
SET @deptCount = (SELECT COUNT (*) FROM employee_master WHERE emp_department = 'HD');
PRINT @deptCount;
IF @deptCount = 0
	BEGIN
		PRINT 'No Employees in HD Department'
	END
	ELSE
	BEGIN
		PRINT 'HD Department has Employees'
	END

/*
Ek variable @nullSalaryCount banao jisme un 
employees ka count ho jinki salary NULL hai.
IF check karo — agar yeh count 0 se zyada hai, 
toh message print karo "Some salaries are missing".
*/

DECLARE @nullSalaryCount INT;
SET @nullSalaryCount = (SELECT COUNT (*) FROM employee_master WHERE emp_salary IS NULL);
-- PRINT @nullSalaryCount;
IF @nullSalaryCount > 0 
	BEGIN 
		PRINT 'Some salaries are missing'
	END
	ELSE
	BEGIN
		PRINT 'Nothing is missing'
	END

-- Stored Procedures
-- it is the reusable pack for not writing the same query multiple times
GO
CREATE PROCEDURE GetAllData
AS 
	BEGIN 
		SELECT * 
		FROM employee_master
	END

EXEC GetAllData;

-- getting all mis employees whose salary is greater than 49000
GO
CREATE PROCEDURE GetMISEmpWithSalaryGreaterThan50k
AS	
	BEGIN 
		SELECT *
		FROM employee_master
		WHERE emp_salary > 49000 AND emp_department = 'MIS';
	END
EXEC GetMISEmpWithSalaryGreaterThan50k;


-- with params
GO
CREATE PROCEDURE GetEmployeesByDepartmentWise
	@department VARCHAR(50)
AS
	BEGIN 
		SELECT * 
		FROM employee_master
		WHERE emp_department = @department;
	END
EXEC GetEmployeesByDepartmentWise @department = 'HD';