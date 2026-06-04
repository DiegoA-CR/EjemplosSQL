-- un contador de valores o datos si 

SELECT COUNT(edad) from users; --me retorna 6 valores porque los demas datos en edad son null asi que extrae los que si poseen datos

SELECT COUNT(*) from users;

--La expresión edad = 20 devuelve TRUE o FALSE, y ambos son valores no nulos, por lo que terminarías contando prácticamente todas las filas.

SELECT COUNT(edad = 20) from users;

-- sintaxis correcta

SELECT COUNT(id_user) FROM users WHERE edad = 20;

-- segun GPT
-- para postgreSQL, verificar si existen diferencias con otros MySQL, SQL server, MongoDB, etc.

SELECT COUNT(*) FILTER (WHERE edad = 20) FROM users;