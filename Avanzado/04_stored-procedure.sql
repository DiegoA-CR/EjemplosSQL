-- creamos el proceso
DELIMITER //

CREATE PROCEDURE p_all_users()
BEGIN
    SELECT * FROM users;
END//

--llamamos el proceso
CALL p_all_users;

--procesos de consulta por valores/parametros
DELIMITER //

CREATE PROCEDURE p_edad_users(IN edad_param INT)
BEGIN
    SELECT * FROM users WHERE edad = edad_param;
END//

--como usamos esto

CALL p_edad_users(20);


--eliminar
DROP PROCEDURE p_edad_users;
