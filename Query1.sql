/*SELECT Columns Example
The following SQL statement selects the "CustomerName", "City", and "Country" columns from the "Customers" table:

Example*/

/SELECT CustomerName, City, Country FROM Customers;
SELECT * FROM Customers
WHERE Country = 'Mexico';



SELECT * FROM Customers
WHERE CustomerID = "ALFKI";

SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';



SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

SELECT * FROM Customers
WHERE NOT Country = 'Germany';

SELECT * FROM Customers
WHERE Country = 'Germany' 
AND (City = 'Berlin' OR City = 'Stuttgart');

SELECT * FROM Customers
WHERE NOT Country = 'Germany' AND 
NOT Country = 'USA';


select pow(2,3)


CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

DROP TABLE Shippers;

ALTER TABLE Customers
ADD Email varchar(255);


ALTER TABLE Customers
DROP COLUMN Email;

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);
ALTER TABLE Customers
ADD Email varchar(255);

ALTER TABLE Customers
DROP COLUMN Email;

ALTER TABLE Persons
MODIFY Age int NOT NULL;


CREATE TABLE Mallcustomers (
    CustomerID int NOT NULL,
    Gender varchar(255) NOT NULL,
    Age int,
    AnnualIncome int,
    SpendingScore int,
    PRIMARY KEY (CustomerID)
);


SELECT * FROM Customers
ORDER BY Country;
/* Data Manuplation*/

INSERT INTO Customers (CustomerID, CompanyName, ContactName,
 ContactTitle, Address, City, PostalCode, Country)
VALUES ('QWERT', 'XBC','Bom B. Erichsen', 'Sales Representative', 
'Skagen 21', 'Mumbai', '4006', 'India'),
('ABCDE', 'ABX','Kiran', 'Sales Representative', 
'Bangalore', 'Bangalore', '40786', 'India');

select * from customers;

SELECT CustomerID, CompanyName, Address
FROM Customers
WHERE Address IS NULL;

Select * from customers;

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
WHERE CustomerID = 'ALFKI';

Select * from customers;

Select * from customers WHERE ContactName='Tom B. Erichsen';
DELETE FROM Customers WHERE ContactName='Tom B. Erichsen';

Select * from customers WHERE City='Stavanger';

DELETE FROM Customers WHERE City='Stavanger';
Select * from customers WHERE City='Stavanger';

SHOW INDEXES FROM Customers;

/*SQL TOP, LIMIT and FETCH FIRST Examples*/

SELECT * FROM Customers
LIMIT 3;

SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

/*MIN() Example*/

Select * from products;

SELECT MIN(UnitPrice) AS SmallestPrice
FROM Products;

SELECT MAX(UnitPrice) AS LargestPrice
FROM Products;

/*SQL COUNT(), AVG() and SUM() Functions*/

Select * from products;

SELECT COUNT(ProductID)
FROM Products;

SELECT AVG(UnitPrice)
FROM Products;

Select * from `order details`;

SELECT SUM(Quantity)
FROM `order details`;

select * from `order details`;


/*The SQL LIKE Operator*/

SELECT * FROM Customers
WHERE CompanyName LIKE 'a%';

/*The following SQL statement selects all customers 
with a CustomerName ending with "a":*/

SELECT * FROM Customers
WHERE CompanyName LIKE '%a';

/*The following SQL statement selects all customers
 with a CustomerName that have "or" in any position:*/


SELECT * FROM Customers
WHERE CompanyName LIKE '%or%';

/*The following SQL statement selects all customers 
with a CustomerName that have "r" in the second position:*/

SELECT * FROM Customers
WHERE CompanyName LIKE '_r%';

-- The following SQL statement selects all customers
--  with a CustomerName that starts with "a" and are 
--  at least 3 characters in length:

-- Example
SELECT * FROM Customers
WHERE CompanyName LIKE 'a__%';

-- The following SQL statement selects all customers
--  with a ContactName that starts with "a" and ends 
--  with "o":

-- Example
SELECT * FROM Customers
WHERE CompanyName LIKE 'a%o';


-- The following SQL statement selects all customers 
-- with a CustomerName that does NOT start with "a":


SELECT * FROM Customers
WHERE CompanyName NOT LIKE 'a%';

-- SQL Wildcard Characters
-- A wildcard character is used to substitute one or 
-- more characters in a string.

-- Wildcard characters are used with the LIKE operator. 
-- The LIKE operator is used in a WHERE clause to 
-- search for a specified pattern in a column.

-- Using the % Wildcard
-- The following SQL statement selects all customers 
-- with a City starting with "ber":


SELECT * FROM Customers
WHERE City LIKE 'ber%';

-- The following SQL statement selects all customers
--  with a City containing the pattern "es": 


SELECT * FROM Customers
WHERE City LIKE '%es%';

-- Using the _ Wildcard
-- The following SQL statement selects all 
-- customers with a City starting with any character, 
-- followed by "ondon":


SELECT * FROM Customers
WHERE City LIKE '_ondon';


-- The following SQL statement selects all customers 
-- with a City starting with "L", followed by any 
-- character, followed by "n", followed by any character,
-- followed by "on":
SELECT * FROM Customers
WHERE City LIKE 'L_n_on';

-- The SQL IN Operator
-- The IN operator allows you to specify multiple 
-- values in a WHERE clause.

-- The IN operator is a shorthand for multiple OR 
-- conditions.

-- IN Syntax
-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name IN (value1, value2, ...);

-- The following SQL statement selects all customers 
-- that are located in "Germany", "France" or "UK":


SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

-- The following SQL statement selects all customers 
-- that are NOT located in "Germany", "France" or "UK":

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

-- The following SQL statement selects all 
-- customers 
-- -- that are from the same countries as the 
-- suppliers:

SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);

/*Functions*/

-- aggregate functions

-- MySQL COUNT() Function 
SELECT COUNT(*) FROM products;

SELECT COUNT(UnitPrice) AS low_price_items FROM 
products WHERE UnitPrice < 200;

-- String Functions
-- MySQL CHAR_LENGTH() Function

SELECT CHAR_LENGTH("SQL Tutorial") AS LengthOfString;

SELECT CHAR_LENGTH(CompanyName) AS LengthOfName
FROM Customers;

-- MySQL CONCAT() Function--

SELECT CONCAT("SQL ", "Tutorial ", "is ", "fun!") 
AS ConcatenatedString;  

SELECT CONCAT(Address, " ", PostalCode, " ", City) 
AS Address
FROM Customers;

-- The FIELD() function returns the index position 
-- of a 
-- value in a list of values.

-- This function performs a case-insensitive search.

SELECT FIELD("c", "a", "b"); 

SELECT FIELD("l", "s", "q", "l","o","l");

SELECT FIELD(5, 0, 1, 2, 3, 4, 5);

-- The FIND_IN_SET() function returns the 
-- position of a string 
-- within a list of strings.
SELECT FIND_IN_SET("q", "s,q,l");

-- The FORMAT() function formats a number to a 
-- format like "#,###,###.##", rounded to a specified 
-- number of decimal places, 
-- then it returns the result as a string.

SELECT FORMAT(250500.5634, 2);

-- Insert
SELECT INSERT("i am learning SQL", 1, 9, "Example"); 

-- MySQL INSTR() Function 
-- Search for "3" in string "i am learning SQL",
--  and return position:
SELECT INSTR("i am learning SQL", "a") AS 
MatchPosition;

-- MySQL LCASE() Function
SELECT LCASE("SQL Tutorial is FUN!");

-- MySQL LEFT() Function
SELECT LEFT("SQL Tutorial", 3) AS ExtractString;

-- Replace "SQL" with "HTML":

SELECT REPLACE("SQL Tutorial", "SQL", "HTML");

-- Reverse a string:

SELECT REVERSE("SQL Tutorial");

-- Remove trailing spaces from a string:

SELECT RTRIM("SQL Tutorial     ") AS 
RightTrimmedString;

SELECT LTRIM("     SQL Tutorial") AS 
LeftTrimmedString;


-- Extract a substring from a string 
-- (start at position 5, 
-- extract 3 characters):

SELECT SUBSTR("SQL Tutorial", 5, 3) AS ExtractString;

-- Return a substring of a string before a specified 
-- number of delimiter occurs:

SELECT SUBSTRING_INDEX("I am. learning SQL", ".", 1);

-- Convert the text to upper-case: 

SELECT UCASE("SQL Tutorial is FUN!");

-- --Math Functions

SELECT ABS(-243.5);
SELECT AVG(UnitPrice) AS AveragePrice FROM Products;
SELECT GREATEST("w3Schools.com", "microsoft.comvvvvvvv", "apple.com");
SELECT MAX(UnitPrice) AS LargestPrice FROM Products;
SELECT MIN(UnitPrice) AS SmallestPrice FROM Products;
SELECT POWER(4, 2);

/*Add 10 days to a date and return the date:*/

SELECT ADDDATE("2017-06-15", INTERVAL 10 DAY);

SELECT CURRENT_DATE();

-- The SQL GROUP BY Statement
-- The GROUP BY statement groups rows that have the same 
-- values into 
-- -- summary rows, like "find the number of customers in
--  each country".

-- The GROUP BY statement is often used with aggregate 
-- functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the 
-- result-set by one or more columns.

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;


-- Operators

-- MySQL Arithmetic Operators
 SELECT 30 + 20;
 SELECT 30 - 20;
 
 -- MySQL Comparison Operators
SELECT * FROM Products
WHERE UnitPrice >= 30;

-- MySQL Logical Operators

SELECT * FROM Products
WHERE UnitPrice > ALL (SELECT UnitPrice FROM Products 
WHERE UnitPrice > 500);

SELECT * FROM Products
WHERE UnitPrice > ANY (SELECT UnitPrice FROM Products 
WHERE UnitPrice > 50);

SELECT * FROM Products
WHERE EXISTS (SELECT UnitPrice FROM Products
 WHERE UnitPrice > 50);

SELECT * FROM Customers
WHERE City NOT LIKE 's%';


SELECT * FROM Products
WHERE UnitPrice BETWEEN 50 AND 60;

SELECT Orders.OrderID, Customers.CompanyName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;


-- MySQL INNER JOIN Example
-- The following SQL statement selects all orders 
-- with customer information:

SELECT Orders.OrderID, Customers.ContactName,customers.CompanyName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

-- Note that the full-outer join is not supported by MySQL although you can emulate 
-- one by combining left and right-outer join with UNION set operation.
--  Oracle and SQL Server do support the full-outer join

SELECT Customers.ContactName, Orders.OrderID
FROM Customers
left OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.ContactName;


-- SQL LEFT JOIN Keyword
-- The LEFT JOIN keyword returns all records from the left table (table1), 
-- and the matching records from the right table (table2). The result is 0 
-- records from the right side, if there is no match.

SELECT Customers.ContactName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.ContactName;

-- SQL RIGHT JOIN Keyword
-- The RIGHT JOIN keyword returns all records from the right table (table2),
--  and the matching records from the left table (table1). The result is 0 
--   records from the left side, if there is no match.

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;


-- SQL Self Join
-- A self join is a regular join, but the table is joined with itself.

SELECT A.ContactName AS CustomerName1, B.ContactName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;