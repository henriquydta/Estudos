-- 5 cargos, 3 orgaos, 30 empregados, 17 dependentes.

-- Cargos
INSERT INTO Cargo (id_cargo, Nome_cargo) VALUES (1, 'CEO');
INSERT INTO Cargo (id_cargo, Nome_cargo) VALUES (2, 'Patrão');
INSERT INTO Cargo (id_cargo, Nome_cargo) VALUES (3, 'Gerente');
INSERT INTO Cargo (id_cargo, Nome_cargo) VALUES (4, 'Vendedor');
INSERT INTO Cargo (id_cargo, Nome_cargo) VALUES (5, 'Auxiliar de escritório');

-- Orgaos
INSERT INTO Orgao (id_orgao, Sigla_orgao, Nome_orgao) VALUES (1, 'ESC', 'Escritório');
INSERT INTO Orgao (id_orgao, Sigla_orgao, Nome_orgao) VALUES (2, 'VEN', 'Vendas');
INSERT INTO Orgao (id_orgao, Sigla_orgao, Nome_orgao) VALUES (3, 'GEX', 'Gab. Exec.');

-- Empregados
-- + Gabinete Executivo
INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (1, 'Henry Zitos', '23874651983', '9876543210', 5000.00, 3, 1);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (2, 'Arthur Augusto', '61582037496', '8765432109', 5000.00, 3, 1);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (3, 'Isabela Crestane', '92104863517', '7654321098', 4500.00, 3, 2);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (4, 'Felipe Witkowsky', '23456789012', '6543210987', 4500.00, 3, 2);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (5, 'Leticia Rudeli', '34567890123', '5432109876', 4500.00, 3, 2);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (6, 'Isabella Pantolfo', '45678901234', '4321098765', 4500.00, 3, 2);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (7, 'Lucas Moura', '56789012345', '3210987654', 4500.00, 3, 2);

-- + Gerentes
--   Escritório
INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (8, 'Sofia Rodrigues', '67890123456', '2109876543', 3250.00, 1, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (9, 'Lucas Martins', '78901234567', '1098765432', 3250.00, 1, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (10, 'Julia Marques', '75319086240', '9876543210', 3250.00, 1, 3);

--   Vendas
INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (11, 'Bruno Castro', '12857396405', '8765432109', 3250.00, 2, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (12, 'Isabella Costa', '34967215802', '7458319026', 3250.00, 2, 3);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (13, 'Matheus Oliveira', '87031562498', '6204958317', 3250.00, 2, 3);

-- + Auxiliares de escritório
INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (14, 'Maria Silva', '56243178920', '5837029641', 2000.00, 1, 4);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (15, 'Gabriel Santos', '68925740132', '9162845307', 2000.00, 1, 4);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (16, 'Laura Pereira', '20483691578', '4307951826', 2000.00, 1, 4);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (17, 'Pedro Almeida', '93145728610', '3875120496', 2000.00, 1, 4);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (18, 'Valentina Ferreira', '17502948356', '2610735984', 2000.00, 1, 4);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (19, 'Enzo Carvalho', '62489371025', '5942167038', 2000.00, 1, 4);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (20, 'Clara Barbosa', '38150692744', '8723456109', 2000.00, 1, 4);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (21, 'Joao Rocha', '54721860937', '1358692470', 2000.00, 1, 4);

-- + Vendedores
INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (22, 'Helena Sousa', '76904532812', '7098314526', 1499.99, 2, 5);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (23, 'Miguel Cardoso', '29568147306', '6241093857', 1499.99, 2, 5);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (24, 'Alice Fernandes', '10836579425', '9832156740', 1499.99, 2, 5);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (25, 'Leonardo Goncalves', '45673918208', '5276814903', 1499.99, 2, 5);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (26, 'Manuela Gomes', '82417659034', '8049325617', 1499.99, 2, 5);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (27, 'Davi Ribeiro', '31760284591', '3170465829', 1499.99, 2, 5);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (28, 'Luisa Miranda', '98324501726', '4891263507', 1499.99, 2, 5);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (29, 'Rafaela Neves', '53098124675', '6524789130', 1499.99, 2, 5);

INSERT INTO Empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (30, 'Gustavo Fernandes', '26750381943', '2705846931', 1499.99, 2, 5);

-- Dependentes
INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (1, 2008-02-09, 'Guilherme Melo', 1);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (2, 2006-12-07, 'Vinicius Banos', 1);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (3, 2008-01-05, 'Leonardo Koga', 1);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (4, 2007-11-19, 'Enzo Maximino', 7);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (5, 2007-03-10, 'Valentina Barbosa', 20);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (6, 2006-07-28, 'Alexandre Gomes', 26);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (7, 2008-11-15, 'Bernardo Barbosa', 20);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (8, 2010-05-06, 'Beatriz Cardoso', 23);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (9, 2007-09-22, 'Gabriela Silva', 14);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (10, 2009-01-17, 'Marcelo Santos', 15);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (11, 2011-08-09, 'Camila Santos', 15);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (12, 2012-04-03, 'Diogo Goncalves', 25);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (13, 2010-06-20, 'Helena Costa', 12);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (14, 2008-12-12, 'Gustavo Rocha', 21);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (15, 2009-10-25, 'Laura Carvalho', 19);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (16, 2011-02-08, 'Joaquim Fernandes', 30);

INSERT INTO Dependente (idDependente, Dt_nascimento, Nome_dependente, fk_Empregado_Matricula)
VALUES (17, 2006-09-30, 'Isadora Marques', 10);
