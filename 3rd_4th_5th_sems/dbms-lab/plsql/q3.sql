-- Q3. Write a pl/sql block for the following:
-- Update the salary of each employee from EMP table by 15% using cursor.
DROP TABLE employee;
CREATE TABLE employee (employee_id INTEGER PRIMARY KEY, employee_name VARCHAR(20), salary NUMBER(10,2));
INSERT INTO employee (employee_id, employee_name, salary) VALUES (1, 'Souparno', 500000);
INSERT INTO employee (employee_id, employee_name, salary) VALUES (2, 'Anjishnu', 40000);
INSERT INTO employee (employee_id, employee_name, salary) VALUES (3, 'Anindya', 200000);
INSERT INTO employee (employee_id, employee_name, salary) VALUES (4, 'Arijit', 70000);
INSERT INTO employee (employee_id, employee_name, salary) VALUES (5, 'Kinjal', 30000);
INSERT INTO employee (employee_id, employee_name, salary) VALUES (6, 'Koustav', 30000);
INSERT INTO employee (employee_id, employee_name, salary) VALUES (7, 'Kishan', 30000);
INSERT INTO employee (employee_id, employee_name, salary) VALUES (8, 'Birbal', 30000);
INSERT INTO employee (employee_id, employee_name, salary) VALUES (9, 'Harshit', 30000);
INSERT INTO employee (employee_id, employee_name, salary) VALUES (10, 'Kushal', 30000);

SELECT * FROM employee;

-- Using implicit cursor (SQL)
DECLARE
total_rows NUMBER(2);
BEGIN
    UPDATE employee
    SET salary = 1.15*salary;
    IF SQL%NOTFOUND THEN
        dbms_output.put_line('No employees selected');
    ELSIF SQL%FOUND THEN
        total_rows:=SQL%ROWCOUNT;
        dbms_output.put_line( total_rows || ' employees updated!');
    END IF;
END;
/

SELECT * FROM employee;
