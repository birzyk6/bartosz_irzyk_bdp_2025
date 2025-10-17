\c firma;

-- 5c) Wyświetl id pracowników nieposiadających premii, których płaca jest większa niż 2000
SELECT DISTINCT p.id_pracownika
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
WHERE pen.kwota > 2000
  AND w.id_premii IS NULL;
