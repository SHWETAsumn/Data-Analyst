-- CREATING DATABASE
CREATE DATABASE ASSIGNMENT;
SHOW DATABASES;

USE ASSIGNMENT;
-- CREATING TABLE INSIDE ASSIGNMENT DATABASE
CREATE TABLE CUSTOMER (
ID INT AUTO_INCREMENT PRIMARY KEY,
PHONE VARCHAR(10)
);

-- INSERT VALUES INTO CUSTOMER TABLE
INSERT INTO CUSTOMER (PHONE) VALUES ('12345678'),
(NULL),
('987654321'),
(NULL);

-- Write a query to select all records where the `phone_number` is NULL
SELECT * FROM CUSTOMER WHERE PHONE IS NULL;

-- *****************************************************************************************

-- CREATING TABLE EMPLOYEE ASSIGNMENT DATABASE
CREATE TABLE EMPLOYEE (
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(20),
MANAGER_ID INT
);

-- INSERT VALUES INTO EMPLOYEE TABLE
INSERT INTO EMPLOYEE (NAME, MANAGER_ID) VALUES
('Alice', 1),
('Bob', NULL),
('Charlie', 2),
('Dave', NULL) ;

SELECT * FROM EMPLOYEE;

-- Write a query to select all records where the manager_id is NOT NULL
SELECT * FROM EMPLOYEE WHERE MANAGER_ID IS NOT NULL;

-- *****************************************************************************


-- CREATING TABLE PRODUCT ASSIGNMENT DATABASE
CREATE TABLE PRODUCT (
ID INT AUTO_INCREMENT PRIMARY KEY,
PRODUCT_NAME VARCHAR(50),
EXPIRATION_DATE DATE
);


-- INSERT VALUES INTO EMPLOYEE TABLE
INSERT INTO PRODUCT (PRODUCT_NAME, EXPIRATION_DATE) VALUES
('Milk', '2024-08-01'),
('Bread', NULL),
('Cheese', '2024-09-01'),
('Butter', NULL) ;

SELECT * FROM PRODUCT;

-- Write a query to count how many products do not have an expiration date.
SELECT COUNT(PRODUCT_NAME) AS NO_EXPIRE_DATE_FOUND FROM PRODUCT WHERE EXPIRATION_DATE IS NULL;

-- *****************************************************************************




-- CREATING TABLE ORDER ASSIGNMENT DATABASE
CREATE TABLE ORDERS (
ID INT AUTO_INCREMENT PRIMARY KEY,
CUSTOMER_ID INT,
SHIPPING_DATE DATE
);


-- INSERT VALUES INTO EMPLOYEE TABLE
INSERT INTO ORDERS (CUSTOMER_ID, SHIPPING_DATE) VALUES
(1, '2024-07-20'),
(2, NULL),
(3, '2024-07-22'),
(4, NULL);

SELECT * FROM ORDERS;

-- Write a query to select all records and include a column that indicates whether the shipping_date is NULL or NOT NULL.

SELECT * , IF ( SHIPPING_DATE IS NULL, 'NO', 'YES') AS SHIPPING_DATE_STATUS FROM ORDERS;

-- SAME QUESTION WITH CASE
SELECT 
    *,
    CASE 
        WHEN shipping_date IS NULL THEN 'YES'
        ELSE 'NO'
    END AS SHIPPING_DATE_STATUS
FROM 
    ORDERS;

-- *****************************************************************************




-- CREATING TABLE ORDER ASSIGNMENT DATABASE
CREATE TABLE APPOINTMENT (
ID INT AUTO_INCREMENT PRIMARY KEY,
PATIENT_ID INT,
APPOINTMENT_DATE DATE,
NOTES VARCHAR(60)
);

-- INSERT VALUES INTO EMPLOYEE TABLE
INSERT INTO APPOINTMENT (PATIENT_ID, APPOINTMENT_DATE, NOTES) VALUES
(1, '2024-07-25', 'Follow-up visit'),
(2, '2024-07-26', NULL),
(3, '2024-07-27', 'Initial consultation'),
(4, '2024-07-28', NULL);

SELECT * FROM APPOINTMENT;

-- Write a query to count the number of appointments that have notes and those that do not, grouping the results accordingly.
SELECT
IF(notes IS NULL, 'No Notes', 'Has Notes') AS notes_status,
COUNT(*) AS count
FROM appointment
GROUP BY notes_status;

-- *****************************************************************************

DROP TABLE SALES;
-- CREATING TABLE ORDER SALES DATABASE
CREATE TABLE SALES (
SALES_ID INT PRIMARY KEY,
PRODUCT VARCHAR(300),
QUANTITY INTEGER,
PRICE DECIMAL(10,2)
);


-- INSERT VALUES INTO SALES TABLE
INSERT INTO SALES (SALES_ID, PRODUCT, QUANTITY, PRICE) VALUES 
(1, 'Widget A', 10, 15.99),
(2, 'Widget B', 5, 25.50),
(3, 'Widget A', 7, 15.99),
(4, 'Widget C', 3, 10.00),
(5, 'Widget B', 8, 25.50),
(6, 'Widget D', 2, 30.00),
(7, 'Widget A', 12, 15.99),
(8, 'Widget C', 10, 10.00),
(9, 'Widget D', 5, 30.00),
(10, 'Widget B', 4, 25.50)
;

SELECT * FROM SALES;

-- Question1: Find the total quantity sold for each product.
SELECT PRODUCT, SUM(QUANTITY) AS TOTAL_QUANTITY_SOLD
FROM SALES
GROUP BY PRODUCT;

-- Question2: Calculate the total revenue generated from each product (Total Revenue = Quantity * Price).
select PRODUCT, SUM(QUANTITY * PRICE) AS TOTAL_RAVENUE
FROM SALES
GROUP BY PRODUCT;

-- Question3: Determine the average price of each product.
SELECT PRODUCT, AVG(PRICE) AS AVG_PRICE
FROM SALES
GROUP BY PRODUCT;

-- Question4: Find the product with the highest total revenue (Quantity * Price)
select PRODUCT, SUM(QUANTITY*PRICE) AS TOTAL_REV
FROM SALES
GROUP BY PRODUCT
ORDER BY TOTAL_REV
LIMIT 1;

-- Question5: Calculate the total quantity sold across all products.
SELECT PRODUCT, SUM(QUANTITY) AS TOTAL_SOLD
FROM SALES
GROUP BY PRODUCT;
-- Question6: Determine the average price of all products.
SELECT PRODUCT, AVG(PRICE) AS AVG_PRICE
FROM SALES
GROUP BY PRODUCT;
-- Question7: Count and show the number of distinct products that have been sold more than twice. 
SELECT * FROM SALES;

SELECT DISTINCT PRODUCT, COUNT(*) AS SOLD_MORE_THAN_TWICE
FROM SALES
GROUP BY PRODUCT
HAVING SOLD_MORE_THAN_TWICE >2;

-- ***********************************************************************************************************









--       QUESTIONS ON PRODUCT TABLE 

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Price DECIMAL(10,2)
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Product A', 19.99),
(2, 'Product B', 29.99),
(3, 'Product C', 39.99);

SELECT * FROM PRODUCTS;

-- Question1: Calculate the square root of the highest price in the Products table.
SELECT SQRT(MAX(PRICE)) AS HIGHEST_PRICE_SQRT 
FROM PRODUCTS;

-- Question2: Find the absolute difference between the highest and lowest prices in the Products table.
SELECT ABS(MAX(PRICE) - MIN(PRICE)) AS DIFF_MAX_MIN_PRICE 
FROM PRODUCTS;

-- Question3: Calculate the floor value of the average price of all products.
SELECT FLOOR(AVG(PRICE))
FROM PRODUCTS;
-- Question4: Calculate the ceiling value of the average price of all products.
SELECT CEIL(AVG(PRICE))
FROM PRODUCTS;

-- ************************************************************************************

DROP TABLE ORDERSS;

--                           QUESTION ON CUSTOMER TABLE
CREATE TABLE OrdersS (
    OrderID INT PRIMARY KEY,
    OrderDate DATETIME,
    DeliveryDate DATETIME
);

INSERT INTO OrdersS (OrderID, OrderDate, DeliveryDate) VALUES
(1, '2025-04-01 10:00:00', '2025-04-03 15:00:00'),
(2, '2025-04-02 11:30:00', '2025-04-04 16:30:00'),
(3, '2025-04-03 12:45:00', '2025-04-05 17:45:00'),
(4, '2025-04-04 14:00:00', '2025-04-06 18:00:00'),
(5, '2025-04-05 15:15:00', '2025-04-07 19:15:00');

SELECT * FROM ORDERSS;

-- Question: Find difference in days between order date and delivery date for each order.
SELECT ORDERID, DATEDIFF(DELIVERYDATE, ORDERDATE) AS DaysToDelivery 
FROM ORDERSS;
-- Question: Calculate the total delivery time in hours for all orders.
SELECT SUM(TIMESTAMPDIFF(HOUR, OrderDate, DeliveryDate)) AS TotalDeliveryHours
FROM ORDERSS;
-- Question: Determine the day of the week when each order was placed.
SELECT ORDERID, DAYOFWEEK(ORDERDATE) AS DayOfwEEK 
FROM ORDERSS;
-- Question: Find the orders that were placed on a Saturday (DayOfWeek = 7).
SELECT * FROM ORDERSS WHERE DAYOFWEEK(ORDERDATE) =7;
-- Question: Calculate the average delivery time in days for all orders.
SELECT AVG(DATEDIFF(DELIVERYDATE, ORDERDATE)) AS TOTAL_DELIVERY_DAYS FROM ORDERSS;
-- Question: Find the orders that were delivered on the same day they were placed.
SELECT * FROM ORDERSS WHERE DATE(ORDERDATE) = DATE(DELIVERYDATE);


DROP TABLE ORDERSSS;

--                             QUESTIONS ON ORDER TABLE
CREATE TABLE Ordersss (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    TotalAmount DECIMAL(10,2)
);


INSERT INTO Ordersss (OrderID, CustomerID, TotalAmount) VALUES
(8, 106, 150.5),
(9, 107, 200.0)
;

SELECT * FROM ORDERSSS;

-- Write an SQL query to find the customer IDs of customers who have placed orders with a total amount greater than $1,000.
SELECT CUSTOMERID, SUM(TOTALAMOUNT) AS TOTAL 
FROM ORDERSSS
GROUP BY(CUSTOMERID)
HAVING TOTAL>1000;




DROP TABLE SALE;
--                            QUESTIONS ON SALES TABLE
CREATE TABLE Sale (
    ProductID INT,
    SaleDate DATE,
    QuantitySold INT
);

INSERT INTO Sale (ProductID, SaleDate, QuantitySold) VALUES
(1, '2025-04-01', 150),
(1, '2025-04-02', 115),
(3, '2025-04-03', 7),
(3, '2025-04-04', 30),
(5, '2025-04-05', 89),
(3, '2025-04-06', 2),
(7, '2025-04-07', 12),
(8, '2025-04-08', 10),
(1, '2025-04-09', 500),
(9, '2025-04-10', 4);

SELECT * FROM SALE;

-- Write an SQL query to find the product IDs of products that have been sold in quantities greater than 
-- 100 on at least three different sale dates.
SELECT PRODUCTID
FROM SALE
GROUP BY PRODUCTID
HAVING  COUNT(DISTINCT SALEDATE) >= 3 AND SUM(QUANTITYSOLD) >100;


-- Write an SQL query to find the product with the highest total quantity sold.
SELECT PRODUCTID, SUM(QUANTITYSOLD) AS HIGHEST_SOLD
FROM SALE 
GROUP BY PRODUCTID
ORDER BY HIGHEST_SOLD DESC
LIMIT 1;


--                             QUESTIONS ON EMPLOYEE TABLE
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Department VARCHAR(255),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmployeeID, Department, Salary) VALUES
(1, 'HR', 50000.00),
(2, 'Engineering', 75000.00),
(3, 'Marketing', 60000.00),
(4, 'Sales', 55000.00),
(5, 'Finance', 70000.00);

SELECT * FROM EMPLOYEES;

-- Write an SQL query to find the average salary of employees in each department, but
-- only for departments where the average salary is greater than $60,000.
SELECT DEPARTMENT, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMENT
HAVING AVG_SALARY > 60000;


-- Write an SQL query to find the department with the highest average salary.
SELECT DEPARTMENT, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMENT
ORDER BY AVG_SALARY DESC
LIMIT 1;


-- Write an SQL query to find the department(s) with the lowest average salary.
SELECT DEPARTMENT, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMENT
ORDER BY AVG_SALARY
LIMIT 1;


SELECT * FROM EMPLOYEES;
-- Write an SQL query to find the departments where the highest salary is greater than
-- $80,000 and the total number of employees in that department is at least 5.
SELECT DEPARTMENT, COUNT(EMPLOYEEID) AS EMP_COUNT
FROM EMPLOYEES
GROUP BY DEPARTMENT
HAVING MAX(SALARY) >80000 AND EMP_COUNT >=5;





--             				QUESTIONS ON STUDENT TABLE
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Course VARCHAR(255),
    Score INT
);

INSERT INTO Students (StudentID, Course, Score) VALUES
(1, 'Math', 85),
(2, 'Science', 90),
(3, 'History', 78),
(4, 'Math', 92),
(5, 'Science', 88),
(6, 'History', 81),
(7, 'Math', 76),
(8, 'Science', 95),
(9, 'History', 84),
(10, 'Math', 89);

SELECT * FROM STUDENTS;

-- Write an SQL query to find the course names in which the average score of all students is greater than or equal to 80.
SELECT COURSE, AVG(SCORE) AS AVG_SCORE
FROM STUDENTS
GROUP BY COURSE
HAVING AVG_SCORE >= 80;

-- Write an SQL query to find the top three students with the highest average score across all courses.
SELECT COURSE, AVG(SCORE) AS AVG_SCORE
FROM STUDENTS
GROUP BY COURSE
ORDER BY AVG_SCORE DESC
LIMIT 3;


-- Write an SQL query to find the course names in which the highest score achieved by
-- any student is greater than or equal to 90, ordered by course name in ascending order.
SELECT COURSE
FROM STUDENTS
GROUP BY COURSE
HAVING MAX(SCORE) >= 90
ORDER BY COURSE;


-- Write an SQL query to find the course names where the average score of students who
-- scored less than 70 in at least one course is greater than or equal to 80.
SELECT COURSE
FROM STUDENTS
WHERE SCORE <70
GROUP BY COURSE
HAVING AVG(SCORE) >= 80;




--  								QUESTIONS ON ORDERS TABLE
CREATE TABLE Orders_S (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2)
);

INSERT INTO Orders_S (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(11, 101, '2023-04-05', 500),
(12, 105, '2023-04-07', 2000),
(13, 103, '2023-04-03', 320.00)
;

SELECT * FROM ORDERS_S;

-- Write an SQL query to find the total amount of orders placed by each customer, ordered in descending order of total amount.
SELECT CUSTOMERID, SUM(TOTALAMOUNT) AS TOTAL_AMOUNT
FROM ORDERS_S
GROUP BY CUSTOMERID
ORDER BY TOTAL_AMOUNT DESC;


-- Write an SQL query to find the customer IDs of customers who have placed orders with
-- a total amount greater than $1,000 and have placed at least two orders.
SELECT CUSTOMERID, SUM(TOTALAMOUNT) AS TOTAL_AMOUNT
FROM ORDERS_S
GROUP BY CUSTOMERID
HAVING TOTAL_AMOUNT >1000 AND COUNT(ORDERID) >= 2;


-- Write an SQL query to find the customer IDs of customers who have placed orders with a total amount greater than $500 
-- in the year 2023, ordered by customer ID in ascending order.
SELECT CUSTOMERID, SUM(TOTALAMOUNT) AS TOTAL_AMOUNT
FROM ORDERS_S
WHERE YEAR (ORDERDATE) =2023
GROUP BY CUSTOMERID
HAVING TOTAL_AMOUNT > 500 
ORDER BY TOTAL_AMOUNT;


-- Write an SQL query to find the customer IDs of customers who have placed orders with a total amount 
-- greater than $500 in the year 2023 and have placed at least two orders in that year.
SELECT CUSTOMERID, SUM(TOTALAMOUNT) AS TOTAL_AMOUNT
FROM ORDERS_S
WHERE YEAR (ORDERDATE) =2023
GROUP BY CUSTOMERID
HAVING TOTAL_AMOUNT > 500 AND COUNT(ORDERID)>=2
;


SELECT * FROM ORDERS_S;
-- Write an SQL query to find the customer IDs of customers who have placed orders with
-- a total amount greater than $1,000 in any single order and have placed orders on at least three different dates.
SELECT CUSTOMERID, MAX(TOTALAMOUNT) AS TOTAL_AMOUNT
FROM ORDERS_S
GROUP BY CUSTOMERID
HAVING COUNT(DISTINCT ORDERDATE) >=3 AND TOTAL_AMOUNT >1000; 



-- 									QUESTIONS ON BOOK TABLE
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Author VARCHAR(255),
    PublicationYear INT
);

INSERT INTO Books (BookID, Author, PublicationYear) VALUES
(1, 'Author A', 2001),
(2, 'Author B', 2005),
(3, 'Author A', 2010),
(4, 'Author D', 2015),
(5, 'Author E', 2020);

SELECT * FROM BOOKS;

-- Write an SQL query to find the number of books published by each author in descending order of the count.
SELECT AUTHOR, COUNT(PUBLICATIONYEAR) AS BOOK_COUNT
FROM BOOKS
GROUP BY AUTHOR
ORDER BY BOOK_COUNT DESC;



-- 										QUESTIONS ON PRODUCTS table
CREATE TABLE ProductsS (
    ProductID INT PRIMARY KEY,
    Category VARCHAR(255),
    Price DECIMAL(10,2)
);

INSERT INTO ProductsS (ProductID, Category, Price) VALUES
(1, 'Electronics', 199.99),
(2, 'Furniture', 299.99),
(3, 'Clothing', 49.99),
(4, 'Books', 19.99),
(5, 'Toys', 24.99);

SELECT * FROM PRODUCTSS;

-- Write an SQL query to find the average price of products in each category, ordered by category name in ascending order.
SELECT CATEGORY, AVG(PRICE) AS AVG_PRICE
FROM PRODUCTSS
GROUP BY CATEGORY
ORDER BY CATEGORY;


SELECT * FROM PRODUCTSS;
-- Write an SQL query to find the categories where the average price of products is
-- greater than or equal to $50, and the maximum price within that category is greater than $100.
SELECT CATEGORY
FROM PRODUCTSS
GROUP BY CATEGORY
HAVING MAX(PRICE) > 100 AND AVG(PRICE) >= 50;



DROP TABLE EMPLOYEES;


-- 		*******************************************************************************************
-- 		*******************************************************************************************
-- 		*******************************************************************************************
-- Create the Employees table:

CREATE TABLE Employees (
    EMPLOYEE_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(100),
    PHONE_NUMBER VARCHAR(20),
    HIRE_DATE DATE,
    JOB_ID VARCHAR(10),
    SALARY DECIMAL(10,2),
    COMMISSION_PCT DECIMAL(5,2),
    MANAGER_ID INT,
    DEPARTMENT_ID INT
);

-- Insert dummy data into the Employees table:

INSERT INTO Employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '2023-01-15', 'DEV', 60000.00, 0.10, 2, 101),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '2023-02-20', 'HR', 55000.00, NULL, 3, 102),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '345-678-9012', '2023-03-25', 'MKT', 50000.00, 0.05, NULL, 103),
(4, 'Bob', 'Brown', 'bob.brown@example.com', '456-789-0123', '2023-04-30', 'SALES', 45000.00, 0.08, 1, 104),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', '567-890-1234', '2023-05-05', 'FIN', 70000.00, NULL, 2, 105);



-- Create the Departments table:
CREATE TABLE Departments (
    DEPARTMENT_ID INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(50),
    MANAGER_ID INT,
    LOCATION_ID INT
);


-- Insert dummy data into the Departments table:
INSERT INTO Departments (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID) VALUES
(101, 'Development', 1, 1001),
(102, 'Human Resources', 2, 1002),
(103, 'Marketing', 3, 1003),
(104, 'Sales', 4, 1004),
(105, 'Finance', 5, 1005);


SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
-- 							___________________QUESTIONS BASED ON EMPLOYEE AND DEPARTMENT TABLE_________________________

-- Q. Write a SQL query to find those employees who receive a higher salary than the employee with ID 163. Return first name, last name.
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES 
WHERE SALARY > 
(SELECT SALARY FROM EMPLOYEES WHERE EMPLOYEE_ID = 1);

SELECT * FROM DEPARTMENTS;
SELECT * FROM EMPLOYEES;
-- Q. write a SQL query to find out which employees have the same designation as the employee whose ID is 169. 
-- Return first name, last name, department ID and job ID.
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID, JOB_ID FROM EMPLOYEES 
WHERE JOB_ID = 
(SELECT JOB_ID FROM EMPLOYEES WHERE EMPLOYEE_ID = 5);


-- Q. Write a SQL query to find those employees whose salary matches the lowest salary of any of the departments. 
-- Return first name, last name and department ID.
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY IN
(SELECT MIN(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);



-- Q. write a SQL query to find those employees who report to that manager whose first
-- name is ‘Payam’. Return first name, last name, employee ID and salary.
SELECT FIRST_NAME, LAST_NAME, EMPLOYEE_ID, SALARY
FROM EMPLOYEES
WHERE MANAGER_ID =
(SELECT MANAGER_ID FROM EMPLOYEES WHERE MANAGER_NAME = 'PAYAM');



-- Q. write a SQL query to find those employees whose ID matches any of the numbers 134, 159 and 183. Return all the fields.
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID IN (1,2,3);



-- Q. write a SQL query to find those employees whose salary is in the range of 1000, and 3000 (Begin and end values have included.). 
-- Return all the fields.
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 1000 AND 3000;



-- Q. write a SQL query to find those employees whose salary falls within the range of the smallest salary and 2500. Return all the fields.
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 
(SELECT MIN(SALARY) FROM EMPLOYEES) AND 2500;


-- Q. write a SQL query to find those employees who do not work in the departments
-- where managers’ IDs are between 100 and 200 (Begin and end values are included.).
-- Return all the fields of the employees.
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID NOT IN
(SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE MANAGER_ID BETWEEN 100 AND 200);



-- Q. write a SQL query to find those employees who work in the same department as
-- ‘Clara’. Exclude all those records where the first name is ‘Clara’. Return first name, last name and hire date.
SELECT FIRST_NAME, LAST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE DEPARTMENT_ID =
(SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE FIRST_NAME = 'CLARA')
AND FIRST_NAME <> 'CLARA';



-- Q. write a SQL query to find those employees who work in a department where the employee’s first name contains the letter 'T'. 
-- Return employee ID, first name and last name.
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN
(SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE FIRST_NAME LIKE '%T%');



-- Q. write a SQL query to find those employees who earn more than the average salary and work in the same department 
-- as an employee whose first name contains the letter 'J'. Return employee ID, first name and salary.
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE SALARY >
(SELECT AVG(SALARY) FROM EMPLOYEES) 
AND DEPARTMENT_ID IN
(SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE FIRST_NAME LIKE '%J%');




-- Q. write a SQL query to find those employees whose department is located at ‘Toronto’. Return first name, last name, employee ID, job ID.
SELECT FIRST_NAME, LAST_NAME, EMPLOYEE_ID, JOB_ID 
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN
(SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE LOCATION ='TORONTO');



-- Q. write a SQL query to find those employees whose salaries are higher than the average for all departments. 
-- Return employee ID, first name, last name, job ID.
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID
FROM EMPLOYEES
WHERE SALARY >
(SELECT AVG(SALARY) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID);



SELECT * FROM EMPLOYEES;
-- Q. Write a query to display the employee id, name ( first name and last name ) and the
-- job id column with a modified title SALESMAN for those employees whose job title is SALES and IT_PROG for whose job title is DEV .
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID,
CASE JOB_ID
	WHEN 'SALES' THEN 'SALESMAN'
    WHEN 'DEV' THEN 'IT_PROG'
    ELSE JOB_ID
END AS DESIGNATION, SALARY
FROM EMPLOYEES;




-- Q. Write a query to display the employee id, name ( first name and last name ), salary and the SalaryStatus column 
-- with a title HIGH and LOW respectively for those employees whose salary is more than and less than the average salary of all employees.
SELECT employee_id, first_name, last_name, salary,
CASE 
	WHEN salary >= (SELECT AVG(salary) FROM employees) THEN 'HIGH'
	ELSE 'LOW'
END AS SalaryStatus
FROM employees;




-- Q. write a SQL query to find those employees whose salaries exceed 50% of their department's total salary bill. 
-- Return first name, last name.
SELECT e1.first_name, e1.last_name
FROM employees e1
WHERE salary >
( SELECT (SUM(salary))*.5
FROM employees e2
WHERE e1.department_id=e2.department_id);



-- Q. write a SQL query to find those employees who are managers. Return all the fields of the employees table.
SELECT *
FROM employees
WHERE employee_id IN
(SELECT DISTINCT manager_id FROM employees);





--      ____________________________________________________________________________________________________________


