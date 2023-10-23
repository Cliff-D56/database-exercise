use codeup_test_db;

select name from albums where artist='Pink Floyd';
select release_date from albums where name like 'Sgt%';
select genre from albums where artist = 'Nevermind';
select name from albums where release_date between 1990 and 2000;
select name from albums where genre='rock';