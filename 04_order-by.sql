-- En un orden especifico por ejemplo por edad
SELECT * FROM  users ORDER BY edad;

-- ordena de forma ascendente

SELECT * FROM  users ORDER BY edad ASC;

-- orden de forma descente

SELECT * FROM  users ORDER BY edad DESC;

--Pruebas

SELECT * FROM  users WHRE email = 'armando@gmail.com' ORDER BY edad DESC;

SELECT name FROM  users WHRE email = 'armando@gmail.com' ORDER BY id_user ASC;

SELECT id_user, email FROM  users ORDER BY edad;