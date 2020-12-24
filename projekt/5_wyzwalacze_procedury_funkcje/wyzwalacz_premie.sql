DELIMITER $$
CREATE TRIGGER wyzwalacz_premia AFTER UPDATE ON pracownicy
FOR EACH ROW 
BEGIN
	SET new.pensja=old.pensja+10;
END