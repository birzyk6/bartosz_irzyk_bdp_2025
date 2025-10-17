\c firma;

-- 5d) Wyświetl pracowników, których pierwsza litera imienia zaczyna się na literę 'J'
SELECT *
FROM ksiegowosc.pracownicy
WHERE imie LIKE 'J%';
