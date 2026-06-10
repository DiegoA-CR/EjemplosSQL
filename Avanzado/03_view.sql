--creamos la consulta  vista 
CREATE VIEW v_usuarios_adultos AS
SELECT nombre, edad
FROM users
WHERE edad >= 18;

--uso

SELECT * FROM v_usuarios_adultos;


--ELIMINAR VISTA

DROP VIEW v_usuarios_adultos;