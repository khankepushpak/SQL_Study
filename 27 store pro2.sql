create table EMPLOY(
  EMP_ID INT primary KEY,
  NAME varchar(100)NOT null,
  AGE INT CHECK(AGE<20)
  );
  
  DELIMITER //
  create procedure ABC (IN P_EMP_ID INT,IN P_NAME VARCHAR(100),IN p_AGE INT)
  BEGIN
  
  DECLARE EXIT HANDLER FOR 1062 SELECT " DON'T INSERT DUPLICATE VALUE IN EMP_ID." AS MESSAGE;
  DECLARE EXIT HANDLER FOR 1048 SELECT " DON'T INSERT NULL VALUE IN EMP_ID OR NAME." AS MESSAGE;
  DECLARE EXIT HANDLER FOR 3819 SELECT " ENTER THE AGE VALUE IS MORE THAN 20." AS MESSAGE;
  
  INSERT INTO EMPLOY
  VALUE(P_EMP_ID,P_NAME,P_AGE);
  SELECT*FROM EMPLOY;
  
  
  END //
  
CALL ABC(1,"A",25);
CALL ABC(2,"B",15);