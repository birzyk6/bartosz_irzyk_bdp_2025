\c postgres

-- 5): Wyznacz pole powierzchni wszystkich buforów o wielkości 5 jednostek, które zostały utworzone 
-- wokół obiektów nie zawierających łuków.

SET search_path TO shapes_lab, public;

-- Wykluczamy obiekty typu CurvePolygon, CompoundCurve i CircularString
SELECT SUM(ST_Area(ST_Buffer(geometry, 5))) AS total_buffer_area
FROM shapes_lab.obiekty
WHERE ST_GeometryType(geometry) NOT IN ('ST_CurvePolygon', 'ST_CompoundCurve', 'ST_CircularString');
