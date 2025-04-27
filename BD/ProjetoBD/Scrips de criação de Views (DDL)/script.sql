CREATE VIEW View_Livros_Autores AS
SELECT L.Titulo, A.Nome AS Autor
FROM Livro L
JOIN LivroAutor LA ON L.ISBN = LA.ISBN
JOIN Autor A ON LA.ID_Autor = A.ID_Autor;

CREATE VIEW View_Livros_AreaConhecimento AS
SELECT L.Titulo, AC.Descricao AS AreaConhecimento
FROM Livro L
JOIN LivroAreaConhecimento LAC ON L.ISBN = LAC.ISBN
JOIN AreaConhecimento AC ON LAC.ID_Area = AC.ID_Area;

CREATE VIEW View_Livros_PalavrasChave AS
SELECT L.Titulo, P.Descricao AS PalavraChave
FROM Livro L
JOIN LivroPalavraChave LPC ON L.ISBN = LPC.ISBN
JOIN PalavraChave P ON LPC.ID_PalavraChave = P.ID_PalavraChave;

CREATE VIEW View_Exemplares_Livro AS
SELECT E.NumeroSerie, E.Estado, E.LocalizacaoFisica, E.DataAquisicao
FROM Exemplar E
WHERE E.ISBN = '978-3-16-148410-0';

CREATE VIEW View_Pedidos_Cliente AS
SELECT PV.ID_Pedido, PV.DataTransacao, PV.Status, PV.ValorTotal
FROM PedidoVenda PV
JOIN Cliente C ON PV.CPF_Cliente = C.CPF
WHERE C.CPF = '234.567.890-11';

CREATE VIEW View_Itens_Pedido AS
SELECT IP.ISBN_Livro, L.Titulo, IP.Quantidade, IP.PrecoUnitario
FROM ItemPedido IP
JOIN Livro L ON IP.ISBN_Livro = L.ISBN
WHERE IP.ID_Pedido = 10; 

CREATE VIEW View_Livros_Autor_Specifico AS
SELECT L.Titulo
FROM Livro L
JOIN LivroAutor LA ON L.ISBN = LA.ISBN
WHERE LA.ID_Autor = 7;

CREATE VIEW View_Clientes_Pedidos AS
SELECT C.Nome, PV.ID_Pedido, PV.DataTransacao, PV.ValorTotal
FROM Cliente C
JOIN PedidoVenda PV ON C.CPF = PV.CPF_Cliente;

CREATE VIEW View_Funcionarios_Departamentos AS
SELECT F.Nome, D.Nome AS Departamento
FROM Funcionario F
JOIN Departamento D ON F.ID_Departamento = D.ID_Departamento;

CREATE VIEW View_Exemplares_Observacoes AS
SELECT E.NumeroSerie, E.Estado, E.LocalizacaoFisica, E.DataAquisicao, E.Observacoes
FROM Exemplar E
WHERE E.Observacoes IS NOT NULL;