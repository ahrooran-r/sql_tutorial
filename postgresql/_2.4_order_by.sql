-- ascending by default
select first_name, last_name from customer order by first_name;

-- descending by default
select first_name, last_name from customer order by first_name desc;

-- sorts the rows by the first name in ascending order and last name in descending order
select first_name, last_name from customer order by first_name asc, last_name desc;

-- sorts the rows by the lengths of the first names
select first_name, length(first_name) len from customer order by len, length(last_name) desc;

-- handle nulls -> nulls first / nulls last
-- psql displays null as an empty string by default
select first_name, last_name from customer order by first_name nulls first;
-- slightly complex variant
select first_name, last_name from customer order by first_name desc nulls first, last_name asc nulls last ;
