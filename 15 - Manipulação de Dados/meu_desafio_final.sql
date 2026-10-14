-- 15 - Manipulação de Dados | Desafio final
-- Minhas respostas (escreva abaixo de cada enunciado)

-- DESAFIOS FINAIS DO MODULO 15
-- Desafio Final 1: Estrutura de Campanha
-- Crie uma tabela chamada "promocao_verao" com:
--   - promocao_id (PK, SERIAL)
--   - produto_id (FK para produtos)
--   - desconto_percentual (DECIMAL, entre 0 e 100)
--   - data_inicio (DATE)
--   - data_fim (DATE)
--   - ativo (BOOLEAN, default true)



-- Desafio Final 2: Popular Dados
-- Insira 5 produtos na promoção de uma vez
-- Escolha produtos reais da tabela produtos
-- Use descontos entre 10% e 50%
-- Primeiro, veja alguns produtos disponíveis:
-- SELECT produto_id, nome, preco FROM produtos LIMIT 10;
-- Inserir promoções (ajuste os IDs conforme seus dados):



-- Desafio Final 3: Criar View de Análise
-- Crie uma view chamada vw_produtos_promocao que mostre:
--   - Nome do produto
--   - Preço original
--   - Desconto percentual
--   - Preço com desconto (calculado)
--   - Data início e fim da promoção



-- Desafio Final 4: Ajustes na Campanha
-- a) Aumente em 5% o desconto de produtos com preço acima de R$ 1000
-- Verificar:
-- SELECT pv.promocao_id, p.nome, p.preco, pv.desconto_percentual,
--        pv.desconto_percentual + 5 AS novo_desconto
-- FROM promocao_verao pv
-- INNER JOIN produtos p ON pv.produto_id = p.produto_id
-- WHERE p.preco > 1000;



-- b) Desative promoções que já passaram da data_fim
-- Verificar:
-- SELECT * FROM promocao_verao
-- WHERE data_fim < CURRENT_DATE AND ativo = true;



-- Desafio Final 5: Limpeza de Dados
-- a) Remova da promoção os produtos que estão sem estoque
-- Verificar:
-- SELECT pv.*, p.nome, p.estoque
-- FROM promocao_verao pv
-- INNER JOIN produtos p ON pv.produto_id = p.produto_id
-- WHERE p.estoque = 0;



-- b) Delete promoções inativas
-- Verificar:
-- SELECT * FROM promocao_verao WHERE ativo = false;



-- Desafio Final 6 (Boss Final!): Encerramento Completo
-- A campanha acabou. Faça a limpeza completa:
-- a) Criar uma tabela de backup chamada "promocao_verao_historico"



-- b) Copiar todos os dados da promocao_verao para o histórico



-- c) Drope a view vw_produtos_promocao



-- d) Drope a tabela promocao_verao



-- e) Confirme que o histórico foi salvo corretamente
-- SELECT * FROM promocao_verao_historico;
-- SELECT COUNT(*) FROM promocao_verao_historico;

