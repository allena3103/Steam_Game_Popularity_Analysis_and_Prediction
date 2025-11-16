USE steam_project;

-- new table

CREATE table steam_data_fixed
like steam_data;

insert steam_data_fixed 
select * from steam_data;

select * from steam_data_fixed;


-- remove unnecessary columns

ALTER TABLE steam_data_fixed DROP COLUMN userscore;
   

-- remove duplicate values

select * from steam_data_fixed;

SELECT game_name, COUNT(game_name) AS count
FROM steam_data_fixed
GROUP BY game_name
HAVING COUNT(game_name) > 1;   

SELECT * 
FROM steam_data_fixed
WHERE game_name IN ('RIP - Trilogy', 'Counter-Strike: Condition Zero', 'SiN Episodes: Emergence', 
'Dark Messiah of Might & Magic','Gumboy - Crazy Adventures', 'RACE - The WTCC Game', 'Call of Duty: Modern Warfare 2 (2009)');

DELETE FROM steam_data_fixed
WHERE appid IN (2540, 2545, 100, 1309, 2130, 2525, 4240, 10180);

-- standardizing data

select distinct trim((game_name))
from steam_data_fixed;

UPDATE steam_data_fixed
SET game_name = TRIM(game_name),
    developer = TRIM(developer),
    publisher = TRIM(publisher),
    owners = TRIM(owners);

UPDATE steam_data_fixed
SET developer = LOWER(developer),
    publisher = LOWER(publisher),
    game_name = LOWER(game_name);


		-- prices conversion
			
ALTER TABLE steam_data_fixed
MODIFY COLUMN price FLOAT;

ALTER TABLE steam_data_fixed
MODIFY COLUMN initialprice FLOAT;

UPDATE steam_data_fixed
SET price = price / 100.0;

UPDATE steam_data_fixed
SET initialprice = initialprice / 100.0;

		-- use the average of the range of owners for simpler analysis
        
UPDATE steam_data_fixed
SET owners = REPLACE(owners, '..', '-');
UPDATE steam_data_fixed
SET owners = REPLACE(owners, ',', '');
UPDATE steam_data_fixed
SET owners = REPLACE(owners, ' - ', '-');

UPDATE steam_data_fixed
SET owners = (CAST(SUBSTRING_INDEX(owners, '-', 1) AS UNSIGNED)
              + CAST(SUBSTRING_INDEX(owners, '-', -1) AS UNSIGNED)) / 2
WHERE owners LIKE '%-%';

ALTER TABLE steam_data_fixed MODIFY COLUMN owners INT;

-- check and fill missing values

select * 
FROM steam_data_fixed
WHERE publisher = '' 
   OR game_name = '' 
   OR developer = '' 
   OR publisher IS NULL
   OR game_name IS NULL
   OR developer IS NULL;
 
UPDATE steam_data_fixed
SET developer = NULL
WHERE TRIM(developer) = '';

UPDATE steam_data_fixed
SET publisher = NULL
WHERE TRIM(publisher) = '';

UPDATE steam_data_fixed
SET game_name = NULL
WHERE TRIM(game_name) = '';

select * from steam_data_fixed
where publisher is NULL;





