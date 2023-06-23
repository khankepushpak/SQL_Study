create table EMP_AT(
EMP_ID INT,
NAME varchar(100),
AGE int
);

insert INTO EMP_AT
values(1,"A",25),(12,"B",20),(3,"C",30);


alter TABLE EMP_AT
ADD COUNTRY varchar(100),ADD SATTE varchar(100);

alter TABLE EMP_AT
ADD CITY varchar(100)
alter TABLE EMP_AT
ADD ID INT;

alter TABLE EMP_AT
DROP CITY, drop SATTE;

describe emp_at;

alter TABLE EMP_AT
MODIFY Name CHAR(100);

alter TABLE EMP_AT
change ID EMP_ID;

alter TABLE EMP_AT
RENAME TO EXCELR;

rename TABLE EXCELR TO  INDIA;
