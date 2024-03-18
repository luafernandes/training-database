-- TEMA AULA: Obtendo dados com o camando SELECT (Parte 1)

-- Para visualizar todos os campos da tabela cursos
SELECT * FROM cursos;
-- OBS: '*' significa tudo

-- Ordenando pela coluna nome (ordem alfabética)
SELECT * FROM cursos
ORDER BY nome;
-- em ordem crescente pode ser colocado parâmetro também, ou deixar como acima:
SELECT * FROM cursos
ORDER BY nome ASC;
-- é possível ordenar descrescente:
SELECT * FROM cursos
ORDER BY nome DESC;

-- Filtrando as colunas
SELECT ano, nome, carga FROM cursos
ORDER BY ano, nome;

-- Filtrando linhas
SELECT nome, carga FROM cursos
WHERE ano = '2016'
ORDER BY nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano <= 2015
ORDER BY ano, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano != 2015 # Diferente de
ORDER BY ano, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano <> 2015 # Diferente de
ORDER BY ano, nome;

-- Selecionando intervalos
SELECT nome, ano FROM cursos
WHERE ano BETWEEN 2014 and 2016
ORDER BY ano DESC, nome;

-- Selecionando valores
SELECT nome, descricao, ano FROM cursos
WHERE ano IN (2014, 2016)
ORDER BY ano, nome;

-- Combinando testes
SELECT nome, carga, totaulas FROM cursos
WHERE carga > 35 AND totaulas < 30;

/* Operadores lógicos
AND - as duas premissas são verdadeiras
OR - uma das premissas precisa ser verdadeira */