/*                        DDL:-  DATA DEFINITION LANGUAGE                 */


/*
CREATE: Create new database objects (e.g., tables, databases, indexes, views).
ALTER: Modify existing database objects.
DROP: Delete existing database objects.
TRUNCATE: Remove all records from a table but keep the table structure.
*/

# 1 CREATE DATABASE DATABASE_NAME
# EXAMPLE 
CREATE DATABASE ddl_db;

# fetch databases 
SHOW DATABASES;

# use the ddl_db for table creations
use ddl_db;

# 1 CREATING TABLE
# CREATE TABL  TABLE_NAME
# EXAMPLE 
CREATE TABLE EMPLOYEE(EMP_ID INT,EMP_NAME CHAR);


# FETCH TABLE 
SELECT * from  EMPLOYEE;


# 2 ALTER TABLE 
# ALTER TABLE TABLE_NAME 
ALTER TABLE EMPLOYEE
ADD COLUMN SAL INT;


ALTER TABLE EMPLOYEE
modify COLUMN emp_name text;



# FETCH TABLE
SELECT * FROM EMPLOYEE;



# when u insert values to table  then only know whther truncate workout or not 
INSERT INTO EMPLOYEE VALUES(1,'z',20000);
INSERT INTO EMPLOYEE VALUES(2,'x',30000);
INSERT INTO EMPLOYEE VALUES(3,'y',40000);


# 4 TRUNCATE TABLE
# TRUNCATE TABLE TABLE_NAME
TRUNCATE TABLE EMPLOYEE;

# FETCH TABLE
SELECT * FROM EMPLOYEE;

# 3 DROP TABLE
# DROP TABLE TABLE_NAME
DROP TABLE EMPLOYEE;

# FETCH TABLE
SELECT * FROM EMPLOYEE;
SHOW tables;
