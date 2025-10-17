\c firma;

CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(200) NOT NULL,
    telefon VARCHAR(15) NOT NULL
);

COMMENT ON TABLE ksiegowosc.pracownicy IS 'Dane osobowe pracowników firmy';

CREATE TABLE ksiegowosc.godziny (
    id_godziny SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin DECIMAL(5,2) NOT NULL CHECK (liczba_godzin >= 0),
    id_pracownika INT NOT NULL,
    FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika) ON DELETE CASCADE
);

COMMENT ON TABLE ksiegowosc.godziny IS 'Przepracowane godziny przez pracowników';

CREATE TABLE ksiegowosc.pensja (
    id_pensji SERIAL PRIMARY KEY,
    stanowisko VARCHAR(50) NOT NULL,
    kwota DECIMAL(10,2) NOT NULL CHECK (kwota >= 0)
);

COMMENT ON TABLE ksiegowosc.pensja IS 'Informacje o pensjach dla różnych stanowisk';

CREATE TABLE ksiegowosc.premia (
    id_premii SERIAL PRIMARY KEY,
    rodzaj VARCHAR(50) NOT NULL,
    kwota DECIMAL(10,2) NOT NULL CHECK (kwota >= 0)
);

COMMENT ON TABLE ksiegowosc.premia IS 'Rodzaje i kwoty premii dla pracowników';

CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT NOT NULL,
    id_godziny INT NOT NULL,
    id_pensji INT NOT NULL,
    id_premii INT,
    FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika) ON DELETE CASCADE,
    FOREIGN KEY (id_godziny) REFERENCES ksiegowosc.godziny(id_godziny) ON DELETE CASCADE,
    FOREIGN KEY (id_pensji) REFERENCES ksiegowosc.pensja(id_pensji) ON DELETE CASCADE,
    FOREIGN KEY (id_premii) REFERENCES ksiegowosc.premia(id_premii) ON DELETE CASCADE
);

COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Dane do obliczania wynagrodzenia pracowników';
