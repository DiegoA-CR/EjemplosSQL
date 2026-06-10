SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

SELECT nombre, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

SELECT nombre, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;

SELECT users.nombre, programas.nombre FROM users_programas
RIGHT JOIN users ON users_programas.user_id = users.user_id
RIGHT JOIN programas ON users_programas.programa_id = programas.programa_id;