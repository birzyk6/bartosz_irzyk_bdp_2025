\c postgres

-- 6c): Wypisz nazwy i pola powierzchni wszystkich poligonów w warstwie budynki
-- Wyniki posortuj alfabetycznie

SET search_path TO postgis_lab, public;

SELECT 
    name,
    ST_Area(geometry) AS surface_area
FROM postgis_lab.buildings
ORDER BY name ASC;

