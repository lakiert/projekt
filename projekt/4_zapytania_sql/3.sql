SELECT produkty.nazwa,transakcje.wartosc FROM produkty JOIN transakcje WHERE transakcje.wartosc=(SELECT MAX(wartosc) FROM transakcje) AND produkty.produkt_ID=transakcje.produkt_ID