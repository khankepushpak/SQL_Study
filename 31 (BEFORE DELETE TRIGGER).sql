CREATE TABLE Salaries (
    employeeNumber INT PRIMARY KEY,
    validFrom DATE NOT NULL,
    amount DEC(12 , 2 ) NOT NULL DEFAULT 0
);


INSERT INTO salaries(employeeNumber,validFrom,amount)
VALUES
    (1002,'2000-01-01',50000),
    (1056,'2000-01-01',60000),
    (1076,'2000-01-01',70000);


CREATE TABLE SalaryArchives (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employeeNumber INT,
    validFrom DATE NOT NULL,
    amount DEC(12 , 2 ) NOT NULL DEFAULT 0,
    deletedAt TIMESTAMP DEFAULT NOW()
);

DELIMITER //
CREATE trigger BEFORE_DELETE_TRIGGER
before delete
ON salaries FOR each row
begin
insert INTO SALARYARCHIVES (EMPLOYEENUMBER, validFrom, AMOUNT)
values(OLD.EMPLOYEENUMBER, OLD.validFrom, OLD.AMOUNT);
END //

delete FROM SALARIES where EMPLOYEENUMBER= 1002;