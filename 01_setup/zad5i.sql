\c firma;

-- 5i) Uszereguj pracowników według pensji
SELECT 
    p.id_pracownika,
    p.imie,
    p.nazwisko,
    pen.stanowisko,
    pen.kwota AS pensja
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
ORDER BY pen.kwota ASC;
