-- 14 - CTEs | Desafio final
-- Minhas respostas (escreva abaixo de cada enunciado)

-- DESAFIO FINAL 1: CTE COM ANÁLISE COMPLETA DE CLIENTES
-- Objetivo: Identificar os 10 clientes mais valiosos da empresa
--
-- Passo 1: Crie uma CTE chamada 'resumo_clientes' que calcule para cada cliente:
--   - cliente_id
--   - nome do cliente
--   - total_pedidos (COUNT de pedidos)
--   - valor_total_gasto (SUM de valor_total dos pedidos)
--   - ticket_medio (ROUND da média de valor_total, 2 decimais)
--   Dica: Use INNER JOIN entre clientes e pedidos, agrupe por cliente_id e nome
--
-- Passo 2: Use essa CTE no SELECT principal para:
--   - Selecionar as colunas: nome AS cliente, total_pedidos, valor_total_gasto, ticket_medio
--   - Ordenar por valor_total_gasto decrescente
--   - Limitar aos TOP 10
--
-- Resultado esperado: 10 linhas com os clientes que mais gastaram



-- DESAFIO FINAL 2: CTE RECURSIVA DE DATAS
-- Objetivo: Criar um relatório de vendas diárias completo, incluindo dias sem vendas
--
-- Passo 1: Crie uma CTE chamada 'mes_referencia' que define:
--   - primeiro_dia: DATE '2025-12-01'
--   - ultimo_dia: DATE '2025-12-31'
--
-- Passo 2: Crie uma CTE RECURSIVA chamada 'datas_mes' que:
--   - Caso base: SELECT primeiro_dia AS data FROM mes_referencia
--   - Caso recursivo: SELECT data + INTERVAL '1 day' FROM datas_mes
--   - Condição de parada: WHERE data < mes_referencia.ultimo_dia
--   Dica: Use CROSS JOIN com mes_referencia no caso recursivo para acessar ultimo_dia
--
-- Passo 3: Crie uma CTE chamada 'vendas_diarias' que calcule:
--   - data (CAST de data_pedido como DATE)
--   - total_vendas (SUM de valor_total)
--   - qtd_pedidos (COUNT)
--   - Filtre apenas pedidos de dezembro/2025
--   - Agrupe por data
--
-- Passo 4: No SELECT principal:
--   - LEFT JOIN datas_mes com vendas_diarias
--   - Use COALESCE para mostrar 0 quando não houver vendas
--   - Ordene por data
--
-- Resultado esperado: 31 linhas (todos os dias de dezembro), com 0 nos dias sem vendas



-- Define dezembro de 2025 como mês de referência



-- CTE recursiva para gerar todas as datas do mês



    -- Caso base: primeiro dia do mês



    -- Caso recursivo: adiciona 1 dia até o último dia



-- DESAFIO FINAL 3: MÚLTIPLAS CTES ENCADEADAS
-- Objetivo: Identificar produtos com desempenho acima da média usando CTEs encadeadas
--
-- Passo 1: Crie CTE 'vendas_por_produto' que calcule:
--   - produto_id, nome
--   - total_vendido (SUM de quantidade dos itens_pedido)
--   - receita_total (SUM de quantidade * preco_unitario)
--   Dica: JOIN produtos com itens_pedido, agrupe por produto_id e nome
--
-- Passo 2: Crie CTE 'media_vendas' que calcule:
--   - media_qtd (AVG de total_vendido da CTE anterior)
--   - media_receita (AVG de receita_total da CTE anterior)
--   Dica: Essa CTE usa vendas_por_produto
--
-- Passo 3: Crie CTE 'produtos_acima_media' que:
--   - Selecione todos os campos de vendas_por_produto
--   - Adicione as médias da CTE media_vendas (use CROSS JOIN)
--   - Calcule perc_acima_media_qtd: ((total_vendido - media_qtd) / media_qtd * 100)
--   - Calcule perc_acima_media_receita: ((receita_total - media_receita) / media_receita * 100)
--   - Filtre WHERE total_vendido > media_qtd OR receita_total > media_receita
--
-- Passo 4: No SELECT principal:
--   - Selecione: nome, total_vendido, receita_total, médias e percentuais
--   - Use ROUND para formatar decimais
--   - Ordene por receita_total DESC
--
-- Resultado esperado: Produtos que performaram acima da média



-- CTE 1: Vendas totais por produto



-- CTE 2: Média de vendas usando a CTE 1



-- CTE 3: Produtos acima da média usando as CTEs anteriores



-- DESAFIO FINAL 4 (BOSS FINAL!): DASHBOARD EXECUTIVO
-- Objetivo: Criar um dashboard executivo completo com comparações e rankings
--
-- Passo 1: CTE 'mes_referencia'
--   - Encontre o mês mais recente: DATE_TRUNC('month', MAX(data_pedido))
--   - CAST como DATE e nomeie como 'ultimo_mes'
--
-- Passo 2: CTE 'vendas_mensais'
--   - Calcule para cada mês dos últimos 3 meses:
--     - mes (DATE_TRUNC de data_pedido)
--     - total_pedidos (COUNT)
--     - total_vendas (SUM de valor_total)
--     - ticket_medio (AVG de valor_total, arredondado)
--   - Filtre WHERE data_pedido >= (ultimo_mes - 2 meses)
--
-- Passo 3: CTE 'comparacao_mensal'
--   - Selecione todas as colunas de vendas_mensais
--   - Adicione vendas_mes_anterior: LAG(total_vendas) OVER (ORDER BY mes)
--   - Calcule taxa_crescimento: 100 * (total_vendas - vendas_mes_anterior) / vendas_mes_anterior
--   - Use NULLIF para evitar divisão por zero
--
-- Passo 4: CTE 'top_produtos'
--   - Calcule para o último mês:
--     - nome do produto
--     - total_vendido (SUM de quantidade)
--     - receita (SUM de quantidade * preco_unitario)
--   - Filtre apenas pedidos do último mês
--   - LIMIT 5
--
-- Passo 5: CTE 'top_clientes'
--   - Calcule para o último mês:
--     - nome do cliente
--     - qtd_pedidos (COUNT)
--     - total_gasto (SUM de valor_total)
--   - Filtre apenas pedidos do último mês
--   - LIMIT 5
--
-- Passo 6: SELECT principal - Combine tudo com UNION ALL
--   - Seção 1: RESUMO MENSAL (da comparacao_mensal do último mês)
--   - Seção 2: TOP 5 PRODUTOS (da top_produtos)
--   - Seção 3: TOP 5 CLIENTES (da top_clientes)
--   Dica: Use CAST(...AS TEXT) para padronizar colunas no UNION ALL
--
-- Resultado esperado: 1 linha de resumo + 5 produtos + 5 clientes = 11 linhas
--
-- DICA EXTRA: Este é o desafio mais complexo! Construa uma CTE por vez e teste antes de avançar.



-- Encontra o mês mais recente com dados



-- Vendas por mês (últimos 3 meses com dados)



-- Comparação mês a mês com LAG



-- Top 5 produtos mais vendidos no último mês



-- Top 5 clientes que mais compraram no último mês



-- Resultado final combinando todas as CTEs

