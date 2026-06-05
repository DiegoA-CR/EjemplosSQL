--error
SELECT *
 CASE 
    WHEN edad > 17 THEN 'Es mayor de edad'
    ELSE 'es menor de edad'
END
FROM users;

-- correccion
SELECT *,
 CASE 
    WHEN edad > 17 THEN 'Es mayor de edad'
    ELSE 'es menor de edad'
END AS 'Mayor de edad'
FROM users;

------------------------
SELECT *,
 CASE 
    WHEN edad > 17 THEN true
    ELSE false
END AS 'Mayor de edad'
FROM users;

-----------error de logica--------------
SELECT *,
 CASE 
    WHEN edad > 17 THEN 'Es mayor de edad'
    WHEN edad = 18 THEN 'Primer año de mayoria de edad'
    ELSE 'es menor de edad'
END AS 'Mayor/Menor de edad'
FROM users;

-------------para corregirlo y que no salte wl segundo WHEN, edad es mayor 18 -----------------
SELECT *,
 CASE 
    WHEN edad > 18 THEN 'Es mayor de edad'
    WHEN edad = 18 THEN 'Primer año de mayoria de edad'
    ELSE 'es menor de edad'
END AS 'Mayor/Menor de edad'
FROM users;

---sin el AS nos imprimira como nombre de columna toda la condicion WHEN edad > 18 THEN 'Es mayor de edad' WHEN edad = 18 THEN 'Primer año de mayoria de edad' ELSE 'es menor de edad'
SELECT *,
 CASE 
    WHEN edad > 18 THEN 'Es mayor de edad'
    WHEN edad = 18 THEN 'Primer año de mayoria de edad'
    ELSE 'es menor de edad'
END
FROM users;