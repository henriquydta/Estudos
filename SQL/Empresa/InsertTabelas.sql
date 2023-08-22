-- 5 cargos, 3 orgãos, 30 empregados, 17 dependentes. --

INSERT INTO cargo (id_cargo, Nome_cargo) VALUES (1, 'CEO');
INSERT INTO cargo (id_cargo, Nome_cargo) VALUES (2, 'Patrão');
INSERT INTO cargo (id_cargo, Nome_cargo) VALUES (3, 'Gerente');
INSERT INTO cargo (id_cargo, Nome_cargo) VALUES (4, 'Vendedor');
INSERT INTO cargo (id_cargo, Nome_cargo) VALUES (5, 'Auxiliar de escritório');

INSERT INTO orgao (id_orgao, Sigla_orgao, Nome_orgao) VALUES (1, 'AUX', 'Escritório');
INSERT INTO orgao (id_orgao, Sigla_orgao, Nome_orgao) VALUES (2, 'VEN', 'Vendas');
INSERT INTO orgao (id_orgao, Sigla_orgao, Nome_orgao) VALUES (3, 'GER', 'Gerência');

INSERT INTO empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (1, 'Henry Zitos', '01234567891', '11987654321', 2499.99, 3, 1);

INSERT INTO empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (2, 'Ar Thur', '19876543210', '11912345678', 2499.99, 3, 1);

INSERT INTO empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (1, 'Jah Podi', '12345678901', '21987654321', 1899.99, 3, 2);

INSERT INTO empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (1, 'Aom Mossar', '23456789012', '31987654321', 1899.99, 3, 2);

INSERT INTO empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (1, 'Air Ross', '34567890123', '41987654321', 1499.99, 3, 3);

INSERT INTO empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (1, 'Fae John', '45678901234', '51987654321', 1499.99, 3, 3);

INSERT INTO empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (1, 'Fran Goo', '56789012345', '61987654321', 1499.99, 3, 3);

INSERT INTO empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (1, 'Ay Milanesa', '67890123456', '71987654321', 1499.99, 3, 3);

INSERT INTO empregado (Matricula, Nome, CPF, Telefone, Salario, fk_Orgao_id_orgao, fk_Cargo_id_cargo)
VALUES (1, 'Salah Da', '78901234567', '81987654321', 1499.99, 3, 3);
