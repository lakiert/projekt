SELECT pracownicy.imie AS 'pani kasjerka', produkty.nazwa AS 'co sprzedala'
FROM pracownicy
RIGHT JOIN transakcje  ON pracownicy.pracownik_ID=transakcje.pracownik_ID
INNER JOIN produkty ON produkty.produkt_ID=transakcje.produkt_ID
WHERE SUBSTR(pesel,10,1) IN ('0','2','4','6','8')
GROUP BY pracownicy.imie
ORDER BY pracownicy.pracownik_ID