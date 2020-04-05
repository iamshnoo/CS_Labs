-- Q5. Write a pl/sql block for the following:
-- Write a PROCEDURE for raising salary of some employee by some amount. The
-- PROCEDURE to be written may carry two parameters emp_id and amt to be raised. Include
-- two exceptions which will be raised when either emp_id is not present or salary is NULL.

INSERT INTO employee (employee_id,employee_name) VALUES (11,'Rajdeep');

SELECT * FROM employee;

CREATE OR REPLACE PROCEDURE raise_salary
(eid IN employee.employee_id%TYPE,
raise IN employee.salary%TYPE)
IS
cnt INTEGER;
sal employee.salary%TYPE;
INVALID_ID EXCEPTION;
NULL_VALUE EXCEPTION;
BEGIN
    SELECT count(*) INTO cnt FROM employee WHERE employee_id=eid;
    IF cnt=0 THEN
        RAISE INVALID_ID;
    ELSE
        SELECT salary INTO sal FROM employee WHERE employee_id=eid;
        IF sal IS NULL THEN
            RAISE NULL_VALUE;
        ELSE
            UPDATE employee SET salary = salary + raise WHERE employee_id=eid;
            dbms_output.put_line('Salary raised!');
        END IF;
    END IF;
EXCEPTION
    WHEN INVALID_ID THEN
        dbms_output.put_line('User ID does not exist!');
    WHEN NULL_VALUE THEN
        dbms_output.put_line('Salary is null in table!');
    WHEN others THEN
        dbms_output.put_line('Error!');
END;
/

EXECUTE raise_salary('1','10000');

SELECT * FROM employee;
