--buscar datos null: ejemolo

SELECT * FROM users WHERE email IS NULL;

--buscar datos no nulos: ejemplo
SELECT * FROM users WHERE email IS NOT NULL;

SELECT * FROM users WHERE email IS NOT NULL edad = 20;
