-- STORED PROCEDURES

CREATE PROCEDURE large_salaries()
SELECT * 
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();


-- PROCEDURE

DELIMITER $$
CREATE PROCEDURE large_salaries4()
BEGIN
	SELECT * 
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT * 
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries3();


-- STORED PROCEDURE WITH INPUT PARAMETERE

DELIMITER $$
CREATE PROCEDURE large_sal(p_emp_id INT)
BEGIN
	SELECT salary 
	FROM employee_salary
    WHERE employee_id = p_emp_id;
END $$
DELIMITER ;

CALL large_sal(1);