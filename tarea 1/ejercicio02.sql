DELIMITER $$
CREATE FUNCTION `Iniciales_Empleado`(id_empleado int) RETURNS CHAR(2)
	NOT DETERMINISTIC
BEGIN

	declare inicial_nombre char(1);
	declare inicial_apellido char(2);
    
    SELECT substring(empleados.nombre, 1, 1) 
    INTO inicial_nombre 
    FROM empleados 
    WHERE empleados.id = id_empleado;
    
    SELECT substring(empleados.apellido, 1, 1) 
    INTO inicial_apellido
    FROM empleados 
    WHERE empleados.id = id_empleado;
    
    return concat(inicial_nombre, inicial_apellido);

END $$