\c firma;

-- 5m) Policz sumę wszystkich wynagrodzeń
SELECT 
    SUM(pen.kwota + COALESCE(pr.kwota, 0)) AS suma_wszystkich_wynagrodzen
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii;
