-- Q4. Write a pl/sql block for the following:
-- Update the balance in the ITEM_MSTR table each time a transaction takes place in the
-- ITEM_TR table. If this item_id is already present in the ITEM_MSTR table an update is
-- performed to decrease the balance by the quantity specified in the ITEM_TR table.
-- If the item_id is not present in the ITEM_MSTR table, the tuple is to be inserted.

DROP TABLE item_mstr;
DROP TABLE item_tr;
CREATE TABLE item_mstr(item_id integer primary key, balance number(10,2));
CREATE TABLE item_tr(item_id integer, deduction number(10,2));
INSERT INTO item_mstr(item_id, balance) VALUES (1,3000);
INSERT INTO item_mstr(item_id, balance) VALUES (2,20000);
INSERT INTO item_mstr(item_id, balance) VALUES (3,7000);

SELECT * FROM item_mstr;

DECLARE
    id item_tr.item_id%TYPE:=&item_id;
    ded item_tr.deduction%TYPE:=&deduction;
    cnt INTEGER;
BEGIN
    SELECT count(*) INTO cnt FROM item_mstr WHERE item_id=id;
    IF cnt=0 THEN
        INSERT INTO item_mstr (item_id,balance) VALUES (id,0);
    ELSE
        UPDATE item_mstr SET balance=balance-ded;
        INSERT INTO item_tr (item_id,deduction) VALUES (id,ded);
    END IF;
END;
/

SELECT * FROM item_mstr;
