-- The LIMIT clause is widely used by many RDBMS such as MySQL, H2, and HSQLDB.
-- However, the LIMIT clause is not a SQL standard.
select * from film order by film_id limit 6;

-- offset 5 means first 5 are skipped.
select * from film order by film_id limit 10 offset 5;

-- fetch is similar to limit. But it is SQL standard

-- OFFSET row_to_skip { ROW | ROWS }
-- FETCH { FIRST | NEXT } [ row_count ] { ROW | ROWS } ONLY
select film_id, title from film order by title fetch first row only;
select film_id, title from film order by title offset 2 row fetch first 5 row only;