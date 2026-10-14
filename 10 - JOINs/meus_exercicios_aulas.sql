-- 10 - JOINs | Exercícios das aulas
-- Minhas respostas (escreva abaixo de cada enunciado)

-- MODULO 09 - JOINs - DESAFIOS DAS AULAS
-- AULA 42 - INNER JOIN - Juntando Tabelas
-- Aula 42 - Desafio 1: Listar todos os produtos com o nome de suas categorias
-- Mostre: nome do produto, preco, nome da categoria



-- Aula 42 - Desafio 2: Listar todos os pedidos com o nome dos clientes
-- Mostre: pedido_id, data_pedido, valor_total, nome do cliente, email do cliente



-- AULA 43 - LEFT JOIN - Mantendo Todos a Esquerda
-- Aula 43 - Desafio 1: Listar todos os produtos, incluindo os que nunca foram vendidos
-- Mostre: nome do produto, preco, quantidade vendida



-- Aula 43 - Desafio 2: Listar todos os clientes, incluindo os que nunca fizeram pedidos
-- Mostre: nome do cliente, email, quantidade de pedidos (0 se nunca fez)



-- AULA 44 - RIGHT JOIN - Mantendo Todos a Direita
-- Aula 44 - Desafio 1: Listar todos os pedidos e seus pagamentos (mantendo pedidos sem pagamento)
-- Use RIGHT JOIN com pedidos a direita



-- Aula 44 - Desafio 2: Reescreva o desafio anterior usando LEFT JOIN
-- O resultado deve ser identico



-- AULA 45 - FULL OUTER JOIN - Mantendo Todos os Registros
-- Aula 45 - Desafio 1: Listar todos os produtos e todas as avaliacoes
-- Mostre produtos sem avaliacao E avaliacoes (se houver alguma orfa)



-- Aula 45 - Desafio 2: Produtos com baixo engajamento de avaliações
-- Liste produtos com poucas ou nenhuma avaliação (menos de 3 avaliações)
-- Use FULL OUTER JOIN para garantir que todos os produtos sejam incluídos



-- AULA 46 - SELF JOIN - Juntando Tabela com Ela Mesma
-- Aula 46 - Desafio 1: Encontrar clientes que moram na mesma cidade
-- Evite duplicatas e auto-comparacao



-- Aula 46 - Desafio 2: Encontrar produtos da mesma categoria com precos similares
-- Considere "similar" uma diferenca menor que R$ 100



-- AULA 47 - Multiplos JOINs na Mesma Consulta
-- Aula 47 - Desafio 1: Listar pedidos com nome do cliente, produtos comprados e categoria
-- Mostre: pedido_id, data_pedido, nome do cliente, nome do produto, categoria, quantidade



-- Aula 47 - Desafio 2: Criar relatorio completo de vendas
-- Mostre: pedido_id, cliente, cidade, produto, categoria, quantidade, valor unitario, subtotal, forma pagamento
-- Apenas pedidos com status 'entregue'

