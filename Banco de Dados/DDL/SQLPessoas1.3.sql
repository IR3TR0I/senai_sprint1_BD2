CREATE DATABASE Pessoas;

Use Pessoas

CREATE TABLE Telefone(

	Telefone INT PRIMARY KEY IDENTITY,
	Numero INT NOT NULL,

);

CREATE TABLE Email(

	IdEmail	INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) NOT NULL,
);
CREATE TABLE Pessoas(

	IdPessoa	INT PRIMARY KEY IDENTITY,
	Telefone	INT FOREIGN KEY REFERENCES Telefone(Telefone),
	Email		INT FOREIGN KEY REFERENCES Email(IdEmail),

);