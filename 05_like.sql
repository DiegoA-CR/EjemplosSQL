-- N o  R e t o r n a  n a d a 
SELECT * FROM  users WHERE email LIKE 'gmail.com';

----------------------------------------------------
-- Dudas https://www.w3schools.com/postgresql/postgresql_like.php

-- Preguntas especificas y aclaraciones de sintaxis, correcciones y usos https://chatgpt.com/

-- estás diciendo "encuentra emails que sean exactamente gmail.com", lo cual normalmente no existe porque los correos tienen una parte antes del @.
-- Si quieres todos los correos de Gmail, debes usar % como comodín:

SELECT * FROM  users WHERE email LIKE '%@gmail.com';

SELECT * FROM  users WHERE email LIKE '%@%';

SELECT * FROM  users WHERE email LIKE 'armando%';

SELECT * FROM  users WHERE email LIKE 'prueba%';

SELECT id_user, name FROM  users WHERE email LIKE 'armando%';