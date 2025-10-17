\c firma;

-- 5p) Usuń wszystkich pracowników mających pensję mniejszą niż 1200 zł
DELETE FROM ksiegowosc.pracownicy
WHERE id_pracownika IN (
    SELECT p.id_pracownika
    FROM ksiegowosc.pracownicy p
    JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
    JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
    WHERE pen.kwota < 1200
);

-- Wyświetl pozostałych pracowników
SELECT 
    p.id_pracownika,
    p.imie,
    p.nazwisko,
    pen.kwota AS pensja
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
ORDER BY pen.kwota ASC;
