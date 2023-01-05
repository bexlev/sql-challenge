--First creating each table, then populating them one by one

CREATE TABLE Departments (
	Dept_No VARCHAR, 
	Dept_Name VARCHAR,
	PRIMARY KEY(Dept_No));

--Checking table was created as desired	

SELECT *
FROM Departments;

-------
CREATE TABLE Dept_Manager (
	Dept_No VARCHAR,
	Emp_No INT,
	PRIMARY KEY (Emp_No));
	
SELECT *
FROM Dept_Manager;

-------
CREATE TABLE Employees(
	Emp_No INT,
	Emp_Title VARCHAR,
	Birth_Date DATE,
	First_Name VARCHAR,
	Last_Name VARCHAR,
	Sex VARCHAR,
	Hire_Date DATE,
	PRIMARY KEY (Emp_No));

SELECT *
FROM Employees

-------
CREATE TABLE Dept_Emp(
	Emp_No INT,
	Dept_No VARCHAR,
	PRIMARY KEY (Emp_No, Dept_No));
--Both Columns have duplicate values, so creating a composite key

SELECT *
FROM Dept_Emp

-------
CREATE TABLE Salaries(
	Emp_No INT,
	Salary INT,
	PRIMARY KEY (Emp_No));

SELECT *
FROM Salaries

-------
CREATE TABLE Titles(
	Title_ID VARCHAR,
	Title VARCHAR,
	PRIMARY KEY (Title_ID));

SELECT *
FROM Titles

--All tables generated

--Create foreign key in existing tables
ALTER TABLE Dept_Manager
	ADD CONSTRAINT FK_Dept_Manager FOREIGN KEY (Emp_No)
	REFERENCES Employees (Emp_No)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	
ALTER TABLE Dept_Manager
	ADD CONSTRAINT FK2_Dept_Manager FOREIGN KEY (Dept_No)
	REFERENCES Departments (Dept_No)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	
------
ALTER TABLE Dept_Emp
	ADD CONSTRAINT FK_Dept_Emp FOREIGN KEY (Emp_No)
	REFERENCES Employees (Emp_No)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	
ALTER TABLE Dept_Emp
	ADD CONSTRAINT FK2_Dept_Emp FOREIGN KEY (Dept_No)
	REFERENCES Departments (Dept_No)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
-------

ALTER TABLE Salaries
	ADD CONSTRAINT FK_Salaries FOREIGN KEY (Emp_No)
	REFERENCES Employees (Emp_No)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	
	
-------

ALTER TABLE Employees
	ADD CONSTRAINT FK_Employees FOREIGN KEY (Emp_Title)
	REFERENCES Titles (Title_ID)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
--All connections made into foreign keys---




-------------------------------------------
--Subqueries/Data Analysis Section---

-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT Employees.Emp_No, Employees.First_Name, Employees.Last_Name, Employees.Sex, Salaries.Salary
FROM Employees
JOIN Salaries AS Salaries
 	ON Employees.Emp_No = Salaries.Emp_No;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT Employees.First_Name, Employees.Last_Name, Employees.Hire_Date
FROM Employees
WHERE Hire_Date between '1986-01-01' and '1986-12-31';


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT e.Emp_No, e.First_Name, e.Last_Name, d.Dept_No, b.Dept_Name
FROM Employees e
INNER JOIN Dept_Manager d
	ON e.Emp_No = d.Emp_No
JOIN Departments b
	ON d.Dept_No = b.Dept_No;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.


-- List each employee in the Sales department, including their employee number, last name, and first name.


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
	


