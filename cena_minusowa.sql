DELIMITER $$
CREATE TRIGGER cena_minusowa
BEFORE INSERT ON produkty
FOR EACH ROW 
BEGIN
    IF NEW.cena_jednostkowa < 0
  THEN
    SET NEW.cena_jednostkowa = 0;
  END IF;
END
$$
DELIMETER ;