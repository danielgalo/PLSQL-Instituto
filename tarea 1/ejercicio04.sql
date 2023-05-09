DELIMITER $$

CREATE PROCEDURE `Empleados_por_sexo`(sexo varchar(7))
BEGIN
	
    IF sexo = "HOMBRE" THEN
		SELECT * 
        FROM empleados 
        WHERE empleados.sexo = "H";
    ELSEIF sexo = "MUJER" THEN
		SELECT * 
        FROM empleados 
        WHERE empleados.sexo = "M";
	END IF;

END $$