--error todos los usuarios ahora tienen 21
UPDATE users SET age = '21';
--correccion
UPDATE users SET age = '12' WHERE id=26;

UPDATE users SET age = 12 WHERE id=26;

UPDATE users SET age = 19, fecha_inicio = '2020-12-01'  WHERE id=26;



