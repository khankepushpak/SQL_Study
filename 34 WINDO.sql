select ORDERNUMBER, SUM(QUANTITYORDERED)AS TOTAL
FROM orderdetails
group by orderNumber;

select 
distinct(orderNumber),
sum(QUANTITYORDERED) OVER(partition by orderNumber) AS TOTAL
from orderdetails;

SELECT 
    row_number() OVER() AS SR_NO,
    orderNUMBER,
    QUANTITYORDERED
    FROM orderdetails;


select
   QUANTITYORDERED,
   rank() over(order by QUANTITYORDERED DESC) AS RANKING,
   dense_rank() over(order by QUANTITYORDERED DESC) AS RANKING
from orderdetails;

select
   orderNumber,
   QUANTITYORDERED,
   rank() over(partition by orderNUMBER order by QUANTITYORDERED DESC) AS RANKING
from orderdetails;


select
ORDERNUMBER,
QUANTITYORDERED,
LAG(QUANTITYORDERED,1) OVER(PARTITION BY ORDERNUMBER)AS LAGGIN,
LEAD(QUANTITYORDERED,1) OVER(PARTITION BY ORDERNUMBER)AS LEADIN,
first_value(QUANTITYORDERED) OVER(PARTITION BY ORDERNUMBER)AS F_VALUE,
last_value(QUANTITYORDERED) OVER(PARTITION BY ORDERNUMBER)AS L_VALUE,
nth_value(QUANTITYORDERED,3) OVER(PARTITION BY ORDERNUMBER)AS N_VALUE
FROM ORDERDETAILS;



select 
    year(orderDate) AS YEAR,
    count(orderNumber)AS TOTAL_ORDERS,
    concat(ROUND( ( (count(orderNumber)-LAG(count(orderNumber),1)OVER() )/LAG(count(orderNumber),1)OVER())*100),"%")as "% groth",
    concat(ROUND(SUM(QUANTITYORDERED)/1000),"K") AS TOTAL_QTY
FROM orders
INNER join orderdetails using(ORDERNUMBER)
group by YEAR;