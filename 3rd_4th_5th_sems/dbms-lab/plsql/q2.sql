-- Q2. Write a pl/sql block for the following:
-- Update the balance of each customer from a cust_acct table showing withdrawal of Rs.1000/-
-- as service charge provided that the customer balance shows at least Rs.1000/-.

DROP TABLE customer_account;
CREATE TABLE customer_account(customer_id INTEGER PRIMARY KEY, balance NUMBER(10,2));
INSERT INTO customer_account(customer_id,balance) VALUES (1,100);
INSERT INTO customer_account(customer_id,balance) VALUES (2,20000);
INSERT INTO customer_account(customer_id,balance) VALUES (3,700);
INSERT INTO customer_account(customer_id,balance) VALUES (4,3000);
INSERT INTO customer_account(customer_id,balance) VALUES (5,1000);
INSERT INTO customer_account(customer_id,balance) VALUES (6,1700);
INSERT INTO customer_account(customer_id,balance) VALUES (7,23000);
INSERT INTO customer_account(customer_id,balance) VALUES (8,100);

SELECT * FROM customer_account;

BEGIN
    UPDATE customer_account
    SET balance = balance-1000
    WHERE balance >= 1000;
    dbms_output.put_line('Performing transaction!');
END;
/

SELECT * FROM customer_account;
