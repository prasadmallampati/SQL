
/*
###      Operators
     operators are used to perform operations on values. Common operators include   

1.   Arithmetic Operators     
   - `+` (Addition)    Adds two numbers
   - `-` (Subtraction)    Subtracts one number from another
   - `*` (Multiplication)    Multiplies two numbers
   - `/` (Division)    Divides one number by another
   - `%` (Modulus)    Returns the remainder of a division

2.   Comparison Operators     
   - `=` (Equal)    Checks if two values are equal
   - `<>` / `!=` (Not Equal)    Checks if two values are not equal
   - `>` (Greater Than)    Checks if one value is greater than another
   - `<` (Less Than)    Checks if one value is less than another
   - `>=` (Greater Than or Equal To)    Checks if one value is greater than or equal to another
   - `<=` (Less Than or Equal To)    Checks if one value is less than or equal to another

3.   Logical Operators     
   - `AND`    Returns true if both conditions are true
   - `OR`    Returns true if at least one condition is true
   - `NOT`    Inverts the value of a boolean expression
*/
### Syntax and Examples

   CREATE TABLE Employees (
       EmployeeID INT PRIMARY KEY,
       FirstName VARCHAR(50),
       LastName VARCHAR(50),
       BirthDate DATE,
       Salary DECIMAL(10, 2),
       IsActive BOOLEAN
);
   

# Inserting Data
   INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, Salary, IsActive)
   VALUES (1, 'John', 'Doe', '1985-10-15', 55000.00, TRUE);


### Arithmetic Operators

#     Addition (+)      :
        
   SELECT 10 + 5 AS SumResult;
        

#       Subtraction (-)      :
        
   SELECT 183 - 40 AS DifferenceResult;
        

#      Multiplication (*)      :
        
   SELECT 10 * 5 AS ProductResult;
        

#       Division (/)      :
        
   SELECT 10 / 5 AS QuotientResult;
        

#       Modulus (%)      :
        
   SELECT 10 % 3 AS RemainderResult;
        

# Comparison Operators

#       Equal (=)      :
        
   SELECT *
   FROM Employees
   WHERE Salary = 50000;
        

#       Not Equal (<> or !=)      :
        
   SELECT *
   FROM Employees
   WHERE Salary <> 50000;
   -- OR
   SELECT *
   FROM Employees
   WHERE Salary != 50000;
        

#       Greater Than (>)      :
        
   SELECT *
   FROM Employees
   WHERE Salary > 50000;
        
#       Less Than (<)      :
        
   SELECT *
   FROM Employees
   WHERE Salary < 50000;
        

#       Greater Than or Equal To (>=)      :
        
   SELECT *
   FROM Employees
   WHERE Salary >= 50000;
        

#       Less Than or Equal To (<=)      :
        
   SELECT *
   FROM Employees
   WHERE Salary <= 50000;
        

### Logical Operators

#       AND      :
        
   SELECT *
   FROM Employees
   WHERE Salary > 50000 AND IsActive = TRUE;
        

#       OR      :
        
   SELECT *
   FROM Employees
   WHERE Salary > 50000 OR IsActive = TRUE;
        

#       NOT      :
        
   SELECT *
   FROM Employees
   WHERE NOT IsActive;
        

### Combining Operators

#       Arithmetic and Comparison      :
        
   SELECT *
   FROM Employees
   WHERE (Salary + 5000) > 60000;
        

#       Arithmetic, Comparison, and Logical      :
        
   SELECT *
   FROM Employees
   WHERE (Salary - 1000) < 50000 AND IsActive = TRUE;
        
