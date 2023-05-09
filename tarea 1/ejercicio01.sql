DELIMITER $$
CREATE FUNCTION `Prefijo`(cadena varchar(50), num_caracteres int) RETURNS VARCHAR(50)
	NOT DETERMINISTIC
BEGIN

	return CONCAT(UPPER(SUBSTRING(cadena, 1, num_caracteres)), "-");	

END $$