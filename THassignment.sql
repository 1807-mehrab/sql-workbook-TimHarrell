/*1. Setting up
complete, but it took a very long time
*/
conn chinook/p4ssw0rd;

-- 2.1 SELECT 

SELECT * FROM Employee;
SELECT * FROM Employee WHERE lastname='King';
SELECT * FROM Employee WHERE firstname='Andrew' AND REPORTSTO IS NULL;

-- 2.2 ORDER BY 

SELECT * FROM ALBUM ORDER BY title DESC; 
SELECT firstname FROM Customer ORDER BY city ASC;

--2.3 INSERT INTO
INSERT INTO Genre (GENREID, NAME) VALUES (26, 'Symphonic Black Metal');
INSERT INTO Genre (GENREID, NAME) VALUES (27, 'Jpop');
INSERT INTO Employee (EMPLOYEEID, FIRSTNAME, LASTNAME) VALUES (9, 'George', 'Lopez');
INSERT INTO Employee (EMPLOYEEID, FIRSTNAME, LASTNAME) VALUES (10, 'Will', 'Smith');
INSERT INTO Customer (CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL) VALUES (60, 'LARS', 'ULRICH', 'lars.ulrich@metallica.com');
INSERT INTO Customer (CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL) VALUES (61, 'BRUCE', 'DICKINSON', 'bruce.dicksinson@ironmaiden.com');
--SELECT * FROM Customer;
--SELECT * FROM Employee;
--SELECT * FROM Genre;


--2.4 UPDATE
UPDATE Customer SET FIRSTNAME='Robert', LASTNAME='Walter' WHERE FIRSTNAME='Aaron' AND LASTNAME='Mitchell';
UPDATE Artist SET NAME='CCR' WHERE NAME='Creedence Clearwater Revival';
SELECT * FROM Customer WHERE FIRSTNAME='Robert' AND LASTNAME='Walter';
SELECT * FROM Artist WHERE NAME ='CCR';

--2.5 LIKE
SELECT * FROM Invoice WHERE BillingAddress LIKE 'T%';

--2.6 BETWEEN

exit;