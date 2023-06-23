select CUSTOMERNUMBER, CUSTOMERNAME FROM customers
WHERE CUSTOMERNUMBER NOT IN (SELECT CUSTOMERNUMBER FROM ORDERS);

select ORDERNUMBER, QUANTITYORDERED FROM orderdetails
WHERE quantityOrdered=(SELECT MAX(QUANTITYORDERED) FROM ORDERDETAILS);

select ORDERNUMBER, QUANTITYORDERED FROM orderdetails
WHERE quantityOrdered>(SELECT AVG(QUANTITYORDERED) FROM ORDERDETAILS);

select ORDERNUMBER, QUANTITYORDERED FROM orderdetails
WHERE quantityOrdered<(SELECT AVG(QUANTITYORDERED) FROM ORDERDETAILS);
------------------------------------------------------------------------



select sum(ITEMS),AVG(ITEMS),MAX(ITEMS),MIN(ITEMS)
FROM( 
	select ORDERNUMBER, count(ORDERNUMBER)AS ITEMS
	FROM orderdetails
	group by orderNumber) AS XYZ;


select customerNumber,MAX(TOTAL)
FROM(select CUSTOMERNUMBER, CUSTOMERNAME, COUNT(ORDERNUMBER) AS TOTAL
	from customers inner join orders
    using( CUSTOMERNUMBER)
    group by customerNumber)AS PUSHPAK_KHANKE;