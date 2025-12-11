-- LIMIT

SELECT * 
FROM  employee_demographics
ORDER BY age desc
LIMIT 3;

-- ALIAS

SELECT gender, avg(age) as avg_age
FROM employee_demographics
GROUP BY  gender
HAVING avg_age > 40; 