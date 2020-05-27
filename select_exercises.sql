USE codeup_test_db;

select 'The name of all albums by Pink Floyd.' AS 'Exercise 1';

select * from albums where artist = 'Pink Floyd';

select release_date from albums where album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre from aLbums where album_name = 'Nevermind';

select * from albums where release_date BETWEEN 1990 AND 1999;

select * from albums where sales BETWEEN 0 AND 20.000;

-- //fer's way' gets same result with less data
-- SELECT `name` FROM albums
-- WHERE sales < 20;

select * from albums where genre = 'Rock';

select album_name, genre FROM albums where genre = 'Rock';


