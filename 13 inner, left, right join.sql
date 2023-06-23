SELECT*from
customers C INNER join orders o
ON C.customerNumber=O. CUSTOMERNUMBER
INNER JOIN orderdetails OD
ON O.ORDERNUMBER =OD.orderNumber

group by C.customerNumber;

------INNER JOIN

SELECT

C.CUSTOMERNUMBER,
C.CUSTOMERNAME,
SUM(OD.quantityOrdered*OD.PRICEEACH)AS SALES

FROM

customers C INNER join orders o
ON C.customerNumber=O. CUSTOMERNUMBER
INNER JOIN orderdetails OD
ON O.ORDERNUMBER =OD.orderNumber

group by C.customerNumber
order by SALES desc;

-------LEFT JOIN

SELECT

C.CUSTOMERNUMBER,
C.CUSTOMERNAME,
SUM(OD.quantityOrdered*OD.PRICEEACH)AS SALES

FROM

customers C LEFT join orders o
ON C.customerNumber=O. CUSTOMERNUMBER
LEFT JOIN orderdetails OD
ON O.ORDERNUMBER =OD.orderNumber

group by C.customerNumber
order by SALES desc;


----- RIGHT JOIN

SELECT

C.CUSTOMERNUMBER,
C.CUSTOMERNAME,
SUM(OD.quantityOrdered*OD.PRICEEACH)AS SALES

FROM

customers C RIGHT join orders o
ON C.customerNumber=O. CUSTOMERNUMBER
RIGHT JOIN orderdetails OD
ON O.ORDERNUMBER =OD.orderNumber

group by C.customerNumber
order by SALES desc;



SELECT

C.CUSTOMERNUMBER,
C.CUSTOMERNAME,
SUM(OD.quantityOrdered*OD.PRICEEACH)AS SALES

FROM

customers C RIGHT join orders o
USING( CUSTOMERNUMBER )
RIGHT JOIN orderdetails OD
using (ORDERNUMBER)

group by C.customerNumber
order by SALES desc;