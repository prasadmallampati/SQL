/*
##################################### mysql_joins##################################
MySQL supports several types of joins to combine records from two or more tables based on related columns. Here are the main types:

INNER JOIN
LEFT JOIN (LEFT OUTER JOIN)
RIGHT JOIN (RIGHT OUTER JOIN)
FULL JOIN (FULL OUTER JOIN)
note : not supports mysql
CROSS JOIN
SELF JOIN
*/
# Creating employees table
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    department_id INT,
    manager_id INT
);

# Creating departments table
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL
);

# Inserting  data into departments table
INSERT INTO departments (department_name)
VALUES ('HR'), ('Sales'), ('Engineering'), ('Marketing');

#  Inserting data into employees table
INSERT INTO employees (name, department_id, manager_id)
VALUES ('prasad', 1, NULL), 
       ('hartik', 2, 1), 
       ('akhil', 3, 2), 
       ('sujith', NULL, 1), 
       ('venkatesh', 4, 3);

/*
		################### INNER JOIN  #################################
definition :-
			The INNER JOIN keyword selects records that have matching values in both tables.

Syntax:
			SELECT columns
			FROM table1
			INNER JOIN table2
			ON table1.column = table2.column;
*/

# example 
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;



/*
##################      LEFT JOIN     #########################
definition :- The LEFT JOIN keyword returns all records from the left table (table1),
			 and the matched records from the right table (table2). 
			 The result is NULL from the right side if there is no match.


# syntax
			SELECT columns
			FROM TABLE_1 
			LEFT JOIN TABLE_2
			ON TABLE_1.COLUMNS=TABLE_2.COLUMNS;

*/


 # example 
 
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;


/*
#################  RIGHT JOIN  ###################

definition :-The RIGHT JOIN keyword returns all records from the right table (table2),
			and the matched records from the left table (table1). 
            The result is NULL from the left side when there is no match.

SELECT columns
from table_1
RIGHT JOIN 
ON table_1.columns=table_2.columns
*/


# example 

SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;

/*
#####################   FULL JOIN  ################################
definition:- The FULL JOIN keyword returns all records when there is a match in either left (table1)
			or right (table2) table records. FULL JOIN returns NULL for unmatched rows on either side.

note :- FULL JOIN NOT WORKS IN MYSQL 
# SYNTAX FOR FULL JOIN 
		SELECT COLUMNS
		FROM TABLE_1
		FULL JOIN TABLE_2
		ON TABLE_1.COLUMNS =TABLE_2.COLUMNS
*/

# example 
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id
UNION
SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;


/*
###################### CROSS JOIN  ###########################
definition:- The CROSS JOIN keyword returns the Cartesian product of the two tables. 
			This means that it will return all possible combinations of rows from the two tables.
# SYNTAX FOR CROSS JOIN
			SELECT columns
			FROM table_1
			CROSS JOIN table_2
			ON table_1.columns=table_2.columns;
*/


# example 
SELECT employees.name, departments.department_name
FROM employees
CROSS JOIN departments;



/*
############### SELF JOIN ####################
defintion :- A SELF JOIN is a regular join but the table is joined with itself.

SELECT table_1.column,table_2
from table_1,table_2
where condition

*/

# EXAMPLE 
SELECT a.employee_id, a.name, b.name as manager_name
FROM employees a, employees b
WHERE a.manager_id = b.employee_id;

########### end of joins ##############################
