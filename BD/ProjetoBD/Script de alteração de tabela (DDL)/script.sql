ALTER TABLE Livro
ADD Idioma VARCHAR(50);

ALTER TABLE Livro
ADD Genero VARCHAR(100);

ALTER TABLE Funcionario
ADD Salario DECIMAL(10, 2);

ALTER TABLE Cliente
MODIFY Telefone VARCHAR(20);

ALTER TABLE Cliente
ADD DataNascimento DATE;

ALTER TABLE Funcionario
ADD Email VARCHAR(255);

ALTER TABLE PedidoVenda
ADD StatusPedido VARCHAR(50);

ALTER TABLE PedidoVenda
ADD DataEntrega DATE;

ALTER TABLE Exemplar
ADD Observacoes TEXT;

ALTER TABLE Departamento
CHANGE Responsavel Gerente VARCHAR(255);