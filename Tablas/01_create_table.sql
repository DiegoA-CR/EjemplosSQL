CREATE TABLE persona(
    id int ,
    nombre varchar(25),
    edad int,
    email varchar(50),
    fecha_creacion date
);

-------------not null----------------- restricciones
CREATE TABLE persona2(
    id int NOT NULL,
    nombre varchar(25) NOT NULL,
    edad int,
    email varchar(50),
    fecha_creacion date
);

-------------unique--------------------
CREATE TABLE persona3(
    id int NOT NULL,
    nombre varchar(25) NOT NULL,
    edad int,
    email varchar(50),
    fecha_creacion datetime,
    UNIQUE(id)
);
-------------primary key----------------
CREATE TABLE persona4(
    id int NOT NULL,
    nombre varchar(25) NOT NULL,
    edad int,
    email varchar(50),
    fecha_creacion datetime,
    UNIQUE(id),
    PRIMARY KEY(id)
);

------------check----------------------
CREATE TABLE persona5(
    id int NOT NULL,
    nombre varchar(25) NOT NULL,
    edad int,
    email varchar(50),
    fecha_creacion datetime,
    UNIQUE(id),
    PRIMARY KEY(id)
    CHECK (edad >= 18)
);