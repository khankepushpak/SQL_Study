SELECT ORDERNUMBER, SUM(QUANTITYORDERED)AS TOTAL_QTY
FROM orderdetails
group by orderNumber
HAVING TOTAL_QTY>600
order by TOTAL_QTY DESC;

SELECT ORDERNUMBER, SUM(QUANTITYORDERED)AS TOTAL_QTY
FROM orderdetails
group by orderNumber
HAVING TOTAL_QTY between 50 AND 100
order by TOTAL_QTY DESC;

SELECT ORDERNUMBER, SUM(QUANTITYORDERED)AS TOTAL_QTY
FROM orderdetails
group by orderNumber
order by TOTAL_QTY DESC
LIMIT 10;

SELECT ORDERNUMBER, SUM(QUANTITYORDERED)AS TOTAL_QTY
FROM orderdetails
group by orderNumber
order by TOTAL_QTY
LIMIT 2,2;