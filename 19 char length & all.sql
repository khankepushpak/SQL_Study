SELECT CHAR_LENGTH("India") AS Result;

SELECT CONCAT("The population of India is ",140," crores.") AS Result; 

SELECT LOWER("INDIA IS MY COUNTRY") AS Result;

SELECT UPPER("India is my country") AS Result;

SELECT LEFT("United States of America", CHAR_LENGTH("United States")) AS Result; 

SELECT RIGHT("United States of America", CHAR_LENGTH("America")) AS Result;

SELECT TRIM("        Hi   S      hubham    !!!!  ") AS Result;

SELECT REPLACE("        Hi   S      hubham    !!!!  ",   "",  "") AS Result;

SELECT SUBSTRING("www.twitter.com", 5) AS Result;

SELECT SUBSTRING("www.twitter.com", -3) AS Result;

SELECT SUBSTRING("www.twitter.com", 5, 7) AS Result;

SELECT SUBSTRING("www.twitter.com", -11, 7) AS Result;

SELECT SUBSTRING_INDEX("www.twitter.com"," ",-2) AS Result;