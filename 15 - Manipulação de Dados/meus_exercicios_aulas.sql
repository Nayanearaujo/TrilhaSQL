-- 15 - Manipulação de Dados | Exercícios das aulas
-- Minhas respostas (escreva abaixo de cada enunciado)

-- Aula 61 - Desafio 1: Criar uma tabela de cupons de desconto
-- Crie uma tabela chamada "cupons_desconto" com as seguintes colunas:
--   - cupom_id (SERIAL PRIMARY KEY)
--   - codigo (VARCHAR(50) UNIQUE NOT NULL)
--   - desconto_percentual (DECIMAL(5,2) entre 0 e 100)
--   - data_validade (DATE)
--   - ativo (BOOLEAN DEFAULT true)



-- Aula 61 - Desafio 2: Criar uma view de cupons válidos
-- Crie uma view chamada "vw_cupons_validos" que mostre apenas cupons ativos
-- e com data de validade futura (maior que a data atual)



-- SELECT * FROM vw_cupons_validos 
-- Rodou mas sem dados
-- Aula 62 - Desafio 1: Inserir um cupom de desconto
-- Insira um cupom com:
--   - codigo: 'BEMVINDO10'
--   - desconto_percentual: 10.00
--   - data_validade: 30 dias a partir de hoje
--   - ativo: true



-- Aula 62 - Desafio 2: Inserir múltiplos cupons de uma vez
-- Insira 5 cupons diferentes usando um único INSERT:
--   - 'BLACKFRIDAY' - 50% de desconto, validade 7 dias
--   - 'NATAL25' - 25% de desconto, validade 15 dias
--   - 'FRETEGRATIS' - 100% de desconto (representa frete grátis), validade 60 dias
--   - 'VOLTESEMPRE' - 15% de desconto, validade 90 dias
--   - 'PRIMEIRACOMPRA' - 20% de desconto, validade 365 dias
--   - 'ECO10' - 10% de desconto, validade de 45 dias negativos



-- Aula 63 - Desafio 1: Atualizar desconto de um cupom específico
-- Aumente o desconto do cupom 'BEMVINDO10' de 10% para 15%



-- Aula 63 - Desafio 2: Desativar cupons expirados
-- Atualize o campo "ativo" para false de todos os cupons com data_validade no passado



-- Aula 64 - Desafio 1: Remover cupons expirados e inativos
-- Delete cupons que estão inativos E com data de validade anterior a 30 dias atrás



-- Aula 64 - Desafio 2: Remover um cupom específico
-- Delete o cupom com código 'BLACKFRIDAY' (pois a campanha já acabou)



-- Aula 65 - Desafio 1: Dropar a view de cupons válidos
-- Remova a view "vw_cupons_validos" criada na Aula 61



-- Aula 65 - Desafio 2: Dropar a tabela de cupons de desconto
-- Remova a tabela "cupons_desconto" criada na Aula 61

