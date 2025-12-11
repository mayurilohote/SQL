-- JOIN

SELECT * 
FROM  employee_demographics;

SELECT * 
FROM  employee_salary;

-- INNER JOINS
SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

-- OUTER JOIN


SELECT * 
FROM employee_demographics AS dem 
LEFT OUTER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

SELECT * 
FROM employee_demographics AS dem 
RIGHT OUTER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

 -- SELF JOIN
 
 SELECT emp1.employee_id,
 emp1.first_name,
 emp1.last_name,
 emp2.employee_id,
 emp2.first_name,
 emp2.last_name
 FROM employee_salary AS emp1
 JOIN employee_salary AS emp2
 ON emp1.employee_id + 1 = emp2.employee_id;
 
 
 -- JOINING MULTIPLE TABLES TOGETHER
 
 SELECT * 
 FROM  employee_demographics AS dem
 INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id;
