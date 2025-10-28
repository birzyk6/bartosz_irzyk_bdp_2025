\c postgres

-- 2): Wyznacz pole powierzchni bufora o wielkości 5 jednostek, który został utworzony wokół 
-- najkrótszej linii łączącej obiekt 3 i 4.

SET search_path TO shapes_lab, public;

WITH shortest_line AS (
    SELECT ST_ShortestLine(o3.geometry, o4.geometry) AS geom
    FROM shapes_lab.obiekty o3, shapes_lab.obiekty o4
    WHERE o3.nazwa = 'obiekt3' AND o4.nazwa = 'obiekt4'
)
SELECT ST_Area(ST_Buffer(geom, 5)) AS buffer_area
FROM shortest_line;
