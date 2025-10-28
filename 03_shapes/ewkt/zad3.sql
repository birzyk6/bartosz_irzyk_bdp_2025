\c postgres

-- 3): Zamień obiekt4 na poligon. Jaki warunek musi być spełniony, aby można było wykonać to zadanie? 
-- Zapewnij te warunki.

SET search_path TO shapes_lab, public;

-- Warunek: Polygon musi być zamknięty (pierwszy punkt = ostatni punkt)
-- oraz nie może przecinać się w środku

UPDATE shapes_lab.obiekty
SET geometry = ST_GeomFromText(
    'POLYGON((20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5, 20 20))',
    0
)
WHERE nazwa = 'obiekt4';

-- Sprawdzenie typu geometrii po konwersji
SELECT nazwa, ST_GeometryType(geometry)
FROM shapes_lab.obiekty
WHERE nazwa = 'obiekt4';
