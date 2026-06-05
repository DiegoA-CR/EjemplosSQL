--agrupa 

SELECT * FROM users GROUP BY edad;

-- nos lanza edades maximas de cada grupo

SELECT MAX(edad) FROM users GROUP BY edad;

-- nos retorna la cantidad de coincidencias en ese grupo por ejemplo |usuarios: 3 | con edad: 20

SELECT COUNT(edad) FROM users GROUP BY edad;

--una consulta erronea
SELECT MAX(edad) FROM users GROUP BY edad ASC;

--Correccion perimero efinimos los valores y luego definimos el orden en el que lo queremos
--consulta correcta 
SELECT MAX(edad) FROM users GROUP BY edad GROUP BY edad ASC;

--usamos el where para limitar la edad apartir de 18 años
SELECT MAX(edad) FROM users WHERE edad > 18 GROUP BY edad GROUP BY edad ASC;