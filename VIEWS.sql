/*

											## VIEWS ##
1. what is view ?
In MySQL, a view is a virtual table based on the result set of an SQL query. 
Views are used to simplify complex queries, encapsulate logic,
and enhance security by restricting access to specific rows or columns.

2.Why do we use views ?
Security: Views can be used to grant users access to specific data while hiding other details.
Performance: Views can sometimes impact performance, especially if the underlying query is complex.
Updatability: Not all views are updatable. Views involving joins, aggregations, or groupings might not support data updates.

*/



# create database database_name

CREATE DATABASE views_db;


# use database name

use views_db;




# create table table_name coulmns;

CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id int);
    
    

# insert values

INSERT INTO employees (employee_id, first_name, last_name, department, salary,department_id)
VALUES 
    (1, 'hartik', 'g', 'Sales', 29999.50,1),
    (2, 'akhil', 'pawan', 'Marketing',39999.99,2),
    (3, 'teja', 'd', 'IT', 35000.25,3),
    (4, 'sujith', 's', 'HR', 32999.77,4),
    (5, 'nirmala', 'sitharaman', 'Finance', 89999.99,5);
    
    
    
# create table table_name
 
 
 CREATE TABLE departments(
 department_id int,
 department_name varchar(50));

# insert values 

INSERT INTO departments (department_id, department_name)
VALUES 
    (1, 'Sales'),
    (2, 'Marketing'),
    (3, 'IT'),
    (4, 'HR'),
    (5, 'Finance');
    
    
    
    # FETCH RECORDS FROM EMP
    SELECT * FROM employees;

    # FETCH RECORDS FROM DEPT
    SELECT * FROM departments;
    
    

# SYNTAX
# CREATE VIEW VIEW_NAME AS SELECT COLUMNS FROM TABLE  WHERE CONDITION

CREATE VIEW finance_dept_emp AS
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE department = 'finance'; 


SELECT * FROM finance_dept_emp;



# CRETE VIEW  WITH JOIN
# CREATE VIEW VIEW_NAME SLECT COLUMNS FROM TABLE JOIN TABLE ON CONDITION

CREATE VIEW emp_dept AS 
SELECT e.employee_id,e.first_name,e.last_name,d.department_id,e.salary
FROM employees e
JOIN departments d  ON  e.department_id=d.department_id;

# FETCH RECORDS FROM VIEW
# SELECT * FROM VIEW_NAME

SELECT * FROM emp_dept;


# high salary view
# comparision  operator

CREATE VIEW high_salary_emp AS
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary >80000;


SELECT * FROM high_salary_emp;



# if u want update high sal  use update and where condition
# SYNTAX 
# update view_name set column_name= value where condition
# update sal existing(89999.99)  to new salary
UPDATE high_salary_emp
set salary=100000
where employee_id=5;


SELECT * FROM high_salary_emp;






# insert 
# insert into view_name (columns ) values(value1,....)

INSERT INTO emp_dept (employee_id, first_name, last_name, salary)
VALUES (6, 'hello', 'm', 65000.00);



#  Delete 
# delete from view_name where condition
DELETE FROM emp_dept
WHERE employee_id = 2;
