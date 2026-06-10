--tabla para usar trigger

-- erronea
CREATE TABLE historial_email
id_historial_email INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
email_cambio VARCHAR(50) NULL,
PRIMARY KEY (id_historial_email),
UNIQUE id_historial_email;

--correccion

CREATE TABLE historial_email (
    id_historial_email INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    email_cambio VARCHAR(50) NULL,
    PRIMARY KEY (id_historial_email),
    FOREIGN KEY (user_id) REFERENCES users(id_usuario)
);

------------ejemplo para construir trigger

CREATE TRIGGER tg_email
BEFORE/AFTER INSERT/UPDATE/DELETE
ON users;


-- fallo
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW

BEGIN
    IF OLD.email <> NEW.email THEN
    INSERT INTO historial_email (user_id,email_cambio)
    VALUES (OLD.user_id, OLD.email)
    END IF;
END;

-- DELIMITER

DELIMITER //

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO historial_email (user_id, email_cambio)
        VALUES (OLD.user_id, OLD.email);
    END IF;
END//

DELIMITER ;

--actualizamos valor 
UPDATE users SET email= 'correo@correo.com' WHERE user_id = 1;