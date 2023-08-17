ALTER TABLE anomodelo ADD CONSTRAINT FK_Ano_Modelo 
FOREIGN KEY (FK_idModelo) REFERENCES modelo (idModelo);

ALTER TABLE cidade ADD CONSTRAINT FK_Cidade_Estado 
FOREIGN KEY (FK_idEstado) REFERENCES estado (idEstado);

ALTER TABLE cliente ADD CONSTRAINT FK_Cliente_Cidade
FOREIGN KEY (FK_idCidade) REFERENCES cidade (idCidade);

ALTER TABLE cliente ADD CONSTRAINT FK_Cliente_Estado
FOREIGN KEY (FK_idEstado) REFERENCES estado (idEstado);

ALTER TABLE estoquefornecedor ADD CONSTRAINT FK_Fornecedor_Estoque
FOREIGN KEY (FK_idFornecedor) REFERENCES fornecedor (idFornecedor);

ALTER TABLE estoquefornecedor ADD CONSTRAINT FK_Estoque_Fornecedor
FOREIGN KEY (FK_idPeca) REFERENCES estoque (idPeca);

ALTER TABLE estoquenota ADD CONSTRAINT FK_Nota_Estoque
FOREIGN KEY (FK_idNota) REFERENCES nota (idNota);

ALTER TABLE estoquenota ADD CONSTRAINT FK_Estoque_Nota
FOREIGN KEY (FK_idPeca) REFERENCES estoque (idPeca);

ALTER TABLE estoqueordemservico ADD CONSTRAINT FK_OS_Estoque
FOREIGN KEY (FK_idOS) REFERENCES ordemservico (idOrdemServico);

ALTER TABLE estoqueordemservico ADD CONSTRAINT FK_Estoque_OS
FOREIGN KEY (FK_idPeca) REFERENCES estoque (idPeca);

ALTER TABLE fornecedor ADD CONSTRAINT FK_Fornecedor_Cidade
FOREIGN KEY (FK_idCidade) REFERENCES cidade (idCidade);

ALTER TABLE fornecedor ADD CONSTRAINT FK_Fornecedor_Estado
FOREIGN KEY (FK_idEstado) REFERENCES estado (idEstado);

ALTER TABLE modelo ADD CONSTRAINT FK_Modelo_Fabricante
FOREIGN KEY (FK_idFabricante) REFERENCES fabricante (idFabricante);

ALTER TABLE nota ADD CONSTRAINT FK_Nota_Fornecedor
FOREIGN KEY (FK_idFornecedor) REFERENCES fornecedor(idFornecedor);

ALTER TABLE ordem ADD CONSTRAINT FK_Ordem_Cliente
FOREIGN KEY (FK_idCliente) REFERENCES cliente (idCliente);

ALTER TABLE ordem ADD CONSTRAINT FK_Ordem_Veiculo
FOREIGN KEY (FK_idVeiculo) REFERENCES veiculo (idVeiculo);

ALTER TABLE ordemservico ADD CONSTRAINT FK_OS_Ordem
FOREIGN KEY (FK_idOrdem) REFERENCES ordem (idOrdem);

ALTER TABLE ordemservico ADD CONSTRAINT FK_OS_Servico
FOREIGN KEY (FK_idServico) REFERENCES servicos (idServico);

ALTER TABLE tipofornecedor ADD CONSTRAINT FK_Tipo_Fornecedor
FOREIGN KEY (FK_idTipo) REFERENCES tipo (idTipo);

ALTER TABLE tipofornecedor ADD CONSTRAINT FK_Fornecedor_Tipo
FOREIGN KEY (FK_idFornecedor) REFERENCES fornecedor (idFornecedor);

ALTER TABLE veiculo ADD CONSTRAINT FK_Veiculo_Modelo
FOREIGN KEY (FK_idModelo) REFERENCES modelo (idModelo);

ALTER TABLE veiculo ADD CONSTRAINT FK_Veiculo_Fabricante
FOREIGN KEY (FK_idFabricante) REFERENCES fabricante (idFabricante);

ALTER TABLE veiculo ADD CONSTRAINT FK_Veiculo_Cor
FOREIGN KEY (FK_idCor) REFERENCES cor (idCor)
