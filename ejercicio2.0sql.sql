CREATE SCHEMA ejercicio25;

Use ejercicio25;

CREATE TABLE Cliente(
cliente_id iNTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(25),
direccion VARCHAR(50),
correo VARCHAR(50),
medioPago VARCHAR(20),
valoracion INTEGER,
rutCliente VARCHAR(15)
);

INSERT INTO Cliente (nombre, direccion, correo, medioPago, valoracion, rutCliente)
VALUES ("Isa", "calle 13", "isa@gmail.com", "efectivo", 5, "19293483_0");
INSERT INTO Cliente(nombre, direccion, correo, medioPago, valoracion, rutCliente)
VALUES ("javiera", "pasaje tauro", "javi245@gmail.com", "debito", 6, "19067587-6");

UPDATE Cliente
SET direccion = "pasaje picis"
WHERE cliente_id = 2;

DELETE FROM Cliente WHERE cliente_id=2;;

SELECT * FROM Cliente;
