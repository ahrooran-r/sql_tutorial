-- postgres processing order
-- from -> where -> select -> order by

-- If you use column aliases in the SELECT clause, you cannot use them in the WHERE clause.

select * from customer where first_name = 'Jamie';

-- and
select * from customer where first_name = 'Jamie' and last_name = 'Rice';

-- or
select * from customer where first_name = 'Adam' or last_name = 'Rodriguez';

-- in
select first_name, last_name from customer where first_name in ('Ann', 'Anne', 'Annie');

-- like -> the % is called a wildcard that matches any string.
select first_name, last_name from customer where first_name like 'Ann%';

-- not equal
select first_name, last_name from customer where first_name like 'Bra%' and last_name <> 'Motley';

-- a boolean value can have one of three values: true, false, and null.

-- true, 't', 'true', 'y', 'yes', '1' to represent true and
-- false, 'f', 'false', 'n', 'no', and '0' to represent false.

select title, length, rental_rate from film where length > 180 and rental_rate < 1;

select title, rental_rate from film where rental_rate = 0.99 or rental_rate = 2.99;

-- `in` operator
-- payment_date column has the type `timestamp` that consists of both date and time parts
-- To match the values in the payment_date column with a list of dates, you need to cast them to date values that have the date part only.
select payment_id, amount, payment_date from payment where payment_date::date in ('2007-02-15', '2007-02-16');

-- `between` operator
-- `value BETWEEN low AND high` -> value >= low AND value <= high
-- `value NOT BETWEEN low AND high` -> value < low OR value > high
select payment_id, amount from payment where payment_id between 17503 and 17505 order by payment_id;

-- to check a value against a date range, use the literal date in ISO 8601 format, which is YYYY-MM-DD.
select payment_id, amount, payment_date from payment where payment_date::date between '2007-02-15' and '2007-02-20' and amount > 10 order by payment_date;

-- `like` operator -> 2 wild cards
-- 1. Percent sign ( %) matches any sequence of zero or more characters.
-- 2. Underscore sign (_)  matches any single character.
select first_name, last_name from customer where first_name like '%er%' order by first_name;    -- 58 rows
select first_name, last_name from customer where first_name like 'C_er%' order by first_name;

-- ilike -> like but case insensitive
select first_name, last_name from customer where first_name ilike '%er%' order by first_name;   -- 64 rows because of case insensitivity


