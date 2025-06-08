--  Case Statement 

SELECT first_name,
last_name,
age,
CASE 
	WHEN age <= 30 THEN "Young"
	WHEN age BETWEEN 31 and 50 THEN "Old"
    WHEN age >= 50 THEN "On Death's Door"
END AS 'Young Ones'
FROM parks_and_recreation.employee_demographics
;



SELECT first_name, last_name, salary, occupation, department_name,
CASE
	WHEN salary < 50000 THEN ((salary)+5*salary/100)
    WHEN salary > 50000 THEN ((salary)+7*salary/100)
END AS "Increased Salary",
CASE
	WHEN department_id = 6 THEN (10*salary/100)
END Bonus
FROM parks_and_recreation.employee_salary as sal
JOIN parks_departments as pd
ON pd.department_id = sal.dept_id

;
SELECT *
FROM employee_salary


 
 
 
 
 
