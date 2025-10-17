\c firma;

-- 5l) Policz średnią, minimalną i maksymalną płacę dla stanowiska 'Kierownik'
SELECT 
    pen.stanowisko,
    AVG(pen.kwota) AS srednia_placa,
    MIN(pen.kwota) AS minimalna_placa,
    MAX(pen.kwota) AS maksymalna_placa
FROM ksiegowosc.pensja pen
WHERE pen.stanowisko = 'Kierownik'
GROUP BY pen.stanowisko;
