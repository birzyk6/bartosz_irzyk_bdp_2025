\c firma;

-- 5b) Wyświetl id pracowników, których płaca jest większa niż 1000
SELECT DISTINCT p.id_pracownika
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
WHERE pen.kwota > 1000;
