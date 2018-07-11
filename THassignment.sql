/*1. Setting up
complete, but it took a very long time
*/


-- 2.1 SELECT 

SELECT * FROM Employee;
SELECT * FROM Employee WHERE lastname='KING';
SELECT * FROM Employee WHERE firstname='Andrew' AND REPORTSTO=NULL;

-- 2.2 ORDER BY 

SELECT * FROM ALBUM ORDER BY title; -- don't need DESC because DESC is default
SELECT firstname FROM Customer ORDER BY city ASC;

--2.3 INSERT INTO
INSERT INTO Genre (GENREID) VALUES (26)
INSERT INTO Genre (GENREID) VALUES (27)
--INSERT INTO Employee 
