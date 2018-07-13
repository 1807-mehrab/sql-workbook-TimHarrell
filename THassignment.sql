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
SELECT * FROM Invoice WHERE INVOICEID BETWEEN 15 AND 50;
SELECT * FROM Employee WHERE HIREDATE BETWEEN '01-JUN-2003' AND '01-MAR-2004';

--2.7 DELETE -- is there an issue without deleting the children. there is only 1 row deleted
ALTER TABLE Invoice
    DROP CONSTRAINT FK_InvoiceCustomerId;
ALTER TABLE Invoice 
    ADD CONSTRAINT FK_InvoiceCustomerId
    FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerId)
    ON DELETE CASCADE; 

ALTER TABLE InvoiceLine 
    DROP CONSTRAINT FK_INVOICELINEINVOICEID;
ALTER TABLE InvoiceLine 
    ADD CONSTRAINT FK_InvoiceLineInvoiceId
    FOREIGN KEY (InvoiceId) REFERENCES Invoice (InvoiceId)
    ON DELETE CASCADE;
    
DELETE FROM Customer WHERE FirstName='Robert' AND LastName='Walter';



--3.1 functions and system
CREATE OR REPLACE FUNCTION curr_time
    RETURN NUMBER AS Z NUMBER;
BEGIN
    Z:= 1;
    RETURN Z;
END;
/

DECLARE
    X NUMBER;
BEGIN
    X:= curr_time;
    DBMS_OUTPUT.PUT_LINE('num= ' || X);
END;
/

exit;