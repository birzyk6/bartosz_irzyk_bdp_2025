\c firma;

-- 5n) Policz sumę wynagrodzeń w ramach danego stanowiska
SELECT 
    pen.stanowisko,
    SUM(pen.kwota + COALESCE(pr.kwota, 0)) AS suma_wynagrodzen
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
GROUP BY pen.stanowisko
ORDER BY suma_wynagrodzen DESC;
