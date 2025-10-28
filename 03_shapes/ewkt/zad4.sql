\c postgres

-- 4): W tabeli obiekty, jako obiekt7 zapisz obiekt złożony z obiektu 3 i obiektu 4.

SET search_path TO shapes_lab, public;

INSERT INTO shapes_lab.obiekty (nazwa, geometry)
SELECT 'obiekt7', ST_Collect(o3.geometry, o4.geometry)
FROM shapes_lab.obiekty o3, shapes_lab.obiekty o4
WHERE o3.nazwa = 'obiekt3' AND o4.nazwa = 'obiekt4';
