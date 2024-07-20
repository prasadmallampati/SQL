/*             Data Manipulation Language                 */



/*
SELECT: Retrieve data from one or more tables.
INSERT: Add new records to a table.
UPDATE: Modify existing records in a table.
DELETE: Remove records from a table.
*/



# 1 SELECT 
# SYNTAX SELECT specific column or *  FROM TABLE_NAME
# EXAMPLE
SELECT *FROM EMPLOYEE; 


# 2 INSERT 
# INSERT INTO TABLE_NAME VALUES
# EXAMPLE
INSERT INTO EMPLOYEE VALUES(4,'ALICE',9000),(5,'BOB',8900);
INSERT INTO EMPLOYEE VALUES(5,'DARTH',8000);
INSERT INTO EMPLOYEE VALUES(6,'HEY',2000);

# FETCH TABLE
SELECT * FROM EMPLOYEE;


# 3 UPDATE
# UPDATE TABLE_NAME SET COLUMN=VALUE,COLUMN2=VALUE WHERE CONDITION;
UPDATE  EMPLOYEE 
SET SAL=45000
WHERE EMP_NAME='ALICE';


# FETCH TABLE
SELECT * FROM EMPLOYEE;


# 4 DELETE
# DELETE FROM TABLE_NAME WHERE CONDITION
DELETE FROM EMPLOYEE 
WHERE EMP_NAME='HEY';

# FETCH TABLE
SELECT * FROM EMPLOYEE;
