CREATE DATABASE empresa;
USE empresa;

CREATE TABLE Empregado (
 Matricula INT PRIMARY KEY,
 Nome VARCHAR(255),
 CPF CHAR(11),
 Telefone CHAR(11),
 Salario FLOAT(10,2),
 fk_Orgao_id_orgao INT,
 fk_Cargo_id_cargo INT
);

CREATE TABLE Orgao (
 id_orgao INT PRIMARY KEY,
 Sigla_orgao CHAR(5),
 Nome_orgao CHAR(15)
);

CREATE TABLE Dependente (
 idDependente INT PRIMARY KEY,
 Dt_nascimento DATE,
 Nome_dependente VARCHAR(255),
 fk_Empregado_Matricula INT
);

CREATE TABLE Cargo (
 id_cargo INT PRIMARY KEY,
 Nome_cargo VARCHAR(255)
);

CREATE TABLE Contem (
 fk_Cargo_id_cargo INT,
 fk_Orgao_id_orgao INT
); 

ALTER TABLE Empregado ADD CONSTRAINT FK_Empregado_2 
FOREIGN KEY (fk_Orgao_id_orgao) REFERENCES Orgao (id_orgao); 

ALTER TABLE Empregado ADD CONSTRAINT FK_Empregado_3 
FOREIGN KEY (fk_Cargo_id_cargo) REFERENCES Cargo (id_cargo); 

ALTER TABLE Dependente ADD CONSTRAINT FK_Dependente_2 
FOREIGN KEY (fk_Empregado_Matricula) REFERENCES Empregado (Matricula); 

ALTER TABLE Contem ADD CONSTRAINT FK_Contem_1 
FOREIGN KEY (fk_Cargo_id_cargo) REFERENCES Cargo (id_cargo); 

ALTER TABLE Contem ADD CONSTRAINT FK_Contem_2 
FOREIGN KEY (fk_Orgao_id_orgao) REFERENCES Orgao (id_orgao)
