
--asigna cero a los null de la columna 
SELECT nombre, ape_paterno, ape_materno, IFNULL(edad, 0) FROM users;
-- asigna un alias para que no se vea el fragmento de la consulta
SELECT nombre, ape_paterno, ape_materno, IFNULL(edad, 0) AS edad FROM users;