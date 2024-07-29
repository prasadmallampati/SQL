/*				                                              Triggers


A trigger in a database is a set of instructions that are automatically executed (or "triggered") 
in response to certain events on a particular table or view. 
Triggers are used to maintain data integrity, enforce business rules,
audit changes, and perform various automated tasks.

 Syntax
The syntax for creating a trigger can vary slightly between different database systems 
(like MySQL, PostgreSQL, SQL Server, etc.).
Here is a general syntax example:


CREATE TRIGGER trigger_name
{ BEFORE | AFTER } { INSERT | UPDATE | DELETE }
ON table_name
FOR EACH ROW
BEGIN
     trigger body
     SQL statements
END;


 Parameters:
 trigger_name: The name of the trigger.
 BEFORE | AFTER: Specifies whether the trigger action should be executed before or after the triggering event.
 INSERT | UPDATE | DELETE: Specifies the type of DML (Data Manipulation Language) operation that activates the trigger.
 table_name: The name of the table on which the trigger is defined.
 FOR EACH ROW: Specifies that the trigger will be executed once for each row affected by the triggering event.
 BEGIN ... END;: The trigger body where SQL statements are written.

 Use Cases
1. Maintaining Data Integrity: Ensuring that related data across different tables remains consistent.
2. Enforcing Business Rules: Automatically applying business logic to data modifications.
3. Auditing Changes: Keeping a history of data modifications for auditing purposes.
4. Automating Tasks: Performing automatic calculations or updates in response to data changes.
*/

# 1.BEFORE UPDATE ON  EXAMPLE


CREATE TRIGGER before_employee_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employees_log (employee_id, old_salary, new_salary, change_date)
    VALUES (OLD.id, OLD.salary, NEW.salary, NOW());
END;



# 2. AFTER UPDATE ON

CREATE TRIGGER after_order_update
AFTER UPDATE ON orders
FOR EACH ROW
BEGIN
    INSERT INTO orders_log (order_id, old_status, new_status, change_date)
    VALUES (OLD.order_id, OLD.status, NEW.status, NOW());
END;





# 3.BEFORE DELETE ON


CREATE TRIGGER before_product_delete
BEFORE DELETE ON products
FOR EACH ROW
BEGIN
    INSERT INTO products_log (product_id, product_name, deletion_date)
    VALUES (OLD.product_id, OLD.product_name, NOW());
END;



