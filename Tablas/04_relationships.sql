CREATE TABLE users(
    user_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(25) NOT NULL,
    edad int,
    email varchar(50),
    fecha_creacion datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id)
    CHECK (edad >= 18)
);

--1:1


CREATE TABLE dni(
    dni_id INT AUTO_INCREMENT PRIMARY KEY,
    dni_number INT NOT NULL,
    user_id INT,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

ALTER TABLE users
ADD compania_id varchar(150);

--1:N

CREATE TABLE companies(
    compania_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(150) NOT NULL
);
--le asignamos llave foranea
--https://www.w3schools.com/sql/sql_foreignkey.asp

ALTER TABLE users
ADD CONSTRAINT fk_compania
FOREIGN KEY(compania_id) REFERENCES companies(compania_id);

--- N:N
CREATE TABLE programas(
    programa_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(150) NOT NULL
);

CREATE TABLE users_programas(
    users_programas_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    programa_id INT,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(programa_id) REFERENCES programas(programa_id),
    UNIQUE(user_id,programa_id)
);
