CREATE TABLE Livro (
    ISBN VARCHAR(20) PRIMARY KEY,
    Titulo VARCHAR(255),
    DataPublicacao DATE,
    NumPaginas INT,
    Descricao TEXT,
    Preco DECIMAL(10, 2)
);

CREATE TABLE Autor (
    ID_Autor INT PRIMARY KEY,
    Nome VARCHAR(255),
    Biografia TEXT,
    Nacionalidade VARCHAR(100),
    DataNascimento DATE
);

CREATE TABLE Departamento (
    ID_Departamento INT PRIMARY KEY,
    Nome VARCHAR(255),
    Responsavel VARCHAR(255),
    Descricao TEXT,
    Telefone VARCHAR(15)
);

CREATE TABLE Funcionario (
    CPF VARCHAR(14) PRIMARY KEY,
    Nome VARCHAR(255),
    Cargo VARCHAR(255),
    Telefone VARCHAR(15),
    DataContratacao DATE,
    ID_Departamento INT,
    FOREIGN KEY (ID_Departamento) REFERENCES Departamento(ID_Departamento)
);

CREATE TABLE Exemplar (
    NumeroSerie VARCHAR(50) PRIMARY KEY,
    Estado VARCHAR(50),
    LocalizacaoFisica VARCHAR(255),
    DataAquisicao DATE,
    ISBN VARCHAR(20),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);

CREATE TABLE AreaConhecimento (
    ID_Area INT PRIMARY KEY,
    Codigo VARCHAR(50),
    Descricao TEXT
);

CREATE TABLE PalavraChave (
    ID_PalavraChave INT PRIMARY KEY,
    Tipo VARCHAR(50),
    Descricao TEXT
);

CREATE TABLE Cliente (
    CPF VARCHAR(14) PRIMARY KEY,
    Nome VARCHAR(255),
    Telefone VARCHAR(15),
    Email VARCHAR(255)
);

CREATE TABLE Endereco (
    ID_Endereco INT PRIMARY KEY,
    Logradouro VARCHAR(255),
    Numero INT,
    Bairro VARCHAR(100),
    Cidade VARCHAR(100),
    Estado VARCHAR(50),
    CEP VARCHAR(10),
    Complemento VARCHAR(255),
    CPF VARCHAR(14),
    FOREIGN KEY (CPF) REFERENCES Cliente(CPF) ON DELETE CASCADE,
    CPF_Funcionario VARCHAR(14),
    FOREIGN KEY (CPF_Funcionario) REFERENCES Funcionario(CPF) ON DELETE CASCADE
);

CREATE TABLE PedidoVenda (
    ID_Pedido INT PRIMARY KEY,
    DataTransacao DATE,
    Status VARCHAR(50),
    DetalhesPagamento TEXT,
    ValorTotal DECIMAL(10, 2),
    CPF_Cliente VARCHAR(14),
    FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF),
    CPF_Funcionario VARCHAR(14),
    FOREIGN KEY (CPF_Funcionario) REFERENCES Funcionario(CPF)
);

CREATE TABLE ItemPedido (
    ID_Pedido INT,
    ISBN_Livro VARCHAR(20),
    Quantidade INT,
    PrecoUnitario DECIMAL(10, 2),
    PRIMARY KEY (ID_Pedido, ISBN_Livro),
    FOREIGN KEY (ID_Pedido) REFERENCES PedidoVenda(ID_Pedido),
    FOREIGN KEY (ISBN_Livro) REFERENCES Livro(ISBN)
);

CREATE TABLE LivroAutor (
    ISBN VARCHAR(20),
    ID_Autor INT,
    PRIMARY KEY (ISBN, ID_Autor),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (ID_Autor) REFERENCES Autor(ID_Autor)
);

CREATE TABLE LivroAreaConhecimento (
    ISBN VARCHAR(20),
    ID_Area INT,
    PRIMARY KEY (ISBN, ID_Area),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (ID_Area) REFERENCES AreaConhecimento(ID_Area)
);

CREATE TABLE LivroPalavraChave (
    ISBN VARCHAR(20),
    ID_PalavraChave INT,
    PRIMARY KEY (ISBN, ID_PalavraChave),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (ID_PalavraChave) REFERENCES PalavraChave(ID_PalavraChave)
);