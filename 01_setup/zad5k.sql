\c firma;

-- 5k) Zlicz i pogrupuj pracowników według pola 'stanowisko'
SELECT 
    pen.stanowisko,
    COUNT(*) AS liczba_pracownikow
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
GROUP BY pen.stanowisko
ORDER BY liczba_pracownikow DESC;
