DELIMITER $$
CREATE FUNCTION `Edad_empleado`(var_id INT) RETURNS int
	NOT DETERMINISTIC
BEGIN 
	DECLARE fecha_edad int;
    
    SELECT TIMESTAMPDIFF(YEAR, empleados.fecha_nacimiento, curdate()) INT fecha_edad
    FROM empleados
    WHERE empleados.id=var_id;
    
	RETURN fecha_edad;
END $$

-- Deterministic se refiere a si es una funcion que devuelve
-- el mismo valor a lo largo del tiempo (p ej la edad no es)

-- Delimiter se pone antes y despues de la funcion pa q no se
-- raye con los ;. No se necesita hacer si hacemos la funcion
-- dando click derecho en el apartado Functions de una base de datos

