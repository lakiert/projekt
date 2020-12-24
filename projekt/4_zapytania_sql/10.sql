SELECT  produkty.nazwa, COUNT(transakcje.transakcja_ID) AS 'ile razy sprzedano' FROM 
produkty INNER JOIN transakcje ON produkty.produkt_ID=transakcje.produkt_ID
WHERE transakcje.produkt_ID=(SELECT produkt_id FROM produkty WHERE nazwa LIKE 'pieprz')