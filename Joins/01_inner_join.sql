SELECT * FROM users
INNER JOIN dni;

SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;

SELECT nombre, dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY edad ASC;

--- N:N

SELECT * FROM users_programas
INNER JOIN users ON users_programas.user_id = users.user_id
INNER JOIN programas ON users_programas.programa_id = programas.programa_id;

SELECT users.nombre, programas.nombre FROM users_programas
INNER JOIN users ON users_programas.user_id = users.user_id
INNER JOIN programas ON users_programas.programa_id = programas.programa_id;
