/*


In MySQL, UNION and UNION ALL are used to combine the results of two or more SELECT statements.

1. UNION
The UNION operator combines the results of two or more SELECT statements and removes duplicate rows from the result set.

2. UNION ALL 
The UNION ALL operator combines the results of two or more SELECT statements and includes all duplicate rows.

Difference between UNION and UNION ALL
Duplicate Rows:

UNION: Removes duplicate rows from the result set.
UNION ALL: Includes all duplicate rows in the result set.
Performance:

UNION: Generally slower than UNION ALL because it performs a distinct operation to remove duplicates.
UNION ALL: Faster because it does not check for duplicate rows.
Use Case:

UNION: Use when you need a unique set of records.
UNION ALL: Use when you need all records, including duplicates.
*/


# create database database name

CREATE DATABASE unionsdb;

use unionsdb;




# CREATE TABLE EMPLOYEE TABLE

CREATE TABLE employees(
name varchar(30),
age int);


# CREATE TABLE customers

CREATE TABLE customers(
name varchar(30),
age int);




# inserting value into employees

INSERT INTO employees (name,age) VALUES('prasad',21),('akhil',28),('hartik',22);
INSERT INTO customers (name,age) VALUES('akhil',28),('vekatesh',30);




# UNION  SYNTAX 
			   # SELECT COLUMNS FROM TABLE UNION SELECT COLUMNS FROM TABLE

# EXAMPLE 
				SELECT name,age 
				FROM employees
				UNION
				SELECT name,age
				FROM customers;
                
                
# UNION ALL SYNTAX 
			# SELECT COLUMNS FROM TABLE UNION SELECT COLUMNS FROM TABLE
            SELECT name, age
			FROM employees
			UNION ALL
			SELECT name, age
			FROM customers;
            
