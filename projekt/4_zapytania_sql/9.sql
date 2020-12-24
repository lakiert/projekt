SELECT klienci.klient_ID, klienci.imie, COUNT(transakcje.klient_ID) 'ile razy kupowano' FROM
klienci RIGHT JOIN transakcje ON klienci.klient_ID=transakcje.klient_ID
GROUP BY klienci.imie