-- Window Function

SELECT gender , avg(salary) as AVG_salary
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
;

SELECT dem.first_name ,
 dem.last_name ,
 gender ,
 avg(salary) OVER(partition by gender)
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;

SELECT dem.first_name ,
 dem.last_name ,
 gender ,
 salary,
 SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;


SELECT dem.first_name ,
 dem.last_name ,
 gender ,
 salary,
 row_number() over(partition by gender ORDER BY salary desc) as ROW_NUM
--  SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;


SELECT dem.first_name ,
 dem.last_name ,
 gender ,
 salary,
 row_number() over(partition by gender ORDER BY salary desc) as ROW_NUM,
 Rank() over(partition by gender ORDER BY salary desc) as Rank_num
--  SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;

SELECT dem.first_name ,
 dem.last_name ,
 gender ,
 salary,
 row_number() over(partition by gender ORDER BY salary desc) as ROW_NUM,
 Rank() over(partition by gender ORDER BY salary desc) as Rank_num,
 dense_rank() over(partition by gender ORDER BY salary desc) as Dense_Rank_num
--  SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;

