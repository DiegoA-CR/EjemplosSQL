--Condicion 

SELECT * FROM users HAVING edad < 30;
--error
SELECT COUNT(age) FROM users HAVING edad < 30;

--correccion

SELECT COUNT(age) FROM users HAVING COUNT(edad) < 20;
