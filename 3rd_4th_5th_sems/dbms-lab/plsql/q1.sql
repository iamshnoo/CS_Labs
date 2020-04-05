-- Q1. Write a pl/sql block for the following:
-- Insert data into a table containing two attributes namely radius & circumference of circles.
-- You may get different values of radius either from keyboard or you may generate different
-- values.

DROP TABLE circle;
CREATE TABLE circle(radius INTEGER,circumference NUMBER(8,2));

DECLARE
    i INTEGER;
    pi CONSTANT DOUBLE PRECISION:=3.14159;
    circumference circle.circumference%TYPE;

BEGIN
    FOR i in 10 .. 20 LOOP
	-- radius:=i;
    	circumference:=2*pi*i;
    	INSERT INTO circle (radius,circumference) VALUES (i,circumference);
    END LOOP;
END;
/

SELECT * FROM circle;
