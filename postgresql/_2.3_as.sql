select concat(first_name, ' ', last_name) as fullname, email from customer;

-- `as` is optional
select concat(first_name, ' ', last_name) fullname, email from customer;

-- If a column alias contains one or more spaces, you need to surround it with double quotes
select concat(first_name, ' ', last_name) "full name", email from customer;
