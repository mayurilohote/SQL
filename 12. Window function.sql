-- WINDOW FUNCTION
-- AVG() OVER

SELECT dem.first_name, dem.last_name, gender, 
AVG(salary) OVER(partition by gender)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

-- SUM() OVER

SELECT dem.first_name, dem.last_name, gender, salary,   
SUM(salary) OVER(partition by gender ORDER BY dem.employee_id) AS Rolling_total
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;


-- ROW NUMBER AND RANK AND DENSE RANK

SELECT dem.first_name, dem.last_name, gender, salary,   
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary desc) AS Row_Num,
RANK() OVER(PARTITION BY gender ORDER BY salary desc) AS Rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary desc) AS Dense_num
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;
