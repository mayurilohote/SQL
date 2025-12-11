-- GROUP BY

SELECT * 
FROM employee_demographics;

SELECT gender 
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM  employee_demographics
GROUP BY gender;


-- ORDER BY

SELECT * 
FROM employee_demographics
ORDER BY first_name asc;

SELECT * 
FROM employee_demographics
ORDER BY first_name desc;

SELECT * 
FROM  employee_demographics
ORDER BY gender, age ;

SELECT * 
FROM  employee_demographics
ORDER BY gender asc, age desc ;