SELECT L.Titulo, A.Nome AS Autor
FROM Livro L
JOIN LivroAutor LA ON L.ISBN = LA.ISBN
JOIN Autor A ON LA.ID_Autor = A.ID_Autor;

SELECT L.Titulo, AC.Descricao AS AreaConhecimento
FROM Livro L
JOIN LivroAreaConhecimento LAC ON L.ISBN = LAC.ISBN
JOIN AreaConhecimento AC ON LAC.ID_Area = AC.ID_Area;

SELECT L.Titulo, P.Descricao AS PalavraChave
FROM Livro L
JOIN LivroPalavraChave LPC ON L.ISBN = LPC.ISBN
JOIN PalavraChave P ON LPC.ID_PalavraChave = P.ID_PalavraChave;

SELECT E.NumeroSerie, E.Estado, E.LocalizacaoFisica, E.DataAquisicao
FROM Exemplar E
WHERE E.ISBN = '978-0-06-112008-4'; 

SELECT PV.ID_Pedido, PV.DataTransacao, PV.Status, PV.ValorTotal
FROM PedidoVenda PV
JOIN Cliente C ON PV.CPF_Cliente = C.CPF
WHERE C.CPF = '123.456.789-00';

SELECT IP.ISBN_Livro, L.Titulo, IP.Quantidade, IP.PrecoUnitario
FROM ItemPedido IP
JOIN Livro L ON IP.ISBN_Livro = L.ISBN
WHERE IP.ID_Pedido = 1; 
SELECT L.Titulo
FROM Livro L
JOIN LivroAutor LA ON L.ISBN = LA.ISBN
WHERE LA.ID_Autor = 4;

SELECT C.Nome, PV.ID_Pedido, PV.DataTransacao, PV.ValorTotal
FROM Cliente C
JOIN PedidoVenda PV ON C.CPF = PV.CPF_Cliente;

SELECT F.Nome, D.Nome AS Departamento
FROM Funcionario F
JOIN Departamento D ON F.ID_Departamento = D.ID_Departamento;

SELECT E.NumeroSerie, E.Estado, E.LocalizacaoFisica, E.DataAquisicao, E.Observacoes
FROM Exemplar E
WHERE E.Observacoes IS NOT NULL;

SELECT D.Nome, D.Gerente
FROM Departamento D;

SELECT C.Nome, PV.ID_Pedido, L.Titulo
FROM Cliente C
JOIN PedidoVenda PV ON C.CPF = PV.CPF_Cliente
JOIN ItemPedido IP ON PV.ID_Pedido = IP.ID_Pedido
JOIN Livro L ON IP.ISBN_Livro = L.ISBN
JOIN LivroAreaConhecimento LAC ON L.ISBN = LAC.ISBN
JOIN AreaConhecimento AC ON LAC.ID_Area = AC.ID_Area
WHERE AC.Descricao = 'Tecnologia';  -- Substitua pela categoria desejada

SELECT L.Titulo, L.NumPaginas
FROM Livro L
WHERE L.NumPaginas > 300;

SELECT F.Nome, F.DataContratacao
FROM Funcionario F
WHERE YEAR(F.DataContratacao) = 2018;

SELECT L.Titulo, L.Preco
FROM Livro L
WHERE L.Preco > 100;

SELECT E.Logradouro, E.Numero, E.Bairro, E.Cidade, E.Estado, E.CEP
FROM Endereco E
JOIN Cliente C ON E.CPF = C.CPF;

SELECT L.Titulo, P.Descricao AS PalavraChave
FROM Livro L
JOIN LivroPalavraChave LPC ON L.ISBN = LPC.ISBN
JOIN PalavraChave P ON LPC.ID_PalavraChave = P.ID_PalavraChave;

SELECT PV.ID_Pedido, IP.ISBN_Livro, L.Titulo, IP.Quantidade
FROM PedidoVenda PV
JOIN ItemPedido IP ON PV.ID_Pedido = IP.ID_Pedido
JOIN Livro L ON IP.ISBN_Livro = L.ISBN;

SELECT L.Titulo
FROM Livro L
WHERE LENGTH(L.Descricao) > 150;

SELECT L.Titulo, E.NumeroSerie, E.LocalizacaoFisica
FROM Livro L
JOIN Exemplar E ON L.ISBN = E.ISBN;