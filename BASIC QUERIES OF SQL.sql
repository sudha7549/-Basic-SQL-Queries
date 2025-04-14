-------/* BASIC SQL QUERIES */------


-------- TO CREATE TABLE -----

 CREATE TABLE EMPINFO( 
  First_name VARCHAR(20),
  Last_name VARCHAR(20),
  EMP_ID INT PRIMARY KEY,
  AGE INT,
  CITY VARCHAR(20),
  STATE VARCHAR(20)
);

SELECT * FROM EMPINFO;

----TO PUT VALUES IN TABLE-----

INSERT INTO EMPINFO( first_name, last_name, emp_id, age, city, state ) VALUES
     ('John','jones', 99980, 45, 'Payson', 'Arizona'),
	 ('Mary', 'Jones', 99982, 25, 'Payson', 'Arizona'),
	 ( 'Eric', 'Edwards', 88232, 32, 'San diego', 'California'),
	 ( 'Mary Ann', 'Edwards', 88233, 32, 'Phonix', 'Arizona' ), 
	 ( 'Ginger', 'Howell', 98002, 42, 'Cottonwood', 'Arizona'),
	 ( 'Sebastin', 'Smith', 92001, 23, 'Gila Bend', 'Arizona' ),
	 ('Gus', 'Gray', 22322, 35, 'Bagdad', 'Arizona'),
	 ( 'Mary Ann', 'May', 32326, 52, 'Tucon', 'Arizona'),
	 ( 'Erica', 'William', 32327, 60, 'Show', 'Low Arizona'),
	 ( 'Leoroy', 'Brown', 32380, 22, 'Pinetop', 'Arizona'),
	 ('Elroy', 'Cleaver', 32382, 22, 'Globe', 'Arizona');

-- 1. SELECT ALL THE FIRST_NAME, LAST_NAME & CITY FROM THE TABLE  WHOSE NAME STARTS WITH "Er".

SELECT first_name,last_name, city from EMPINFO
 WHERE first_name LIKE 'Er%';


-- 2. SELECT ALL THE FIRST_NAME, LAST_NAME & CITY FROM THE TABLE  WHOSE NAME STARTS WITH "s".

 SELECT first_name,last_name, city from EMPINFO
 WHERE last_name LIKE '%s';

-- 3. SELECT ALL THE DETAILS FROM THE TABLE WHOSE FIRST_NAME EQUALS "Eric" exactly.

SELECT * FROM EMPINFO
 WHERE first_name='Eric';

 -- 4. DISPLAY THE FIRST_NAME AND AGE FOR EVERYONE THAT IS IN THE TABLE.
 
 SELECT first_name, age FROM EMPINFO;

  
 -- 5. DISPLAY THE FIRST_NAME, LAST_NAME  AND CITY  FOR EVERYONE THAT IS NOT FROM 'PAYSON'.

 SELECT first_name, last_name, city FROM EMPINFO 
  WHERE NOT City='Payson';


-- 6. DISPLAY ALL COLUMNS FOR EVRYONE THAT IS OVER 40 YEARS OLD.

SELECT * FROM EMPINFO
WHERE Age>40;


-- 7. DISPLAY ALL THE FIRST_NAME & LAST_NAME  FOR EVERYONE WHOSE LAST_NAME ENDS IN 'AN' & 'AY'.
 SELECT first_name, last_name FROM EMPINFO
  WHERE last_name LIKE '%ay';


-- 8. DISPLAY ALL COLUMNS FOR EVERYONE WHOSE FIRST_NAME EQUALS "Mary".

SELECT * FROM EMPINFO
WHERE first_name='Mary';

-- 9. DISPLAY ALL THE COLUMNS FOR EVERYONE WHOSE FIRST_NAME CONTAINS "Mar".

 SELECT * FROM EMPINFO
  WHERE First_name  like 'Mar%';

-- 10. SELECT FIRST_NAME, LAST_NAME & AGE FROM THE TABLE WHOSE LAST_NAME CONTAINS "illiam".

 SELECT * FROM EMPINFO
 WHERE last_name LIKE '%illiam';

-- 11. SELECT FIRST_NAME, LAST_NAME, CITY & STATE  WHOSE FIRST_NAME STARTS WITH "J".

  SELECT first_name, last_name, city, state FROM EMPINFO
     WHERE First_name LIKE 'J%';

-- 12. DISPLAY THE LAST_NAME AND CITY OF EMPLOYEES WHOSE BELONGS TO "ARIZONA" NAD WHOSE AGE IS GREATER THAN 25.

  SELECT last_name, city FROM EMPINFO
    WHERE state = 'Arizona' AND age>25;


-- 13. DISPALY THE DETAILS OF EMPLOYEES WITH ID 32382, 32326 AND 99980.

SELECT * FROM EMPINFO
WHERE EMP_ID IN (32382, 32326, 99980);


-- 14. COUNT THE NUMBER OF EMPLOYEES WHO WORK IN "TUCON" AND "PAYSON".

	SELECT CITY, COUNT (*)AS Employee_Count FROM EMPINFO 
	 WHERE City IN ( 'Tucon' , 'Payson' )  GROUP BY CITY;


-- 15. DISPLAY THE FIRST_NAME AND LAST_NAME IN A SINGLE COLUMN.

SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS FULL_NAME
 FROM EMPINFO;



/* 16. DISPLAY THE RECORDS LIKE : Hello JOHN " WELCOME TO PAYSON CITY " WHRE NAME AND CITY HAS TO BE FETCH FROM TABLE
   FOR ALL THE EMPLOYEE */

	SELECT 
    'Hello ' || first_name || ' WELCOME TO ' || city || ' CITY' AS message
FROM EMPINFO;

-- 17.  DISPLAY THE DETAILS OF EMPLOYEES WHERE FIRST_NAME AND LAST_NAME STARTS WITH THE SAME CHARCTERS.
  SELECT * FROM EMPINFO 
  WHERE SUBSTR(first_name,1,1) = SUBSTR(last_name,1,1);


        
       -----------THANKYOU FOR READING----------
 




