SELECT now() AS RESULT;
select current_timestamp() AS RESULT;
select current_date() AS RESULT;
select current_time() AS RESULT;

select DATE("2022-08-15 14:20:31") AS RESULT;
select TIME("2022-08-15 14:20:31") AS RESULT;

select year(now()) AS RESULT;
select MONTH(now()) AS RESULT;
select monthname(now()) AS RESULT;
select DAY(now()) AS RESULT;
select dayname(now()) AS RESULT;
select concat("Q", QUARTER(now())) AS RESULT;
select WEEK(now()) AS RESULT;
select WEEKDAY(now()) AS RESULT;
select HOUR(now()) AS RESULT;
select MINUTE(now()) AS RESULT;
select SECOND(now()) AS RESULT;

    