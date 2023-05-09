DELIMITER $$
CREATE FUNCTION `Edad_empleado`(var_id INT) RETURNS int
	NOT DETERMINISTIC
BEGIN 
	DECLARE edad int;
    
    SELECT TIMESTAMPDIFF(YEAR, empleados.fecha_nacimiento, curdate()) INTO edad
    FROM empleados
    WHERE empleados.id=var_id;
    
	RETURN fecha_edad;
END $$