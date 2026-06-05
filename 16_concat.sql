--concatena

SELECT CONCAT(nombre, ape_paterno, ape_materno) FROM users;

SELECT CONCAT(nombre, ' ' ,ape_paterno, ' ' , ape_materno) FROM users;

-- Se agrega un alias (AS) para el nombre de la columna
SELECT CONCAT('NOMBRE: ', nombre, ' APELLIDOS: ' ,ape_paterno, ' ' , ape_materno) AS 'Nombre completo' FROM users;

