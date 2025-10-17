\c firma;

-- 5o) Wyznacz liczbę premii przyznanych dla pracowników danego stanowiska
SELECT 
    pen.stanowisko,
    COUNT(pr.id_premii) AS liczba_premii
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
GROUP BY pen.stanowisko
ORDER BY liczba_premii DESC;
