-- Week 6 Assignment: Joins and Relationships
-- Using salesdb database; queries use INNER, LEFT, RIGHT JOINs

USE salesdb;

-- Question 1: Get firstName, lastName, email, officeCode using INNER JOIN with employees and offices
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question 2: Get productName, productVendor, productLine using LEFT JOIN with products and productlines
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Question 3: Get orderDate, shippedDate, status, customerNumber for first 10 orders using RIGHT JOIN with customers and orders
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;