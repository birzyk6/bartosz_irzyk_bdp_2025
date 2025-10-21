\c postgres

-- 6g): Wybierz te budynki, których centroid (ST_Centroid) znajduje się 
-- powyżej drogi o nazwie RoadX

SET search_path TO postgis_lab, public;

SELECT 
    name,
    ST_Y(ST_Centroid(geometry)) AS centroid_y
FROM postgis_lab.buildings
WHERE ST_Y(ST_Centroid(geometry)) > (
    SELECT ST_Y(ST_PointN(geometry, 1))
    FROM postgis_lab.roads
    WHERE name = 'RoadX'
);

