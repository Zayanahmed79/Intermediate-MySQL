-- Subquires 
SELECT *
FROM employee_demographics
WHERE employee_id IN 
					(
					 SELECT employee_id
						FROM employee_salary
                        WHERE dept_id = 1
                      )
;

SELECT *
FROM employee_salary
;

SELECT first_name, last_name , salary,
(
SELECT avg(salary)
From employee_salary
) As Average_Salary
FROM employee_salary
;

SELECT gender , avg(age), min(age), max(age) , count(age)
FROM employee_demographics
GROUP BY gender
;

SELECT  avg(max_age)
FROM
(SELECT gender,
avg(age) as avg_age,
min(age) as min_age,
max(age) as max_age,
count(age) as count_age
FROM employee_demographics
GROUP BY gender) as Agg_table 
;














