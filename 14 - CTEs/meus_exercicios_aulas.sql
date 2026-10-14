-- 14 - CTEs | Exercícios das aulas
-- Minhas respostas (escreva abaixo de cada enunciado)

-- Aula 59 - Desafio 1: Ranking de Produtos Mais Vendidos
-- A gerência quer saber quais são os 10 produtos campeões de vendas.
-- Crie uma consulta usando CTE que mostre o ranking dos 10 produtos
-- mais vendidos, incluindo o nome do produto e a quantidade total vendida.



-- Aula 59 - Desafio 2: Identificando Clientes VIP
-- O departamento de marketing precisa identificar os clientes VIP
-- para criar uma campanha especial.
-- Crie uma consulta com CTEs que mostre apenas os clientes que gastaram
-- ACIMA DA MÉDIA GERAL de todos os clientes. O relatório deve incluir:
-- nome, quantidade de pedidos, total gasto, média geral e diferença para a média.



-- Aula 60 - Desafio 1: Gerador de Sequências
-- Você precisa gerar uma lista com os números de 1 a 100.
-- Use uma CTE recursiva para criar essa sequência.
-- Lembre-se: toda recursão precisa de um ponto de partida,
-- uma regra de repetição e uma condição de parada.



    -- Caso base: começa com 1



    -- Caso recursivo: soma 1 ao número anterior



-- Aula 60 - Desafio 2: Relatório de Vendas Diárias Completo
-- O diretor financeiro precisa de um relatório de vendas que mostre
-- TODOS OS DIAS de janeiro de 2026, mesmo os dias que não tiveram vendas.
-- Use CTE recursiva para gerar um calendário completo do mês e combine
-- com os dados de vendas. Mostre: data, dia da semana, total de vendas
-- e quantidade de pedidos (use 0 para dias sem vendas).



    -- Caso base: primeiro dia de janeiro



    -- Caso recursivo: adiciona 1 dia

