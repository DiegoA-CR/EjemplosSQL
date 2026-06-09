--creamos una tabla nueva
CREATE TABLE persona8(
    id int NOT NULL AUTO_INCREMENT,
    nombre varchar(25) NOT NULL,
    edad int,
    email varchar(50),
    fecha_creacion datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id)
    CHECK (edad >= 18)
);

---alter table
ALTER TABLE persona8
ADD segundo_nombre varchar(150);


ALTER TABLE persona8
RENAME COLUMN segundo_nombre TO descripcion;

ALTER TABLE persona8
MODIFY COLUMN descripcion varchar(250)


ALTER TABLE persona8
DROP COLUMN descripcion;
