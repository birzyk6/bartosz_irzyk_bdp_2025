\c firma;

-- 5e) Wyświetl pracowników, których nazwisko zawiera literę 'n' oraz imię kończy się na literę 'a'
SELECT *
FROM ksiegowosc.pracownicy
WHERE nazwisko LIKE '%n%'
  AND imie LIKE '%a';
