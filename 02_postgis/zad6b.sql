\c postgres

-- Task 6b: Wypisz geometrię (WKT), pole powierzchni oraz obwód poligonu 
-- reprezentującego budynek o nazwie BuildingA

SET search_path TO postgis_lab, public;

SELECT 
    name,
    ST_AsText(geometry) AS wkt_geometry,
    ST_Area(geometry) AS surface_area,
    ST_Perimeter(geometry) AS perimeter
FROM postgis_lab.buildings
WHERE name = 'BuildingA';

