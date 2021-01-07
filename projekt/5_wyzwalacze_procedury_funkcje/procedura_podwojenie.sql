DELIMITER $$
CREATE PROCEDURE podwojenie(IN id int)
BEGIN
Update pracownicy set pensja = 2 * pensja WHERE id_pracownika = id;
END
$$
DELIMITER ;