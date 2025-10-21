\c postgres

-- 6h): Oblicz pole powierzchni tych części budynku BuildingC i poligonu o współrzędnych
-- (4 7, 6 7, 6 8, 4 8, 4 7), które nie są wspólne dla tych dwóch obiektów

SET search_path TO postgis_lab, public;

WITH test_polygon AS (
    SELECT ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))') AS geometry
),
building_c AS (
    SELECT geometry FROM postgis_lab.buildings WHERE name = 'BuildingC'
)
SELECT 
    ST_Area(ST_Difference(
        (SELECT geometry FROM building_c),
        (SELECT geometry FROM test_polygon)
    )) + 
    ST_Area(ST_Difference(
        (SELECT geometry FROM test_polygon),
        (SELECT geometry FROM building_c)
    )) AS total_non_overlapping_area;

