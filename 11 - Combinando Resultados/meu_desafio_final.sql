-- 11 - Combinando Resultados | Desafio final
-- Minhas respostas (escreva abaixo de cada enunciado)

-- MÓDULO 11 - COMBINANDO RESULTADOS
-- Desafio Final 1: Lista Unificada de Contatos
-- Crie uma lista única com:
-- - nome
-- - tipo ('Cliente' ou 'Outro')
-- De clientes. Não deve haver nomes duplicados.



-- Desafio Final 2: Histórico Completo de Transações
-- Combine pedidos e pagamentos em uma timeline:
-- - data da transação
-- - valor
-- - tipo ('Pedido' ou 'Pagamento')
-- - identificador (pedido_id ou pagamento_id)
-- Ordene por data



-- Desafio Final 3: Relatório de Totais
-- Mostre um resumo com:
-- - Total de produtos
-- - Total de clientes
-- - Total de pedidos
-- - Total de pagamentos
-- Cada linha deve ter: tipo e quantidade



-- Desafio Final 4 (Boss Final!): Análise de Sobreposição
-- Descubra:
-- a) Quantas marcas diferentes existem nos produtos



-- b) Quantas categorias diferentes existem



-- c) Crie uma lista combinada de todas as marcas e nomes de categorias (UNION)



-- d) Se houvesse uma tabela de marcas preferidas do cliente,
--    como você encontraria marcas que existem em produtos
--    E na lista de preferidas? (exemplo conceitual com INTERSECT)
-- Exemplo conceitual (a tabela marcas_preferidas não existe no banco):
-- SELECT DISTINCT marca FROM produtos
-- INTERSECT
-- SELECT marca FROM marcas_preferidas;
-- Demonstração com dados existentes - marcas que têm produtos em mais de uma categoria:

