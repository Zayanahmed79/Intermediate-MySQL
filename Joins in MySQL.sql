SELECT *
FROM parks_and_recreation.employee_demographics
;

SELECT *
FROM parks_and_recreation.employee_salary
;

SELECT dem.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics as dem
JOIN parks_and_recreation.employee_salary as sal
ON dem.employee_id = sal.employee_id
;

-- OUTER JOIN 

SELECT *
FROM parks_and_recreation.employee_demographics as dem
RIGHT JOIN parks_and_recreation.employee_salary as sal
ON dem.employee_id = sal.employee_id
;

-- SELF JOINS 

SELECT *
FROM parks_and_recreation.employee_salary as emp1
JOIN parks_and_recreation.employee_salary as emp2
ON emp1.employee_id + 3 = emp2.employee_id
;


SELECT emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_santa_2,
emp2.first_name as first_name_santa_2,
emp2.last_name as last_name_santa_2
FROM parks_and_recreation.employee_salary as emp1
JOIN parks_and_recreation.employee_salary as emp2
ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining Multiple tables together 

SELECT *
FROM parks_and_recreation.employee_demographics as dem
JOIN parks_and_recreation.employee_salary as sal
ON dem.employee_id = sal.employee_id
JOIN parks_departments as pd
ON sal.dept_id  = pd.department_id 
;

SELECT *
FROM parks_and_recreation.parks_departments





