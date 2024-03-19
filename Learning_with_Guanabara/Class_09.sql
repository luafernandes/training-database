-- TEMA AULA: Obtendo dados com o camando SELECT (Parte 3)

-- Agrupando registros
SELECT carga FROM cursos
GROUP BY carga;

SELECT carga, COUNT(nome) AS count FROM cursos
GROUP BY carga;

SELECT carga, COUNT(*) FROM cursos 
WHERE totaulas = 30
GROUP BY carga;

-- Agrupando e Agregando
SELECT carga, COUNT(nome) FROM cursos 
GROUP BY carga
HAVING COUNT(nome) > 3;

SELECT ano, COUNT(*) FROM cursos
GROUP BY ano
HAVING COUNT(ano) >= 5 #HAVING sempre de acordo com o GROUP BY
ORDER BY COUNT(*) DESC;

SELECT ano, COUNT(*) FROM cursos
WHERE totaulas > 30
GROUP BY ano
HAVING ano >= 2013
ORDER BY COUNT(*) DESC;

SELECT carga, COUNT(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);