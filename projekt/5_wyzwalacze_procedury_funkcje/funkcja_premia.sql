DELIMITER $$
CREATE FUNCTION premia (pensja INT,dodatek INT)
RETURNS INT
BEGIN
DECLARE wynik INT;
	SET wynik=pensja+dodatek;
	RETURN wynik;
END $$