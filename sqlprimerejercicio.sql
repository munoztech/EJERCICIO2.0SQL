CREATE SCHEMA generation;

USE generation;

CREATE TABLE Cliente(
# cliente_id es un atributo de tipo integer, llave primaria
# autoincrementable y no puede ser nula
cliente_id iNTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(25),
direccion VARCHAR(50),
correo VARCHAR(50),
medioPago VARCHAR(20),
valoracion INTEGER,
rutCliente VARCHAR(15)
);

CREATE TABLE Boleta(
boleta_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
nro_boleta BIGINT,
fecha DATE,
total DOUBLE
);

CREATE TABLE producto(
producto_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(20),
precio DOUBLE
);

CREATE TABLE proveedor(
proveedor_id iNTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(20),
rol VARCHAR(20),
contacto INTEGER NOT NULL,
fecha_visita INTEGER NOT NULL
);

CREATE TABLE producto_proveedor(
productoprovedor_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
proveedor_id INTEGER NOT NULL,
producto_id INTEGER NOT NULL
);

#con esto se agrega la columna  al la tabla boleta
ALTER TABLE Boleta ADD cliente_id INTEGER NOT NULL;

#CREAR LAS RELACIONES UTILIZANDO LAS FOREING KEY
ALTER TABLE Boleta
ADD FOREIGN KEY (cliente_id) REFERENCES Cliente (cliente_id);

ALTER TABLE producto_proveedor
ADD FOREIGN KEY (producto_id) REFERENCES producto(producto_id);

ALTER TABLE producto_proveedor
ADD FOREIGN KEY (proveedor_id) REFERENCES proveedor(proveedor_id);

#como insertar datos
INSERT INTO Cliente (nombre, direccion, correo, medioPago, rutCliente)
VALUES ("Isa", "calle 13", "isa@gmail.com", "efectivo", 5, "19293483_0");

DELETE FROM Cliente;

SELECT * FROM Cliente;