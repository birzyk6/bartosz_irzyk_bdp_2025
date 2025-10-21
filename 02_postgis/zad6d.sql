\c postgres

-- 6d): Wypisz nazwy i obwody 2 budynków o największej powierzchni

SET search_path TO postgis_lab, public;

SELECT 
    name,
    ST_Perimeter(geometry) AS perimeter
FROM postgis_lab.buildings
ORDER BY ST_Area(geometry) DESC
LIMIT 2;

