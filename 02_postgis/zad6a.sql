\c postgres

-- Task 6a: Wyznacz całkowitą długość dróg w analizowanym mieście

SET search_path TO postgis_lab, public;

SELECT SUM(ST_Length(geometry)) AS total_road_length
FROM postgis_lab.roads;

