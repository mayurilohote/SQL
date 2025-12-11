-- STRING FUNCTIONS

-- LENGTH
SELECT LENGTH('skyfall');

SELECT first_name, length(first_name)
FROM employee_demographics
ORDER BY 2; 

-- UPPER LOWER
SELECT UPPER('mayuri');
SELECT LOWER('MAYURI');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- TRIM
SELECT TRIM('        sky         ');

SELECT LTRIM('     SKY    ');

SELECT RTRIM('    SKY     ');

-- SUBSTRING
SELECT SUBSTRING('MAYURILOHOTE', 2, 6) AS Name;

SELECT first_name, 
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

-- REPLACE
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

-- LOCATE
SELECT LOCATE('m','mayuri');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;

-- CONCATENATION
SELECT first_name, last_name,
CONCAT(first_name,' ',last_name)
FROM employee_demographics;

-- REVERSE
SELECT REVERSE('mayuri');

-- CONCATENATE WITH SEPARATOR
SELECT CONCAT_WS('-', 'DAY', 'MONTH', 'YEAR') AS DATE;