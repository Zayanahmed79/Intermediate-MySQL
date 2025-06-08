SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;

SELECT first_name, last_name, "Old Man" as Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = "male"
UNION
SELECT first_name, last_name, "Old Lady" as Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = "female" 
UNION
SELECT first_name, last_name , "highly paid employee" 
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name,last_name
;



