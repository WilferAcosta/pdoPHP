-- SQLBook: Code
CREATE DATABASE Pruebas;
USE Pruebas;
CREATE TABLE Person(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(80) NOT NULL,
    Apellido1 VARCHAR(100) NOT NULL,
    Apellido2 VARCHAR(100) NULL,
    DNI VARCHAR(10) NOT NULL
);

CREATE TABLE Coches(
    Matricula VARCHAR(7) NOT NULL PRIMARY KEY,
    Marca VARCHAR(45) NOT NULL,
    Modelo VARCHAR(45) NULL,
    Caballos INT(11) NOT NULL
);

CREATE TABLE Coche_vs_Persona(
    Coche_Matricula VARCHAR(7),
    Persona_id INT(11) 
);

ALTER TABLE Coche_vs_Persona
ADD CONSTRAINT Coche_Matricula
FOREIGN KEY (Coche_Matricula) REFERENCES Coches (Matricula);

ALTER TABLE Coche_vs_Persona
ADD CONSTRAINT Persona_id
FOREIGN KEY (Persona_id) REFERENCES Person (id);