SELECT COUNT(transakcja_ID) AS 'ile transakcji w listopadzie 2020' FROM transakcje WHERE (YEAR(data_transakcji))=2020 AND (MONTH(data_transakcji))=11