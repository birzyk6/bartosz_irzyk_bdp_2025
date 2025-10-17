\c firma;

-- 5f) Wyświetl imię i nazwisko pracowników oraz liczbę ich nadgodzin,
-- przyjmując, iż standardowy czas pracy to 160 h miesięcznie
SELECT 
    p.imie,
    p.nazwisko,
    g.liczba_godzin - 160 AS nadgodziny
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika
WHERE g.liczba_godzin > 160;
