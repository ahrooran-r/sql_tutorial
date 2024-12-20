-- querying multiple columns
select customer_id, first_name, last_name, email, address_id, activebool, active from customer order by customer_id;

-- using the asterisk (*) in the SELECT statement is considered a bad practice
-- 1. Database performance
-- 2. N/W Traffic
-- If table is created without schema, it is created under `public` schema
select * from public.customer;