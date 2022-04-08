SELECT * FROM REGIONS;

SELECT * FROM COUNTRIES ;

SELECT * FROM DEPARTMENTS;

SELECT * FROM EMPLOYEES;

SELECT * FROM JOB_HISTORY;

SELECT * FROM JOBS;

SELECT * FROM LOCATIONS;

-- * SHOWS everything from whole column

-- RESTRICTING COLUMNS IN THE RESULT
-- SQL IS SPACE INSENSITIVE

SELECT FIRST_NAME
FROM EMPLOYEES;

-- More than one columns can be specified separated by comma,

SELECT FIRST_NAME, LAST_NAME, EMAIL
FROM EMPLOYEES;


-- Get only Unique First names
SELECT DISTINCT FIRST_NAME FROM EMPLOYEES; -- 91 ROWS

-- Get only Unique last names

SELECT DISTINCT LAST_NAME FROM EMPLOYEES;

-- This is looking for people with unique first name and last name, full name
SELECT DISTINCT FIRST_NAME, LAST_NAME FROM EMPLOYEES;


-- RESTRICTING ROWS IN THE RESULT USING WHERE CLAUSE
-- COMPARISON OPERATORS : =, > >= , < <= , !=, <>
-- LOGICAL OPERATORS : AND OR

-- Display the Employee information for the employee with first_name Ellen
-- In SQL we use single quote for String
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'Ellen'; -- Values are Case sensitive

-- Display the Employee First_Name, Last_Name, Salary
-- for the employee with Salary 11000
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES WHERE SALARY = 11000;

-- Display the Employee First_name, last_name, Salary
-- for the employee with salary 4800 and first_name david

SELECT FIRST_NAME, LAST_NAME, Salary
FROM EMPLOYEES WHERE FIRST_NAME = 'David' AND SALARY = 4800;

SELECT * FROM REGIONS
WHERE REGION_NAME = 'Americas';

SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 12000;

















