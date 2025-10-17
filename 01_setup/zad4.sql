\c firma;

INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Kowalski', 'ul. Kwiatowa 15, Warszawa', '123456789'),
('Anna', 'Nowak', 'ul. Słoneczna 22, Kraków', '234567890'),
('Piotr', 'Wiśniewski', 'ul. Polna 8, Wrocław', '345678901'),
('Julia', 'Wójcik', 'ul. Lipowa 33, Poznań', '456789012'),
('Tomasz', 'Kowalczyk', 'ul. Ogrodowa 12, Gdańsk', '567890123'),
('Katarzyna', 'Lewandowska', 'ul. Leśna 45, Łódź', '678901234'),
('Michał', 'Zieliński', 'ul. Różana 7, Szczecin', '789012345'),
('Magdalena', 'Kamińska', 'ul. Parkowa 19, Lublin', '890123456'),
('Jakub', 'Szymański', 'ul. Wspólna 28, Katowice', '901234567'),
('Joanna', 'Dąbrowska', 'ul. Główna 3, Bydgoszcz', '012345678');

INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('Kierownik', 3000.00),
('Starszy Programista', 2500.00),
('Programista', 2000.00),
('Analityk', 1800.00),
('Stażysta', 900.00),
('Asystent', 1100.00),
('Tester', 1500.00),
('Kierownik Projektu', 3500.00),
('Administrator', 2200.00),
('Specjalista', 2800.00);

INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('Premia kwartalna', 500.00),
('Premia roczna', 1000.00),
('Premia za projekt', 800.00),
('Premia motywacyjna', 400.00),
('Premia uznaniowa', 600.00),
('Premia świąteczna', 1200.00),
('Premia jubileuszowa', 2000.00),
('Premia celowościowa', 450.00),
('Premia zadaniowa', 550.00),
('Premia regulaminowa', 350.00);

INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2024-01-31', 160.00, 1),  
('2024-01-31', 180.00, 2),  
('2024-01-31', 160.00, 3),  
('2024-01-31', 175.00, 4),  
('2024-01-31', 140.00, 5),  
('2024-01-31', 160.00, 6),  
('2024-01-31', 190.00, 7),  
('2024-01-31', 160.00, 8),  
('2024-01-31', 165.00, 9),  
('2024-01-31', 185.00, 10); 

INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2024-01-31', 1, 1, 1, 1),    
('2024-01-31', 2, 2, 2, NULL), 
('2024-01-31', 3, 3, 3, 3),    
('2024-01-31', 4, 4, 4, 4),    
('2024-01-31', 5, 5, 5, NULL), 
('2024-01-31', 6, 6, 6, 6),    
('2024-01-31', 7, 7, 7, NULL), 
('2024-01-31', 8, 8, 8, 8),    
('2024-01-31', 9, 9, 9, 9),    
('2024-01-31', 10, 10, 10, NULL); 
