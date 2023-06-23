CREATE TABLE Salaries_AU (
    employeeNumber INT PRIMARY KEY,
    salary DECIMAL(10,2) NOT NULL DEFAULT 0
);

INSERT INTO Salaries_AU(employeeNumber,salary)
VALUES (1002,5000), (1056,7000), (1076,8000);

CREATE TABLE SalaryBudgets(
    total DECIMAL(15,2) NOT NULL
);

INSERT INTO SalaryBudgets(total)
	SELECT SUM(salary)  FROM Salaries_AU;

DELIMITER //
create trigger AFTER_DELETE_TRIGGER
after delete
ON SALARIES_AU for each row
begin
update SALARYBUDGETS
SET TOTAL=TOTAL-(OLD.SALARY);

END //

set SQL_SAFE_UPDATES=0;
delete FROM SALARIES_AU where employeeNumber = 1056;
delete FROM SALARIES_AU where employeeNumber = 1002;