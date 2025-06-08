-- String Function
SELECT LENGTH("Zayan") 
;

SELECT first_name , LENGTH(first_name)
FROM parks_and_recreation.employee_demographics 
ORDER BY 2
;


SELECT UPPER("Shafique");
SELECT LOWER("HAMDAN");

SELECT first_name, UPPER(first_name) AS Capital 
FROM parks_and_recreation.employee_demographics 
;

SELECT TRIM("          sky          ")
;
SELECT RTRIM("          sky          ")
;
SELECT LTRIM("          sky          ")
;

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 6, 2 ),
birth_date,
SUBSTRING(birth_date, 6,2) AS Birthday_Month
FROM parks_and_recreation.employee_demographics 
;

SELECT first_name , REPLACE(first_name, "a", "z")
FROM employee_demographics
;

SELECT LOCATE("x", "ALEXANDER");

SELECT first_name, LOCATE("An" , first_name)
FROM employee_demographics
;

SELECT first_name, last_name,
CONCAT(first_name, " ", last_name ) AS Full_Name
FROM employee_demographics













