-- Drop all the tables from schema
DO
$$
    DECLARE
        table_record RECORD;
    BEGIN
        FOR table_record IN
            SELECT tablename
            FROM pg_tables
            WHERE schemaname = 'nexus'
            LOOP
                EXECUTE 'DROP TABLE IF EXISTS nexus.' || quote_ident(table_record.tablename) || ' CASCADE';
            END LOOP;
    END
$$;

drop schema nexus cascade;

truncate table nexus.articles_categories;
truncate table nexus.users_categories;
truncate table nexus.articles cascade;
truncate table nexus.users cascade;
truncate table nexus.categories cascade;
truncate table nexus.countries cascade ;


select * from nexus.articles_categories;
select * from nexus.users_categories;
select * from nexus.articles ;
select * from nexus.users ;
select * from nexus.categories ;
select * from nexus.countries  ;