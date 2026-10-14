-- 07 - Condicionais | Desafio final
-- Minhas respostas (escreva abaixo de cada enunciado)

-- MÓDULO 7 - CONDICIONAIS
-- Desafio 1: Crie um relatório de produtos com as seguintes classificações:
-- - Preço: "Econômico" (< R$100), "Padrão" (R$100-500), "Premium" (> R$500)
-- - Estoque: "Crítico" (< 10), "Baixo" (10-29), "Normal" (30-99), "Alto" (>= 100)



-- Desafio 2: Crie um relatório de produtos com classificação combinada:
-- - Se o produto é de "Alta Prioridade" (preço > R$300 E estoque < 20)
-- - Se é "Promoção Possível" (preço > R$200 E estoque > 50)
-- - Se está em categoria específica (categoria_id IN (1, 2, 3))
-- - Adicione uma observação combinando essas condições



-- Desafio 3: Classifique os clientes em:
-- - "Novo" - cadastrado há menos de 6 meses
-- - "Regular" - cadastrado entre 6 meses e 2 anos
-- - "Veterano" - cadastrado há mais de 2 anos



-- Desafio 4: Crie um relatório de análise de custos e descontos dos pedidos.
-- Classifique cada pedido considerando:
--
-- A) Classificação de Frete (campo 'frete'):
--    - "Frete Grátis" = 0
--    - "Frete Econômico" = R$ 0.01 até R$ 10.00
--    - "Frete Padrão" = R$ 10.01 até R$ 25.00
--    - "Frete Premium" = R$ 25.01 até R$ 49.96
--    - "Frete Especial" = acima de R$ 49.96
--
-- B) Classificação de Desconto (campo 'desconto'):
--    - "Sem Desconto" = 0
--    - "Desconto Básico" = R$ 0.24 até R$ 20.00
--    - "Desconto Bom" = R$ 20.01 até R$ 50.00
--    - "Desconto Excelente" = R$ 50.01 até R$ 99.85
--    - "Desconto Excepcional" = acima de R$ 99.85
--
-- Use CASE WHEN com BETWEEN para criar as classificações.



-- Desafio 5 (Boss Final!): Crie um relatório de análise temporal de pedidos.
-- Combine múltiplos conceitos aprendidos no módulo:
--
-- A) Extraia informações da data usando EXTRACT:
--    - Ano, mês e dia da semana
--
-- B) Classifique o semestre:
--    - "1º Semestre" = meses 1 a 6
--    - "2º Semestre" = meses 7 a 12
--
-- C) Identifique o tipo de dia:
--    - "Final de Semana" = sábado (6) ou domingo (0)
--    - "Dia de Semana" = segunda a sexta
--
-- D) Crie uma análise de prioridade combinando valor e status:
--    Status disponíveis: cancelado, confirmado, em_separacao, entregue, enviado, pendente
--    - "CRÍTICO" = cancelado E valor > 500
--    - "ATENÇÃO" = pendente E valor > 300
--    - "SUCESSO" = entregue E valor > 400
--    - "NORMAL" = demais casos
--
-- Use EXTRACT, CASE WHEN, IN, AND/OR para resolver.

