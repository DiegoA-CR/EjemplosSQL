--El alias sirve para que la consulta agrege ese identificador a la columna

SELECT nombre, fecha_inicio FROM users  WHERE edad BETWEEN 20 AND 30;

--ejemplo

SELECT nombre, fecha_inicio AS 'Inicio entrada' FROM users WHERE edad BETWEEN 20 AND 30;

SELECT nombre, fecha_inicio AS 'Inicio entrada' FROM users WHERE nombre = 'armando';