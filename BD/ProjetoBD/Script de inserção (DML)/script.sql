INSERT INTO Departamento (ID_Departamento, Nome, Gerente, Descricao, Telefone) VALUES
(1, 'Editorial', 'Ana Costa', 'Responsável pela edição dos livros', '(11) 99999-1111'),
(2, 'Marketing', 'Bruno Lima', 'Responsável pela divulgação e marketing', '(11) 99999-2222'),
(3, 'Financeiro', 'Carlos Souza', 'Responsável pelas finanças e pagamentos', '(11) 99999-3333'),
(4, 'TI', 'Daniela Ramos', 'Responsável pelos sistemas internos', '(11) 99999-4444'),
(5, 'Vendas', 'Eduardo Silva', 'Responsável pelas vendas dos livros', '(11) 99999-5555'),
(6, 'RH', 'Fernanda Melo', 'Responsável pela gestão de pessoas', '(11) 99999-6666'),
(7, 'Produção', 'Gabriel Torres', 'Responsável pela produção dos exemplares', '(11) 99999-7777'),
(8, 'Jurídico', 'Helena Dias', 'Responsável pelas questões legais', '(11) 99999-8888'),
(9, 'Pesquisa', 'Igor Martins', 'Responsável por pesquisas de mercado', '(11) 99999-9999'),
(10, 'Logística', 'Julia Ferreira', 'Responsável pela entrega dos livros', '(11) 98888-0000');

INSERT INTO Funcionario (CPF, Nome, Cargo, Telefone, DataContratacao, ID_Departamento, Salario, Email) VALUES
('111.111.111-11', 'Marcos Pereira', 'Editor Chefe', '(11) 98888-1111', '2018-03-10', 1, 8000.00, 'marcos.pereira@editora.com'),
('222.222.222-22', 'Patrícia Silva', 'Analista de Marketing', '(11) 98888-2222', '2019-07-15', 2, 5500.00, 'patricia.silva@editora.com'),
('333.333.333-33', 'Rodrigo Alves', 'Contador', '(11) 98888-3333', '2020-01-20', 3, 6000.00, 'rodrigo.alves@editora.com'),
('444.444.444-44', 'Carla Mota', 'Analista de TI', '(11) 98888-4444', '2017-11-05', 4, 7000.00, 'carla.mota@editora.com'),
('555.555.555-55', 'Fernando Costa', 'Vendedor', '(11) 98888-5555', '2021-02-01', 5, 4000.00, 'fernando.costa@editora.com'),
('666.666.666-66', 'Gisele Souza', 'Analista de RH', '(11) 98888-6666', '2016-05-23', 6, 5200.00, 'gisele.souza@editora.com'),
('777.777.777-77', 'Lucas Mendes', 'Supervisor de Produção', '(11) 98888-7777', '2015-09-17', 7, 7500.00, 'lucas.mendes@editora.com'),
('888.888.888-88', 'Viviane Rocha', 'Advogada', '(11) 98888-8888', '2014-12-12', 8, 9000.00, 'viviane.rocha@editora.com'),
('999.999.999-99', 'Thiago Martins', 'Pesquisador', '(11) 98888-9999', '2022-06-30', 9, 6500.00, 'thiago.martins@editora.com'),
('000.000.000-00', 'Larissa Lima', 'Logística', '(11) 97777-0000', '2018-08-08', 10, 5800.00, 'larissa.lima@editora.com');

INSERT INTO Cliente (CPF, Nome, Telefone, Email, DataNascimento) VALUES
('123.456.789-00', 'Amanda Silva', '(11) 91234-5678', 'amanda.silva@email.com', '1995-04-12'),
('234.567.890-11', 'Bruno Costa', '(21) 92345-6789', 'bruno.costa@email.com', '1988-09-23'),
('345.678.901-22', 'Camila Souza', '(31) 93456-7890', 'camila.souza@email.com', '1992-02-17'),
('456.789.012-33', 'Daniel Rocha', '(41) 94567-8901', 'daniel.rocha@email.com', '1985-07-30'),
('567.890.123-44', 'Elaine Mendes', '(51) 95678-9012', 'elaine.mendes@email.com', '1990-11-05'),
('678.901.234-55', 'Fabio Almeida', '(61) 96789-0123', 'fabio.almeida@email.com', '1987-06-15'),
('789.012.345-66', 'Gabriela Freitas', '(71) 97890-1234', 'gabriela.freitas@email.com', '1996-12-08'),
('890.123.456-77', 'Henrique Martins', '(81) 98901-2345', 'henrique.martins@email.com', '1993-03-21'),
('901.234.567-88', 'Isabela Ribeiro', '(91) 99012-3456', 'isabela.ribeiro@email.com', '1989-10-10'),
('012.345.678-99', 'João Pereira', '(31) 90123-4567', 'joao.pereira@email.com', '1991-01-01');

INSERT INTO Endereco (ID_Endereco, Logradouro, Numero, Bairro, Cidade, Estado, CEP, Complemento, CPF, CPF_Funcionario) VALUES
(1, 'Rua das Acácias', 100, 'Centro', 'São Paulo', 'SP', '01000-000', 'Apto 101', '123.456.789-00', NULL),
(2, 'Avenida Brasil', 200, 'Jardins', 'Rio de Janeiro', 'RJ', '20000-000', 'Casa', '234.567.890-11', NULL),
(3, 'Rua das Palmeiras', 300, 'Savassi', 'Belo Horizonte', 'MG', '30000-000', '', '345.678.901-22', NULL),
(4, 'Avenida Atlântica', 400, 'Copacabana', 'Rio de Janeiro', 'RJ', '22000-000', 'Cobertura', '456.789.012-33', NULL),
(5, 'Rua da Liberdade', 500, 'Liberdade', 'São Paulo', 'SP', '01500-000', '', '567.890.123-44', NULL),
(6, 'Rua do Comércio', 600, 'Centro', 'Porto Alegre', 'RS', '90000-000', 'Sala 202', '678.901.234-55', NULL),
(7, 'Alameda dos Anjos', 700, 'Aldeota', 'Fortaleza', 'CE', '60000-000', '', '789.012.345-66', NULL),
(8, 'Travessa das Flores', 800, 'Centro', 'Recife', 'PE', '50000-000', '', '890.123.456-77', NULL),
(9, 'Rua do Sol', 900, 'Cidade Nova', 'Belém', 'PA', '66000-000', 'Bloco A', '901.234.567-88', NULL),
(10, 'Rua Primavera', 1000, 'Centro', 'Curitiba', 'PR', '80000-000', '', '012.345.678-99', NULL),
(11, 'Rua Projetada', 111, 'Centro', 'São Paulo', 'SP', '01001-001', '', NULL, '111.111.111-11'),
(12, 'Rua Nova', 222, 'Jardim América', 'São Paulo', 'SP', '01410-000', 'Conjunto 2', NULL, '222.222.222-22'),
(13, 'Av. Paulista', 333, 'Bela Vista', 'São Paulo', 'SP', '01310-000', 'Andar 3', NULL, '333.333.333-33'),
(14, 'Rua Augusta', 444, 'Consolação', 'São Paulo', 'SP', '01305-000', '', NULL, '444.444.444-44'),
(15, 'Rua 25 de Março', 555, 'Centro', 'São Paulo', 'SP', '01021-100', '', NULL, '555.555.555-55'),
(16, 'Rua das Flores', 666, 'Campo Belo', 'São Paulo', 'SP', '04670-000', '', NULL, '666.666.666-66'),
(17, 'Rua São José', 777, 'Jardim das Perdizes', 'São Paulo', 'SP', '05000-000', '', NULL, '777.777.777-77'),
(18, 'Rua Brasil', 888, 'Moema', 'São Paulo', 'SP', '04060-000', '', NULL, '888.888.888-88'),
(19, 'Rua Direita', 999, 'Centro', 'São Paulo', 'SP', '01001-200', '', NULL, '999.999.999-99'),
(20, 'Rua das Acácias', 1000, 'Vila Progredir', 'São Paulo', 'SP', '01000-100', '', NULL, '000.000.000-00');

INSERT INTO PedidoVenda (ID_Pedido, DataTransacao, Status, DetalhesPagamento, ValorTotal, CPF_Cliente, CPF_Funcionario) VALUES
(1, '2025-04-01', 'Em Andamento', 'Cartão de Crédito - 1x', 150.00, '123.456.789-00', '111.111.111-11'),
(2, '2025-04-02', 'Concluído', 'Boleto Bancário - Pago', 250.00, '234.567.890-11', '222.222.222-22'),
(3, '2025-04-03', 'Cancelado', 'Cartão de Crédito - 2x', 100.00, '345.678.901-22', '333.333.333-33'),
(4, '2025-04-04', 'Em Andamento', 'Pix', 320.00, '456.789.012-33', '444.444.444-44'),
(5, '2025-04-05', 'Concluído', 'Cartão de Crédito - 3x', 200.00, '567.890.123-44', '555.555.555-55'),
(6, '2025-04-06', 'Em Andamento', 'Boleto Bancário - Não Pago', 180.00, '678.901.234-55', '666.666.666-66'),
(7, '2025-04-07', 'Concluído', 'Cartão de Crédito - 1x', 120.00, '789.012.345-66', '777.777.777-77'),
(8, '2025-04-08', 'Cancelado', 'Boleto Bancário - Pago', 160.00, '890.123.456-77', '888.888.888-88'),
(9, '2025-04-09', 'Em Andamento', 'Cartão de Crédito - 2x', 220.00, '901.234.567-88', '999.999.999-99'),
(10, '2025-04-10', 'Concluído', 'Pix', 300.00, '012.345.678-99', '000.000.000-00');

INSERT INTO Livro (ISBN, Titulo, DataPublicacao, NumPaginas, Descricao, Preco) VALUES
('978-3-16-148410-0', 'O Poder da Imaginação', '2025-01-01', 320, 'Uma obra que explora os limites da criatividade humana e os caminhos para desbloquear o potencial mental. Ideal para aqueles que buscam expandir sua mente e imaginar novos mundos.', 79.99),
('978-1-86197-876-9', 'A Jornada do Herói', '2025-02-01', 450, 'Este livro é uma profunda análise do conceito de jornada do herói nas culturas e histórias do mundo, oferecendo uma visão poderosa e única sobre o desenvolvimento pessoal.', 120.00),
('978-0-06-112008-4', 'Segredos do Universo', '2025-03-01', 380, 'Um estudo sobre os mistérios do universo, combinando física, filosofia e espiritualidade, para aqueles que querem entender o cosmos além do que os olhos podem ver.', 99.99),
('978-0-7432-7356-5', 'Tecnologia e o Futuro', '2025-04-01', 300, 'Com o avanço tecnológico a passos largos, este livro discute como a inovação moldará o futuro das nossas vidas, desde a inteligência artificial até a biotecnologia.', 159.00),
('978-0-671-02735-9', 'Mente Inquieta', '2025-05-01', 290, 'A mente humana é um campo complexo e fascinante. Este livro oferece insights para aqueles que lidam com transtornos mentais e procuram equilíbrio e paz interior.', 85.50),
('978-0-14-243724-7', 'Códigos Secretos', '2025-06-01', 215, 'Uma obra envolvente de mistério e intriga, onde o protagonista busca resolver códigos e enigmas antigos que podem mudar o curso da história mundial.', 110.00),
('978-0-452-28423-4', 'Viajante no Tempo', '2025-07-01', 250, 'Explorando os conceitos de viagem no tempo, este livro mistura ficção científica e história, trazendo uma visão fascinante sobre o que poderia ser a viagem entre as eras.', 55.00),
('978-0-06-245771-2', 'Caminhos da Alma', '2025-08-01', 400, 'Uma jornada profunda no autoconhecimento, abordando a espiritualidade de maneira acessível e prática. Uma leitura obrigatória para quem deseja despertar a alma.', 130.00),
('978-0-394-82347-6', 'História Não Contada', '2025-09-01', 520, 'Este livro revela aspectos pouco conhecidos da história mundial, abordando eventos esquecidos e figuras misteriosas que mudaram o curso da humanidade.', 115.00),
('978-0-14-312639-3', 'O Mundo das Ideias', '2025-10-01', 350, 'Uma exploração filosófica e intelectual sobre as ideias que moldaram o pensamento humano ao longo dos séculos, desde os filósofos antigos até os modernos.', 145.00);

INSERT INTO ItemPedido (ID_Pedido, ISBN_Livro, Quantidade, PrecoUnitario) VALUES
(1, '978-3-16-148410-0', 2, 75.00),
(2, '978-1-86197-876-9', 1, 125.00),
(3, '978-0-06-112008-4', 3, 33.33),
(4, '978-0-7432-7356-5', 1, 320.00),
(5, '978-0-671-02735-9', 2, 100.00),
(6, '978-0-14-243724-7', 1, 180.00),
(7, '978-0-452-28423-4', 2, 60.00),
(8, '978-0-06-245771-2', 1, 160.00),
(9, '978-0-394-82347-6', 2, 110.00),
(10, '978-0-14-312639-3', 1, 300.00);

INSERT INTO Autor (ID_Autor, Nome, Biografia, Nacionalidade, DataNascimento) VALUES
(1, 'Ricardo Max', 'Autor fictício, conhecido por explorar temas de criatividade e imaginação.', 'Brasileiro', '1985-05-15'),
(2, 'Joseph Campbell', 'Mitólogo e escritor, conhecido por seu trabalho sobre mitologia comparada e sua teoria da Jornada do Herói.', 'Americano', '1904-03-26'),
(3, 'Stephen Hawking', 'Físico teórico, cosmólogo e autor do famoso livro "Uma Breve História do Tempo".', 'Britânico', '1942-01-08'),
(4, 'Ray Kurzweil', 'Inventor e futurista, conhecido por suas previsões sobre inteligência artificial e transhumanismo.', 'Americano', '1948-02-12'),
(5, 'Alfred Adler', 'Psicoterapeuta e fundador da Psicologia Individual, famoso por sua teoria de que os sentimentos de inferioridade são fundamentais para o desenvolvimento humano.', 'Austriaco', '1870-02-07'),
(6, 'Dan Brown', 'Autor de thrillers, incluindo "O Código Da Vinci", famoso por seus livros que exploram mistérios e códigos.', 'Americano', '1964-06-22'),
(7, 'H.G. Wells', 'Escritor de ficção científica e histórico, autor de clássicos como "A Máquina do Tempo" e "A Guerra dos Mundos".', 'Britânico', '1866-09-21'),
(8, 'Deepak Chopra', 'Médico e autor de livros sobre espiritualidade e bem-estar.', 'Indiano', '1946-10-22'),
(9, 'Howard Zinn', 'Historiador e autor de "A People’s History of the United States", obra que oferece uma perspectiva alternativa sobre a história dos EUA.', 'Americano', '1922-08-24'),
(10, 'Daniel Dennett', 'Filósofo e cientista cognitivo, conhecido por suas teorias sobre a consciência e a filosofia da mente.', 'Americano', '1942-03-28');

INSERT INTO LivroAutor (ISBN, ID_Autor) VALUES
('978-3-16-148410-0', 1),
('978-1-86197-876-9', 2),
('978-0-06-112008-4', 3),
('978-0-7432-7356-5', 4),
('978-0-671-02735-9', 5),
('978-0-14-243724-7', 6),
('978-0-452-28423-4', 7),
('978-0-06-245771-2', 8),
('978-0-394-82347-6', 9),
('978-0-14-312639-3', 10);

INSERT INTO PalavraChave (ID_PalavraChave, Tipo, Descricao) VALUES
(1, 'Tema', 'Criatividade'),
(2, 'Tema', 'Jornada'),
(3, 'Tema', 'Universo'),
(4, 'Tema', 'Futuro'),
(5, 'Tema', 'Mente'),
(6, 'Tema', 'Mistério'),
(7, 'Tema', 'Viagem'),
(8, 'Tema', 'Espiritualidade'),
(9, 'Tema', 'História'),
(10, 'Tema', 'Filosofia');

INSERT INTO LivroPalavraChave (ISBN, ID_PalavraChave) VALUES
('978-3-16-148410-0', 1),
('978-1-86197-876-9', 2),
('978-0-06-112008-4', 3),
('978-0-7432-7356-5', 4), 
('978-0-671-02735-9', 5),
('978-0-14-243724-7', 6),
('978-0-452-28423-4', 7),
('978-0-06-245771-2', 8),
('978-0-394-82347-6', 9),
('978-0-14-312639-3', 10);

INSERT INTO AreaConhecimento (ID_Area, Codigo, Descricao) VALUES
(1, 'PSI', 'Psicologia'),
(2, 'LIT', 'Literatura'),
(3, 'FIS', 'Física'),
(4, 'TEC', 'Tecnologia'),
(5, 'PSI', 'Psicologia'),
(6, 'MIS', 'Mistério'),
(7, 'FC', 'Ficção Científica'),
(8, 'ESP', 'Espiritualidade'),
(9, 'HIS', 'História'),
(10, 'FIL', 'Filosofia');

INSERT INTO LivroAreaConhecimento (ISBN, ID_Area) VALUES
('978-3-16-148410-0', 1),
('978-1-86197-876-9', 2),
('978-0-06-112008-4', 3),
('978-0-7432-7356-5', 4),
('978-0-671-02735-9', 5),
('978-0-14-243724-7', 6),
('978-0-452-28423-4', 7),
('978-0-06-245771-2', 8),
('978-0-394-82347-6', 9),
('978-0-14-312639-3', 10);

INSERT INTO Exemplar (NumeroSerie, Estado, LocalizacaoFisica, DataAquisicao, ISBN) VALUES
('EX001', 'Novo', 'Prateleira 1', '2025-01-01', '978-3-16-148410-0'),
('EX002', 'Novo', 'Prateleira 2', '2025-02-01', '978-1-86197-876-9'),
('EX003', 'Novo', 'Prateleira 3', '2025-03-01', '978-0-06-112008-4'),
('EX004', 'Novo', 'Prateleira 4', '2025-04-01', '978-0-7432-7356-5'),
('EX005', 'Novo', 'Prateleira 5', '2025-05-01', '978-0-671-02735-9'),
('EX006', 'Novo', 'Prateleira 6', '2025-06-01', '978-0-14-243724-7'),
('EX007', 'Novo', 'Prateleira 7', '2025-07-01', '978-0-452-28423-4'),
('EX008', 'Novo', 'Prateleira 8', '2025-08-01', '978-0-06-245771-2'),
('EX009', 'Novo', 'Prateleira 9', '2025-09-01', '978-0-394-82347-6'),
('EX010', 'Novo', 'Prateleira 10', '2025-10-01', '978-0-14-312639-3');