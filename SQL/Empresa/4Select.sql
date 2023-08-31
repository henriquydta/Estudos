-- TODOS OS EMPREGADOS
SELECT * FROM Empregado;
-- TODOS OS DEPENDENTES
SELECT * FROM Dependente;
-- TODOS OS CARGOS
SELECT * FROM Cargo;

-- TODOS OS ÓRGÃOS E SEUS CARGOS
SELECT o.Nome_orgao, c.Nome_cargo FROM Orgao o 
INNER JOIN Empregado e ON o.id_orgao = e.fk_Orgao_id_orgao 
INNER JOIN Cargo c ON e.fk_Cargo_id_cargo = c.id_cargo 
GROUP BY o.Nome_orgao, c.Nome_cargo;
-- TODOS OS EMPREGADOS E SEUS DEPENDENTES
SELECT DISTINCT e.Nome, d.Nome_dependente FROM Empregado e INNER JOIN Dependente d ON e.Matricula = d.fk_Empregado_Matricula;
-- TODOS OS EMPREGADOS SEM DEPENDENTES
SELECT e.Nome
FROM Empregado e
WHERE e.Matricula NOT IN (
  SELECT DISTINCT d.fk_Empregado_Matricula
  FROM Dependente d
  );

-- TODOS OS CARGOS SEM EMPREGADOS CADASTRADOS
SELECT C.Nome_cargo
FROM Cargo C
WHERE C.id_cargo NOT IN (
    SELECT DISTINCT E.fk_Cargo_id_cargo
    FROM Empregado E
);
-- TODOS OS ÓRGÃOS SEM CARGOS
SELECT O.Nome_orgao
FROM Orgao O
WHERE O.id_orgao NOT IN (
    SELECT DISTINCT E.fk_Orgao_id_orgao
    FROM Empregado E
);

-- MÉDIA DOS SALÁRIOS
SELECT AVG(Salario) FROM Empregado;
-- MÉDIA DOS SALÁRIOS POR CARGO
SELECT C.Nome_cargo, AVG(E.Salario)
FROM Cargo C
INNER JOIN Empregado E ON C.id_cargo = E.fk_Cargo_id_cargo
GROUP BY C.Nome_cargo;
-- MÉDIA DOS SALÁRIOS POR CARGO E ÓRGÃO
SELECT Orgao.Nome_orgao, Cargo.Nome_cargo, AVG(Empregado.Salario)
FROM Orgao
INNER JOIN Empregado ON Orgao.id_orgao = Empregado.fk_Orgao_id_orgao
INNER JOIN Cargo ON Empregado.fk_Cargo_id_cargo = Cargo.id_cargo
GROUP BY Orgao.Nome_orgao, Cargo.Nome_cargo;

-- SOMA DOS SALÁRIOS
SELECT sum(Salario) FROM Empregado;
-- SOMA DOS SALÁRIOS POR CARGO
SELECT c.Nome_cargo, SUM(e.Salario) FROM Cargo c
JOIN Empregado e ON c.id_cargo = e.fk_Cargo_id_cargo
GROUP BY c.Nome_cargo;
-- SOMA DOS SALÁRIOS POR CARGO E ÓRGÃO
SELECT o.Nome_orgao, c.Nome_cargo, SUM(e.Salario)
FROM Orgao o
INNER JOIN Empregado e ON o.id_orgao = e.fk_Orgao_id_orgao
INNER JOIN Cargo c ON e.fk_Cargo_id_cargo = c.id_cargo
GROUP BY o.Nome_orgao, c.Nome_cargo;

-- MÉDIA DOS SALÁRIOS POR SEXO
SELECT Sexo, AVG(Salario) FROM Empregado GROUP BY sexo;
-- MÉDIA DOS SALÁRIOS POR ANO DE NASCIMENTO
SELECT YEAR(dataNascimento), AVG(Salario) FROM Empregado GROUP BY YEAR(dataNascimento);

-- CONTAGEM DE QUANTOS DEPENDENTES CADA EMPREGADO TEM
SELECT e.Matricula, COUNT(d.idDependente) FROM Empregado e
LEFT JOIN Dependente d ON e.Matricula = d.fk_Empregado_Matricula
GROUP BY e.Matricula;
-- TODOS OS EMPREGADOS COM DEPENDENTES MENOR QUE UMA IDADE x
SELECT e.Matricula, e.Nome, d.Nome_dependente, e.dataNascimento FROM Empregado e
JOIN Dependente d ON e.Matricula = d.fk_Empregado_Matricula
WHERE TIMESTAMPDIFF(YEAR, e.dataNascimento, CURDATE()) < 18;

-- TODOS OS NOMES DOS EMPREGADOS COM SALÁRIO E NOME DOS DEVIDOS DEPENDENTES SE HOUVER (OU SEJA, SE TIVER MAIS DE UM DEPENDENTE APARECE n VEZES, SE NÃO TIVER DEPENDENTE APARECE 1 VEZ)
SELECT e.Nome, e.Salario, IFNULL(d.Nome_dependente, 'Sem Dependente') FROM Empregado e
LEFT JOIN Dependente d ON e.Matricula = d.fk_Empregado_Matricula
ORDER BY e.Nome, d.Nome_dependente;
