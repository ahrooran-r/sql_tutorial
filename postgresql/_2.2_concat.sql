-- concat operator
select first_name || ' ' || last_name, email from customer;
-- both above and below are same.
select concat(first_name, ' ', last_name), email from customer;
-- `concat(...)` method handles nulls and return empty.
-- `... || ... || ..`. would return NULL instead of empty