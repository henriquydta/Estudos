-- Acrescentar data e sexo
SELECT * FROM Empregado;
SELECT * FROM Dependente;
SELECT * FROM Orgao;

-- SOMA DOS SALÁRIOS
SELECT sum(Salario) FROM Empregado 
-- SOMA DOS SALÁRIOS POR CARGO
SELECT c.Nome_cargo, (
  SELECT SUM(Salario)
  FROM Empregado e
  WHERE e.fk_Cargo_id_cargo = c.id_cargo
) 
FROM Cargo c;
-- SOMA DOS SALÁRIOS POR CARGO E ÓRGÃO
SELECT o.Nome_orgao, c.Nome_cargo, SUM(e.Salario)
FROM Orgao o
INNER JOIN Empregado e ON o.id_orgao = e.fk_Orgao_id_orgao
INNER JOIN Cargo c ON e.fk_Cargo_id_cargo = c.id_cargo
GROUP BY o.Nome_orgao, c.Nome_cargo;
