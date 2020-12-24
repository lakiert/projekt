CREATE TABLE produkty 
(
    produkt_ID INT(3) PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(20),
    producent_ID INT(3),
    rodzaj_ID INT(3),
    cena_jednostkowa FLOAT(3.2)
   )


CREATE TABLE klienci
(
    klient_ID INT(3) PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(20),
    nazwisko VARCHAR(30),
    firma VARCHAR(20),
    miasto CHAR(30),
    telefon CHAR(9) UNIQUE
    )


CREATE TABLE producenci
(
    producent_ID INT(3) PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(20),
    siedziba VARCHAR(30)
    )


CREATE TABLE transakcje
(
    transakcja_ID INT(3) PRIMARY KEY AUTO_INCREMENT,
    produkt_ID INT(3),
    ilosc INT(3),
    cena_j_produktu FLOAT(3.2),
    wartosc FLOAT(6.2),
    data_transakcji DATE,
    klient_ID INT(3),
    pracownik_ID INT(3)
    )


CREATE TABLE rodzaje
(
    rodzaj_ID INT(3) PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(20)
    )


CREATE TABLE pracownicy
(
    pracownik_ID INT(3) PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(20),
    nazwisko VARCHAR(30),
    miasto VARCHAR(30),
    pensja FLOAT(4.2),
    telefon CHAR(9),
    email VARCHAR(35),
    pesel CHAR(11)
    )