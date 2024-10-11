
CREATE DATABASE BdEjemplo03;
GO

USE BdEjemplo03;
GO

DROP TABLE IF EXISTS Persona;
GO

CREATE TABLE Persona (
    dni CHAR(8) NOT NULL,
    CodigoHospital INT NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    funcion VARCHAR(50) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    localidad VARCHAR(50),
    PRIMARY KEY (dni)
);
GO
