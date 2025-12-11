-- TRIGGERS AND EVENTS 

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics(employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary,
dept_id) values(13, 'Mayuri','Lohote','Entertainment',1000000, null);

select * from employee_salary;

SELECT * FROM employee_demographics;


-- events

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE 
    FROM employee_demographics
    WHERE age > 60;
END $$
DELIMITER ;
	
SELECT * FROM employee_demographics;

SET GLOBAL event_scheduler = ON;

SHOW PROCESSLIST;

