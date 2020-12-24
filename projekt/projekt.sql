-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Gru 2020, 05:06
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt`
--

DELIMITER $$
--
-- Procedury
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `WszyscyPracownicy` (IN `dane` CHAR(50))  SELECT imie,nazwisko FROM pracownicy AS dane$$

--
-- Funkcje
--
CREATE DEFINER=`root`@`localhost` FUNCTION `premia` (`pensja` INT, `dodatek` INT) RETURNS INT(11) BEGIN
DECLARE wynik INT;
	SET wynik=pensja+dodatek;
	RETURN wynik;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `klient_ID` int(3) NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `firma` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `miasto` char(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `telefon` char(9) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`klient_ID`, `imie`, `nazwisko`, `firma`, `miasto`, `telefon`) VALUES
(1, 'Natasza', 'Zakrzewska', 'Pol Spot', 'Warszawa', '392704380'),
(2, 'Zofia', 'Krupa', 'Pol Max', 'Gdańsk', '808072294'),
(3, 'Alicja', 'Tomaszewska', 'Yummy Shop', 'Sopot', '030544918'),
(4, 'Marcelina', 'Ziółkowska', 'Youth Food', 'Gdynia', '628909337'),
(5, 'Judyta', 'Mazurek', 'Crispy Shop', 'Olsztyn', '365262591'),
(6, 'Natasza', 'Lewandowska', 'Healthy Food', 'Elbląg', '323378869'),
(7, 'Magda', 'Krawczyk', 'Sumo Shop', 'Szczecin', '569459393'),
(8, 'Amalia', 'Brzezińska', 'Spirit Lunch', 'Koszalin', '376993153'),
(9, 'Franciszek', 'Wojciechowski', 'Flavor Place', 'Kołobrzeg', '565992779'),
(10, 'Andrzej', 'Wójcik', 'Placeable', 'Gdańsk', '453498428'),
(11, 'Ryszard', 'Kalinowski', 'Hot Cafe', 'Sopot', '315005320'),
(12, 'Przemysław', 'Zieliński', 'Cafezilla', 'Gdynia', '563053330'),
(13, 'Artur', 'Czarnecki', 'Pure Bio', 'Olsztyn', '058307249'),
(14, 'Oskar', 'Nowak', 'Bro Bio', 'Elbląg', '232733275'),
(15, 'Olgierd', 'Kowalczyk', 'Hot Lunchbox', 'Olsztynek', '419724158'),
(16, 'Zenon', 'Dzidkowski', 'Zen', 'Olsztyn', '887717441');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `pracownik_ID` int(3) NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `miasto` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `pensja` float DEFAULT NULL,
  `telefon` char(9) COLLATE utf8_polish_ci DEFAULT NULL,
  `email` varchar(35) COLLATE utf8_polish_ci DEFAULT NULL,
  `pesel` char(11) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`pracownik_ID`, `imie`, `nazwisko`, `miasto`, `pensja`, `telefon`, `email`, `pesel`) VALUES
(1, 'Magdalena', 'Szewczyk', 'Warszawa', 2500, '561202091', 'magsze@gmail.com', '80050365322'),
(2, 'Karolina', 'Kubiak', 'Poznań', 2550, '125267086', 'karkub@yahoo.com', '91020294128'),
(3, 'Wioletta', 'Wasilewska', 'Olsztyn', 2500, '676062213', 'wiowas@wp.pl', '57122592681'),
(4, 'Magda', 'Tomaszewska', 'Opole', 2560, '196317526', 'magtom@gmail.com', '87042625686'),
(5, 'Klara', 'Krupa', 'Warszawa', 2500, '180716514', 'klakru@yahoo.pl', '59033142467'),
(6, 'Natalia', 'Witkowska', 'Elbląg', 2600, '819525847', 'natwit@wp.pl', '70100583688'),
(7, 'Klementyna', 'Rutkowska', 'Gdańsk', 2500, '490122874', 'klerut@yahoo.com', '95102125241'),
(8, 'Julia', 'Sikora', 'Sopot', 2500, '562544295', 'julsik@onet.pl', '86061765667'),
(9, 'Bronisław', 'Wysocki', 'Olsztyn', 2550, '139081666', 'browys@gmail.com', '99112552114'),
(10, 'Piotr', 'Sikorski', 'Gdynia', 2500, '803815003', 'piosik@yahoo.pl', '64103173515'),
(11, 'Krzysztof', 'Szewczyk', 'Kraków', 2560, '591846275', 'krzsze@gmail.com', '95070573279'),
(12, 'Heronim', 'Cieślak', 'Sopot', 2500, '460379546', 'hercie@wp.pl', '67080473553'),
(13, 'Dawid', 'Górecki', 'Koszalin', 2700, '842234844', 'dawgor@wp.pl', '63112427176'),
(14, 'Adrian', 'Krawczyk', 'Szczecin', 2500, '991175793', 'adrkra@wp.pl', '50060254257'),
(15, 'Grzegorz', 'Zalewski', 'Olsztynek', 2530, '779717762', 'grzzal@wp.pl', '67012842194'),
(16, 'Bartłomiej', 'Kamiński', 'Olsztyn', 2500, '819032417', 'barkam@gmail.com', '99031931573');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producenci`
--

CREATE TABLE `producenci` (
  `producent_ID` int(3) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `siedziba` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `producenci`
--

INSERT INTO `producenci` (`producent_ID`, `nazwa`, `siedziba`) VALUES
(1, 'Mlekosmak', 'Warszawa'),
(2, 'Ziarno', 'Poznań'),
(3, 'Fruit', 'Kraków'),
(4, 'Warzywko', 'Warszawa'),
(5, 'Warzywniak', 'Poznań'),
(6, 'Słodycz', 'Kraków'),
(7, 'Kropla', 'Lublin'),
(8, 'Fancy', 'Opole'),
(9, 'Riba', 'Gdańsk'),
(10, 'Prosiaczek', 'Opole'),
(11, 'Kabanos', 'Olsztyn'),
(12, 'Snack', 'Elbląg'),
(13, 'Smakosz', 'Olsztyn'),
(14, 'Kek', 'Elbląg'),
(15, 'Rolnik', 'Lublin'),
(16, 'Farmer', 'Gdańsk');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `produkt_ID` int(3) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `producent_ID` int(3) DEFAULT NULL,
  `rodzaj_ID` int(3) DEFAULT NULL,
  `cena_jednostkowa` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`produkt_ID`, `nazwa`, `producent_ID`, `rodzaj_ID`, `cena_jednostkowa`) VALUES
(1, 'czekolada', 6, 4, 2.5),
(2, 'chleb', 2, 1, 2.5),
(3, 'mleko', 1, 2, 3.2),
(4, 'jajka', 15, 15, 5.5),
(5, 'szynka', 10, 12, 27),
(6, 'wedlina', 11, 13, 28),
(7, 'cynamon', 13, 8, 1.9),
(8, 'cukier', 13, 8, 2.2),
(9, 'sól', 13, 8, 5.8),
(10, 'pieprz', 13, 8, 4.9),
(11, 'bułka', 2, 1, 0.3),
(12, 'pomidor', 5, 6, 5),
(13, 'ogórek', 4, 6, 5),
(14, 'jabłko', 3, 5, 3.3),
(15, 'banan', 3, 5, 3.5),
(16, 'woda', 7, 3, 1.9),
(17, 'jogurt', 1, 2, 2.2),
(18, 'sok', 7, 3, 2.5),
(19, 'kawa', 7, 3, 25),
(20, 'ser', 1, 2, 15.9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaje`
--

CREATE TABLE `rodzaje` (
  `rodzaj_ID` int(3) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rodzaje`
--

INSERT INTO `rodzaje` (`rodzaj_ID`, `nazwa`) VALUES
(1, 'pieczywo'),
(2, 'nabila'),
(3, 'napoje'),
(4, 'słodycze'),
(5, 'owoce'),
(6, 'warzywa'),
(7, 'przekąski'),
(8, 'przyprawy'),
(9, 'makarony'),
(10, 'kasze'),
(11, 'dania w proszku'),
(12, 'mięso'),
(13, 'wędliny'),
(14, 'ryby'),
(15, 'jaja'),
(16, 'inne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `transakcje`
--

CREATE TABLE `transakcje` (
  `transakcja_ID` int(3) NOT NULL,
  `produkt_ID` int(3) DEFAULT NULL,
  `ilosc` int(3) DEFAULT NULL,
  `cena_j_produktu` float DEFAULT NULL,
  `wartosc` float DEFAULT NULL,
  `data_transakcji` date DEFAULT NULL,
  `klient_ID` int(3) DEFAULT NULL,
  `pracownik_ID` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `transakcje`
--

INSERT INTO `transakcje` (`transakcja_ID`, `produkt_ID`, `ilosc`, `cena_j_produktu`, `wartosc`, `data_transakcji`, `klient_ID`, `pracownik_ID`) VALUES
(1, 1, 5, 2.5, 12, '2020-10-07', 1, 1),
(2, 2, 5, 2.5, 12, '2020-10-09', 2, 1),
(3, 3, 6, 3.2, 19, '2020-10-04', 3, 2),
(4, 4, 8, 5.5, 44, '2020-10-04', 4, 3),
(5, 5, 9, 27, 243, '2020-12-01', 5, 3),
(6, 6, 6, 28, 168, '2020-12-14', 6, 3),
(7, 7, 12, 1.9, 22, '2020-11-10', 6, 8),
(8, 8, 15, 2.2, 33, '2020-07-14', 6, 6),
(9, 9, 3, 5.8, 17, '2020-05-14', 5, 12),
(10, 10, 4, 4.9, 19, '2020-08-28', 4, 10),
(11, 10, 7, 4.9, 34, '2020-09-22', 5, 5),
(12, 4, 12, 5.5, 66, '2020-11-30', 2, 4),
(13, 5, 7, 27, 189, '2020-11-01', 1, 4),
(14, 6, 8, 28, 224, '2020-11-21', 10, 3),
(15, 6, 9, 28, 252, '2020-11-22', 9, 2),
(16, 3, 10, 3.2, 32, '2020-12-08', 8, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`klient_ID`),
  ADD UNIQUE KEY `telefon` (`telefon`),
  ADD KEY `klient_ID` (`klient_ID`,`imie`,`nazwisko`,`firma`,`miasto`,`telefon`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`pracownik_ID`),
  ADD KEY `pracownik_ID` (`pracownik_ID`,`imie`,`nazwisko`,`miasto`,`pensja`,`telefon`,`email`,`pesel`);

--
-- Indeksy dla tabeli `producenci`
--
ALTER TABLE `producenci`
  ADD PRIMARY KEY (`producent_ID`),
  ADD KEY `producent_ID` (`producent_ID`,`nazwa`,`siedziba`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`produkt_ID`),
  ADD KEY `produkt_ID` (`produkt_ID`,`nazwa`,`producent_ID`,`rodzaj_ID`,`cena_jednostkowa`),
  ADD KEY `producent_ID` (`producent_ID`),
  ADD KEY `rodzaj_ID` (`rodzaj_ID`);

--
-- Indeksy dla tabeli `rodzaje`
--
ALTER TABLE `rodzaje`
  ADD PRIMARY KEY (`rodzaj_ID`),
  ADD KEY `rodzaj_ID` (`rodzaj_ID`,`nazwa`);

--
-- Indeksy dla tabeli `transakcje`
--
ALTER TABLE `transakcje`
  ADD PRIMARY KEY (`transakcja_ID`),
  ADD KEY `transakcja_ID` (`transakcja_ID`,`produkt_ID`,`ilosc`,`cena_j_produktu`,`wartosc`,`data_transakcji`,`klient_ID`,`pracownik_ID`),
  ADD KEY `pracownik_ID` (`pracownik_ID`),
  ADD KEY `klient_ID` (`klient_ID`),
  ADD KEY `produkt_ID` (`produkt_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `klient_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `pracownik_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `producenci`
--
ALTER TABLE `producenci`
  MODIFY `producent_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `produkt_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `rodzaje`
--
ALTER TABLE `rodzaje`
  MODIFY `rodzaj_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `transakcje`
--
ALTER TABLE `transakcje`
  MODIFY `transakcja_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_ibfk_1` FOREIGN KEY (`producent_ID`) REFERENCES `producenci` (`producent_ID`),
  ADD CONSTRAINT `produkty_ibfk_2` FOREIGN KEY (`rodzaj_ID`) REFERENCES `rodzaje` (`rodzaj_ID`);

--
-- Ograniczenia dla tabeli `transakcje`
--
ALTER TABLE `transakcje`
  ADD CONSTRAINT `transakcje_ibfk_1` FOREIGN KEY (`pracownik_ID`) REFERENCES `pracownicy` (`pracownik_ID`),
  ADD CONSTRAINT `transakcje_ibfk_2` FOREIGN KEY (`klient_ID`) REFERENCES `klienci` (`klient_ID`),
  ADD CONSTRAINT `transakcje_ibfk_3` FOREIGN KEY (`produkt_ID`) REFERENCES `produkty` (`produkt_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
