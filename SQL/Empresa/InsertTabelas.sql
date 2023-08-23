-- 5 cargos, 3 orgãos, 30 empregados, 17 dependentes.

INSERT INTO Cargo (id_cargo, Nome_cargo) VALUES (1, 'CEO');
INSERT INTO Cargo (id_cargo, Nome_cargo) VALUES (2, 'Patrão');
INSERT INTO Cargo (id_cargo, Nome_cargo) VALUES (3, 'Gerente');
INSERT INTO Cargo (id_cargo, Nome_cargo) VALUES (4, 'Vendedor');
INSERT INTO Cargo (id_cargo, Nome_cargo) VALUES (5, 'Auxiliar de escritório');

INSERT INTO Orgao (id_orgao, Sigla_orgao, Nome_orgao) VALUES (1, 'AUX', 'Escritório');
INSERT INTO Orgao (id_orgao, Sigla_orgao, Nome_orgao) VALUES (2, 'VEN', 'Vendas');
INSERT INTO Orgao (id_orgao, Sigla_orgao, Nome_orgao) VALUES (3, 'GEX', 'Gab. Exec.');

-- Gabinete Executivo
INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (1, 'Henry Zitos', '23874651983', '9876543210', 5000.00, 3, 1);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (2, 'Arthur Augusto', '61582037496', '8765432109', 5000.00, 3, 1);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (3, 'Isabela Crestane', '92104863517', '7654321098', 4000.00, 3, 2);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (4, 'Felipe Witkowsky', '23456789012', '6543210987', 4000.00, 3, 2);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (5, 'Leticia Rudeli', '34567890123', '5432109876', 4000.00, 3, 2);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (6, 'Isabella Pantolfo', '45678901234', '4321098765', 4000.00, 3, 2);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (7, 'Lucas Moura', '56789012345', '3210987654', 4000.00, 3, 2);

-- Gerentes 
INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (8, 'Sofia Rodrigues', '67890123456', '2109876543', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (9, 'Lucas Martins', '78901234567', '1098765432', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (10, 'Lucas Martins', '75319086240', '9876543210', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (11, 'Lucas Martins', '12857396405', '8765432109', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (12, 'Isabella Costa', '34967215802', '7458319026', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (13, 'Matheus Oliveira', '87031562498', '6204958317', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (14, 'Maria Silva', '56243178920', '5837029641', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (15, 'Gabriel Santos', '68925740132', '9162845307', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (16, 'Laura Pereira', '20483691578', '4307951826', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (17, 'Pedro Almeida', '93145728610', '3875120496', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (18, 'Valentina Ferreira', '17502948356', '2610735984', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (19, 'Enzo Carvalho', '62489371025', '5942167038', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (20, 'Clara Barbosa', '38150692744', '8723456109', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (21, 'Joao Rocha', '54721860937', '1358692470', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (22, 'Helena Sousa', '76904532812', '7098314526', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (23, 'Miguel Cardoso', '29568147306', '6241093857', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (24, 'Alice Fernandes', '10836579425', '9832156740', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (25, 'Leonardo Goncalves', '45673918208', '5276814903', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (26, 'Manuela Gomes', '82417659034', '8049325617', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (27, 'Davi Ribeiro', '31760284591', '3170465829', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (28, 'Luisa Miranda', '98324501726', '4891263507', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (29, 'Rafaela Neves', '53098124675', '6524789130', 1499.99, 3, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (30, 'Gustavo Fernandes', '26750381943', '2705846931', 1499.99, 3, 3);

-- INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
-- VALUES (31, 'Julia Marques', '49132067854', '1469032875', 1499.99, 3, 3);

-- INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
-- VALUES (32, 'Bruno Castro', '70258413629', '3958604217', 1499.99, 3, 3);
