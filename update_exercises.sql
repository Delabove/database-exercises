USE codeup_test_db;


SELECT 'All albums in your table' AS 'Exercise 1';
SELECT * from albums;

update albums set sales = sales * 10;

SELECT 'All albums released before 1980'
AS 'Exercise 1';
-- SELECT * from albums where release_date <= 1980;
update albums
set release_date = release_date - 100
where release_date <= 1980;


SELECT 'All albums by Michael Jackson'
AS 'Exercise 1';
select *
from albums
where artist = 'Michael Jackson';

update albums set artist = 'Peter Jackson'where artist = 'Michael Jackson';