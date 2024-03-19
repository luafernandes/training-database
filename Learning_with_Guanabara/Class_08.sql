-- TEMA AULA: Obtendo dados com o camando SELECT (Parte 2)

-- Seleção por primeira letra
SELECT * FROM cursos
WHERE nome LIKE 'P%'; 

SELECT * FROM cursos
WHERE nome LIKE 'a%'; 

-- Seleção por última letra
SELECT * FROM cursos
WHERE nome LIKE '%A';

 -- Seleção por letra
SELECT * FROM cursos
WHERE nome LIKE '%A%';

SELECT * FROM cursos
WHERE nome NOT LIKE '%A%'; #não possui a letra 'a' no nome

SELECT * FROM cursos
WHERE nome LIKE 'ph%p';

SELECT * FROM cursos
WHERE nome LIKE 'ph%p_'; #_ obriga que tenha um caracter

SELECT * FROM cursos
WHERE nome LIKE 'ph%p%';

SELECT * FROM cursos
WHERE nome LIKE 'p__t%';

-- Busca por sobrenome
SELECT * FROM gafanhotos
WHERE nome LIKE '%silva';

SELECT * FROM gafanhotos
WHERE nome LIKE '%_silva%';

-- Distinguindo: cosidera uma ocorrência de cada valor
SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

-- Funções de Agregação
# Contagem
SELECT COUNT(*) FROM cursos;

SELECT COUNT(*) FROM cursos
WHERE carga > 40;

# Máximo e Mínimo
SELECT MAX(carga) FROM cursos;

SELECT MIN(totaulas) FROM cursos
WHERE ano = '2016';

# Soma
SELECT SUM(totaulas) FROM cursos
WHERE ano = '2016';

# Média
SELECT AVG(totaulas) FROM cursos
WHERE ano = '2016';