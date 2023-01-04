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
	Dept_No VARCHAR);
--Both Columns have duplicate values, so no primary key

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


