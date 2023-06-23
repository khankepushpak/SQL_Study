create table STUDENTS_TCL(
ROLL_NO INT primary key,
NAME varchar(100),
AGE int
);


START transaction;

INSERT INTO STUDENTS_TCL
VALUE(1,"A",14),(2,"B",13),(3,"C",10);
savepoint TEST_INSERT;

UPDATE students_tcl
SET AGE=8
WHERE ROLL_NO=2;
savepoint TEST_UPDATE;

delete FROM students_tcl WHERE ROLL_NO=2;
savepoint TEST_DELETE;

ROLLBACK TO TEST_INSERT;

DROP table students_tcl;