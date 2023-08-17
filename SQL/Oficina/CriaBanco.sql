CREATE DATABASE Oficina;
USE Oficina;

CREATE TABLE AnoModelo (
 idAnoModelo INT(5) NOT NULL AUTO_INCREMENT,
 valor FLOAT (12,2) NOT NULL,
 tipo VARCHAR(35) NOT NULL,
 nome VARCHAR(35) NOT NULL, 
 FK_idModelo INT(5) NOT NULL,
 PRIMARY KEY (idAnoModelo)
);

CREATE TABLE Cidade(
 idCidade INT(5) NOT NULL,
 NomeCidade VARCHAR(35) NOT NULL, 
 FK_idEstado INT(5) NOT NULL,
 PRIMARY KEY (idCidade)
);

CREATE TABLE Cliente(
 idCliente INT(5) NOT NULL AUTO_INCREMENT,
 telefoneFixo VARCHAR(10),
 CEP INT(8) NOT NULL,
 numero INT(5) NOT NULL,
 Logradouro VARCHAR(80) NOT NULL,
 Bairro VARCHAR(45) NOT NULL,
 cpfCliente INT(11) NOT NULL,
 Complemento VARCHAR(40),
 nomeCLiente VARCHAR(55) NOT NULL,
 telefoneCelular CHAR(11) NOT NULL,
 email VARCHAR(60), 
 FK_idCidade INT(5) NOT NULL,
 FK_idEstado INT(5) NOT NULL,
 PRIMARY KEY (idCliente)
);

CREATE TABLE Cor(
 idCor INT(4) NOT NULL AUTO_INCREMENT,
 nomeCor VARCHAR(30) NOT NULL, 
 PRIMARY KEY (idCor)
);

CREATE TABLE Estado(
 idEstado INT(3) NOT NULL AUTO_INCREMENT,
 NomeEstado VARCHAR(35) NOT NULL, 
 PRIMARY KEY (idEstado)
);

CREATE TABLE Estoque(
 idPeca INT(6) NOT NULL AUTO_INCREMENT,
 QtdPeca INT(30) NOT NULL,
 CodigoPeca INT(10) NOT NULL,
 Validade DATE NOT NULL,
 ValorPeca FLOAT(8,2),
 NomePeca VARCHAR(40) NOT NULL, 
 PRIMARY KEY (idPeca)
);

CREATE TABLE EstoqueFornecedor(
 FK_idFornecedor INT(4) NOT NULL,
 FK_idPeca INT(5) NOT NULL
);

CREATE TABLE EstoqueNota(
 FK_idNota INT(4) NOT NULL,
 FK_idPeca INT(5) NOT null
);

CREATE TABLE EstoqueOrdemServico(
 FK_idOS INT(10) NOT NULL,
 FK_idPeCA INT(5) NOT NULL
);

CREATE TABLE Fabricante(
 idFabricante INT(4) NOT NULL AUTO_INCREMENT,
 NomeFabricante VARCHAR(85) NOT NULL, 
 PRIMARY KEY (idFabricante)
);

CREATE TABLE Fornecedor(
 idFornecedor INT(5) NOT NULL AUTO_INCREMENT,
 NomeFantasia VARCHAR(45) NOT NULL,
 RazaoSocial VARCHAR(90) NOT NULL,
 Vendedor VARCHAR(85) NOT NULL,
 CodigoFornecedor INT(8) NOT NULL,
 CNPJ INT(14) NOT NULL,
 Logradouro VARCHAR(100) NOT NULL,
 Numero INT(5) NOT NULL,
 Complemento VARCHAR(80),
 Bairro VARCHAR(60) NOT NULL,
 CEP INT(8) NOT NULL, 
 FK_idCidade INT(5) NOT NULL,
 FK_idEstado INT(5) NOT NULL,
 PRIMARY KEY (idFornecedor)
);

CREATE TABLE Modelo(
 idModelo INT(5) NOT NULL,
 Tipo VARCHAR(20) NOT NULL,
 NomeModelo VARCHAR(50) NOT NULL,
 FK_idFabricante INT(5) NOT NULL,
 PRIMARY KEY (idModelo)
);

CREATE TABLE Nota(
 idNota INT(6) NOT NULL,
 dataCompra DATE NOT NULL,
 dataVencimento DATE NOT NULL,
 Numero INT (5) NOT NULL,
 FK_idFornecedor INT(4) NOT NULL,
 PRIMARY KEY (idNota)
);

CREATE TABLE Ordem(
 idOrdem INT(11) NOT NULL AUTO_INCREMENT,
 DataRegistro DATE NOT NULL,
 DataPagamento DATE NOT NULL,
 Pago boolean NOT NULL,
 Concluida boolean NOT NULL,
 FK_idCliente INT(6) NOT NULL,
 FK_idVeiculo INT(6) NOT NULL,
 PRIMARY KEY (idOrdem)
);

CREATE TABLE OrdemServico(
 idOrdemServico INT(11) NOT NULL AUTO_INCREMENT,
 FK_idOrdem INT(10) NOT NULL,
 FK_idServico INT(5) NOT NULL, 
 PRIMARY KEY (idOrdemServico)
);

CREATE TABLE Servicos(
 idServico INT(6) NOT NULL AUTO_INCREMENT,
 Descricao VARCHAR(255) NOT NULL,
 ValorServico FLOAT (7,2) NOT NULL, 
 PRIMARY KEY (idServico)
);

CREATE TABLE Tipo(
 idTipo INT(5) NOT NULL AUTO_INCREMENT,
 nome VARCHAR(50) NOT NULL, 
 PRIMARY KEY (idTipo)
);

CREATE TABLE TipoFornecedor(
 FK_idTipo INT(3) NOT NULL,
 FK_idFornecedor INT(4) NOT NULL
);

CREATE TABLE Veiculo(
 idVeiculo INT(6) NOT NULL AUTO_INCREMENT,
 FK_idModelo INT(5) NOT NULL,
 FK_idFabricante INT(5) NOT NULL,
 FK_idCor INT(3) NOT NULL,
 quilometragem INT(10) NOT NULL,
 placa VARCHAR(7) NOT NULL,
 PRIMARY KEY (idVeiculo)
)
