--error todos los usuarios ahora tienen 21
UPDATE users SET age = '21';
--correccion
UPDATE users SET age = '12' WHERE id=26;

