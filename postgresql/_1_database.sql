-- https://neon.tech/postgresql/postgresql-getting-started/install-postgresql-linux
-- Install PG on Linux first


-- create new databases
create database dvdrental;

-- show databases
-- \l
select * from pg_database;

-- dropping databases
drop database dvdrental;

-- show which database i'm in right now
select current_database();

-- change user password
alter user postgres with password 'postgres';

-- schema related commands
create schema tutorial;

drop schema tutorial;