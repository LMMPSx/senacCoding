UPDATE Livro
SET Preco = 85.00
WHERE ISBN = '978-3-16-148410-0';

UPDATE Autor
SET Nome = 'Ricardo Max Pereira'
WHERE ID_Autor = 1;

UPDATE Livro
SET NumPaginas = 340
WHERE ISBN = '978-0-06-112008-4';

UPDATE Cliente
SET Telefone = '9999-9999'
WHERE CPF = '123.456.789-00';

UPDATE PedidoVenda
SET Status = 'Concluído'
WHERE ID_Pedido = 1;

UPDATE Livro
SET Descricao = 'Uma nova descrição sobre os mistérios do universo.'
WHERE ISBN = '978-0-7432-7356-5';

UPDATE ItemPedido
SET PrecoUnitario = 120.00
WHERE ID_Pedido = 1 AND ISBN_Livro = '978-3-16-148410-0';

UPDATE Funcionario
SET Cargo = 'Gerente'
WHERE CPF = '987.654.321-00';

UPDATE ItemPedido
SET Quantidade = 5
WHERE ID_Pedido = 2 AND ISBN_Livro = '978-1-86197-876-9';

UPDATE Exemplar
SET Observacoes = 'Veio com falha na impressão'
WHERE NumeroSerie = 'EX001';

DELETE FROM Livro
WHERE ISBN = '978-3-16-148410-0';

DELETE FROM Autor
WHERE ID_Autor = 1;

DELETE FROM PedidoVenda
WHERE ID_Pedido = 5;

DELETE FROM ItemPedido
WHERE ID_Pedido = 2 AND ISBN_Livro = '978-0-06-112008-4';

DELETE FROM Cliente
WHERE CPF = '123.456.789-00';

DELETE FROM Exemplar
WHERE NumeroSerie = 'EX12345';

DELETE FROM Endereco
WHERE ID_Endereco = 3;

DELETE FROM PedidoVenda
WHERE ID_Pedido = 8;

DELETE FROM LivroAutor
WHERE ISBN = '978-0-14-243724-7' AND ID_Autor = 6;

DELETE FROM LivroPalavraChave
WHERE ISBN = '978-0-452-28423-4' AND ID_PalavraChave = 7;