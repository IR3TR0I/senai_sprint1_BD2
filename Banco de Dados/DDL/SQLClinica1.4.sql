CREATE DATABASE Clinica;

Use Clinica;

CREATE TABLE Pets(

	IdPets			INT PRIMARY KEY IDENTITY,
	Dono			VARCHAR(20) NOT NULL,
	RA�A			VARCHAR(20),
	Nome			VARCHAR(20),
	DDN				VARCHAR(20),
	Tipo			VARCHAR(20),

);

CREATE TABLE Atender(

	IdAtender		INT PRIMARY KEY IDENTITY,
	Pet				INT FOREIGN KEY REFERENCES Pets(IdPets),
	Valor			SMALLMONEY NOT NULL,

);
CREATE TABLE Veterinario(

	IdVeterinario	INT PRIMARY KEY IDENTITY,
	Atender			INT FOREIGN KEY REFERENCES Atender(IdAtender),
	Nome			VARCHAR(50) NOT NULL,

);
CREATE TABLE Clinica(

	Veterinario		INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario),
	Endereco		VARCHAR(100) NOT NULL,

);