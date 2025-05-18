-- Lista dos empregados admitidos entre 2019-01-01 e 2022-03-31
SELECT nome, cpf, dataAdm, salario, Departamento_idDepartamento, email
FROM Empregado
WHERE dataAdm BETWEEN '2023-01-01' AND '2023-03-31'
ORDER BY dataAdm DESC;

-- Empregados com salário acima da média geral dos funcionários
SELECT e.nome, e.cpf, e.dataAdm, e.salario, t.numero AS telefone, d.nome AS nome_departamento
FROM Empregado e
LEFT JOIN Telefone t ON t.Empregado_cpf = e.cpf
JOIN Departamento d ON d.idDepartamento = e.Departamento_idDepartamento
WHERE e.salario > (
    SELECT AVG(salario) FROM Empregado
)
ORDER BY e.nome;

-- Departamentos com total de empregados, média salarial, comissão e bonificação
SELECT d.nome AS departamento, 
       COUNT(e.cpf) AS qtd_empregados,
       ROUND(AVG(e.salario), 2) AS media_salarial,
       ROUND(AVG(e.comissao), 2) AS media_comissao,
       ROUND(AVG(e.bonificacao), 2) AS media_bonificacao
FROM Departamento d
LEFT JOIN Empregado e ON e.Departamento_idDepartamento = d.idDepartamento
GROUP BY d.nome;

-- Quantidade de vendas por empregado com total vendido e comissão
SELECT e.nome, e.cpf, e.sexo, e.salario,
       COUNT(v.idVenda) AS qtd_vendas,
       SUM(v.valor) AS total_vendido,
       SUM(v.comissao) AS total_comissao
FROM Empregado e
JOIN Venda v ON v.Empregado_cpf = e.cpf
GROUP BY e.cpf
ORDER BY qtd_vendas DESC;

-- Serviços prestados por empregado com total por empregado
SELECT e.nome, e.cpf, e.sexo, e.salario,
       COUNT(isv.Servico_idServico) AS qtd_servicos,
       SUM(isv.valor) AS valor_total_servicos,
       SUM(isv.valor) + SUM(v.comissao) AS total_com_servico
FROM Empregado e
JOIN Venda v ON v.Empregado_cpf = e.cpf
JOIN itensServico isv ON isv.Venda_idVenda = v.idVenda
GROUP BY e.cpf
ORDER BY qtd_servicos DESC;

-- Lista dos serviços já realizados por um Pet
SELECT p.nome AS nome_pet, v.data AS data_servico,s.nome AS nome_servico, isv.valor, e.nome AS empregado
FROM itensServico isv
JOIN PET p ON p.idPET = isv.PET_idPET
JOIN Servico s ON s.idServico = isv.Servico_idServico
JOIN Venda v ON v.idVenda = isv.Venda_idVenda
JOIN Empregado e ON e.cpf = v.Empregado_cpf
ORDER BY v.data ASC
LIMIT 0, 1000;


-- Lista das vendas realizadas para um Cliente
SELECT v.data AS data_venda, v.valor, v.desconto, (v.valor - v.desconto) AS valor_final, e.nome AS empregado
FROM Venda v
JOIN Cliente c ON c.cpf = v.Cliente_cpf
JOIN Empregado e ON e.cpf = v.Empregado_cpf
ORDER BY v.data DESC;

-- Top 10 serviços mais vendidos
SELECT s.nome AS servico, COUNT(*) AS qtd_vendida, 
       SUM(isv.valor) AS total_valor
FROM itensServico isv
JOIN Servico s ON s.idServico = isv.Servico_idServico
GROUP BY s.nome
ORDER BY qtd_vendida DESC
LIMIT 10;

-- Formas de pagamento mais utilizadas nas Vendas
SELECT fp.tipo, COUNT(*) AS qtd_vendas, SUM(fp.valorPago) AS total_pago
FROM formapgvenda fp
GROUP BY fp.tipo
ORDER BY qtd_vendas DESC
LIMIT 0, 1000;

-- Balanço das vendas
SELECT v.data AS data_venda, COUNT(v.idVenda) AS qtd_vendas,
       SUM(v.valor) AS total_vendido
FROM Venda v
GROUP BY v.data
ORDER BY v.data DESC;

-- Lista dos Produtos com Fornecedor
SELECT p.nome AS produto, p.valorVenda, p.precoCusto, f.nome AS fornecedor, f.email, MIN(tf.numero) AS telefone
FROM Produtos p
JOIN ItensCompra ic ON ic.Produtos_idProduto = p.idProduto
JOIN Compras c ON c.idCompra = ic.Compras_idCompra
JOIN Fornecedor f ON f.cpf_cnpj = c.Fornecedor_cpf_cnpj
LEFT JOIN Telefone tf ON tf.Fornecedor_cpf_cnpj = f.cpf_cnpj
GROUP BY p.nome, p.valorVenda, p.precoCusto, f.nome, f.email
LIMIT 1000;

-- Total de produtos mais vendidos (quantidade e valor)
SELECT p.nome AS produto,
       SUM(ivp.quantidade) AS total_vendido,
       SUM(ivp.valor) AS valor_total,
       SUM(ivp.valor - ivp.desconto) AS valor_recebido
FROM ItensVendaProd ivp
JOIN Produtos p ON p.idProduto = ivp.Produto_idProduto
GROUP BY p.nome
ORDER BY total_vendido DESC;
