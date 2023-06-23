CREATE TABLE EMP(
EMP_ID INT PRIMARY KEY,
NAME VARCHAR(100),
AGE int
);
 
 INSERT INTO EMP 
 VALUE(1,"A",25),
	  (2,"B",30),
      (3,"C",34),
      (4,"D",26),
      (5,"E",29);
      
      
CREATE TABLE DEPT(
DEPT_ID INT PRIMARY KEY,
DEPT_NAME VARCHAR(100),
EID INT,
FOREIGN KEY(EID) references EMP(EMP_ID)
ON delete cascade
on update cascade
);

insert INTO DEPT
VALUE(101,"HR",4),(102,"MARKETING",1),(103,"FAINANCE",3);

update emp
SET EMP_ID=3000
WHERE EMP_ID=3;

select* FROM emp;
SELECT* FROM DEPT;

delete FROM emp WHERE EMP