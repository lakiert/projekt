DELIMITER $$
CREATE TRIGGER podwyzka_cen AFTER UPDATE ON produkty
FOR EACH ROW 
BEGIN
	SET new.cena_jednostkowa=old.cena_jednostkowa+1;
END