\c postgres

-- 6f): Wypisz pole powierzchni tej części budynku BuildingC, która znajduje się 
-- w odległości większej niż 0.5 od budynku BuildingB

SET search_path TO postgis_lab, public;

SELECT ST_Area(
    ST_Difference(
        (SELECT geometry FROM postgis_lab.buildings WHERE name = 'BuildingC'),
        ST_Buffer((SELECT geometry FROM postgis_lab.buildings WHERE name = 'BuildingB'), 0.5)
    )
) AS area_beyond_buffer;

