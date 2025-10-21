\c postgres

-- Task 6e: Wyznacz najkrótszą odległość między budynkiem BuildingC a punktem K

SET search_path TO postgis_lab, public;

SELECT ST_Distance(
    (SELECT geometry FROM postgis_lab.buildings WHERE name = 'BuildingC'),
    (SELECT geometry FROM postgis_lab.poi WHERE name = 'K')
) AS distance;

