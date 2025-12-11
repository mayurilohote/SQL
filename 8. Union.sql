-- UNION

SELECT age, gender 
FROM employee_demographics 
UNION  
SELECT first_name, last_name
FROM employee_salary;


-- UNION ALL
SELECT age, gender 
FROM employee_demographics 
UNION ALL  
SELECT first_name, last_name
FROM employee_salary;


-- UNION
SELECT first_name, last_name, 'Old Man' as Label
FROM  employee_demographics
WHERE  age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' as Label
FROM  employee_demographics
WHERE  age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Salary' as Label
FROM  employee_salary
WHERE  salary > 75000 
ORDER BY first_name, last_name;