-- 12 - Subconsultas | Desafio final
-- Minhas respostas (escreva abaixo de cada enunciado)

-- MÓDULO 12 - SUBCONSULTAS
-- Desafio Final 1: Produtos com preço acima da média da sua categoria
-- Use subconsultas no WHERE (para filtrar) e no SELECT (para calcular a média)
-- Mostre: nome do produto, preço, nome da categoria e preço médio da categoria
-- Ordene por categoria e depois por preço (do mais caro para o mais barato)



-- Desafio Final 2: Identificar clientes VIP (gastam acima da média)
-- Use subconsulta no FROM para calcular o total gasto por cliente
-- Use outra subconsulta para calcular a média geral de gastos
-- Mostre: nome, email, total gasto e média geral (apenas clientes acima da média)
-- Ordene do cliente que mais gastou para o que menos gastou



-- Desafio Final 3: Contagem de produtos com estoque baixo por categoria
-- Use uma subconsulta escalar no SELECT para contar produtos com estoque < 10
-- Mostre: nome da categoria e quantidade de produtos com estoque baixo
-- Considere apenas categorias ativas
-- Ordene da categoria com mais produtos em estoque baixo para a com menos



-- Desafio Final 4: Produtos vendidos em pedidos de alto valor (acima de R$ 1000)
-- Use EXISTS para verificar se o produto aparece em pedidos grandes
-- Mostre: nome, preço e marca dos produtos (sem duplicatas)
-- Ordene por nome do produto



-- Desafio Final 5: Análise mensal de desempenho de vendas
-- Use subconsulta no FROM para agrupar vendas por ano/mês
-- Use outra subconsulta para calcular a média mensal de vendas
-- Mostre: ano, mês, total de vendas, quantidade de pedidos e se superou a média (Sim/Não)
-- Exclua pedidos cancelados da análise
-- Ordene por ano e mês cronologicamente



-- Desafio Final 6: Dashboard executivo completo de produtos (Boss Final!)
-- Combine TODOS os tipos de subconsultas: no SELECT, no WHERE e EXISTS
-- Mostre para cada produto:
--   - Nome, categoria, preço, estoque atual
--   - Total de unidades vendidas e receita total gerada
--   - Nota média das avaliações (arredondada para 1 casa decimal)
--   - Se o produto já foi avaliado alguma vez (Sim/Não usando EXISTS)
--   - Classificação: "Campeão" se vendeu acima da média geral, "Normal" caso contrário
-- Ordene do produto mais vendido para o menos vendido
-- DICA: Use COALESCE para produtos que nunca foram vendidos ou avaliados

