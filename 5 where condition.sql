# WHERE

SELECT CustomerNumber, CustomerName, country FROM customers WHERE COUNTRY="UK";

SELECT CustomerNumber, CustomerName, country FROM customers WHERE COUNTRY<>"UK";

SELECT CustomerNumber, CustomerName, country FROM customers WHERE COUNTRY="UK"or country="Australia";

SELECT CustomerNumber, CustomerName, country FROM customers WHERE COUNTRY in ("UK","Australia");

SELECT CustomerNumber, CustomerName, country FROM customers WHERE COUNTRY not in ("UK","Australia");