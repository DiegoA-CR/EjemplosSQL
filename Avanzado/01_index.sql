--indices

CREATE INDEX idx_nombre ON users(nombre);

--indice unico

CREATE UNIQUE INDEX idx_nombre ON users(nombre);

---ejemplo
CREATE UNIQUE INDEX idx_nombre_ape_paterno ON users(nombre,ape_paterno);

--quitar indice

DROP INDEX idx_nombre ON users;