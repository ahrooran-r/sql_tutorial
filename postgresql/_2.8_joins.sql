create table basket_a (a int primary key, fruit_a varchar (100) not null);

create table basket_b (b int primary key, fruit_b varchar (100) not null);

insert into basket_a (a, fruit_a) values (1, 'Apple'), (2, 'Orange'), (3, 'Banana'), (4, 'Cucumber');

insert into basket_b (b, fruit_b) values (1, 'Orange'), (2, 'Apple'), (3, 'Watermelon'), (4, 'Pear');

-- inner join
select * from basket_a inner join basket_b on fruit_a = fruit_b;
-- The inner join examines each row in the first table (basket_a).
-- It compares the value in the fruit_a column with the value in the fruit_b column of each row in the second table (basket_b).
-- If these values are equal, the inner join creates a new row that contains columns from both tables and adds this new row to the result set.

-- left join
select * from basket_a left join basket_b on fruit_a = fruit_b;
-- The left join starts selecting data from the left table. It compares values in the fruit_a column with the values in the fruit_b column in the basket_b table.
-- If these values are equal, the left join creates a new row that contains columns of both tables and adds this new row to the result set. (see the row #1 and #2 in the result set).
-- In case the values do not equal, the left join also creates a new row that contains columns from both tables and adds it to the result set. However, it fills the columns of the right table (basket_b) with null. (see the row #3 and #4 in the result set).

-- * To select rows from the left table that do not have matching rows in the right table,
--   you use the left join with a WHERE clause.
select a, fruit_a, b, fruit_b from basket_a left join basket_b on fruit_a = fruit_b where b is null;
-- Can come to interview -> Get only rows that are not matching with table b
-- LEFT JOIN is the same as the LEFT OUTER JOIN. you can use them interchangeably.

-- right join -> reversed version of the left join
select a, fruit_a, b, fruit_b from basket_a right join basket_b on fruit_a = fruit_b;
-- The right join starts selecting data from the right table. It compares each value in the fruit_b column of every row in the right table with each value in the fruit_a column of every row in the fruit_a table.
-- If these values are equal, the right join creates a new row that contains columns from both tables.
-- In case these values are not equal, the right join also creates a new row that contains columns from both tables. However, it fills the columns in the left table with NULL.


-- * To select rows from the right table that do not have matching rows in the left table,
--   you use the right join with a WHERE clause.
select a, fruit_a, b, fruit_b from basket_a right join basket_b on fruit_a = fruit_b where a is null;
-- Can come to interview -> Get only rows that are not matching with table a
-- RIGHT JOIN is the same as the RIGHT OUTER JOIN. you can use them interchangeably.

-- The full outer join or full join returns a result set that contains all rows from both left and right tables,
-- with the matching rows from both sides if available. In case there is no match, the columns of the table will be filled with NULL.
select a, fruit_a, b, fruit_b from basket_a full outer join basket_b on fruit_a = fruit_b;

-- To return rows in a table that do not have matching rows in the other, you use the full join with a WHERE clause like this:
select a, fruit_a, b, fruit_b from basket_a full join basket_b on fruit_a = fruit_b where a is null or b is null;