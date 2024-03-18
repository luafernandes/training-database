-- Exercise 01: List of all female students
SELECT nome FROM gafanhotos
WHERE sexo = 'f';

-- Exercise 02: List of everyone born between 2000/01/01 and 2015/12/31
SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';

-- Exercise 03: List of all the names of men who work as programmers
SELECT nome FROM gafanhotos
WHERE sexo = 'M' AND profissao = 'PROGRAMADOR';

-- Exercise 04: List with all the data of all women who were born in Brazil and whose name starts with 'J'
SELECT * FROM gafanhotos
WHERE sexo = 'f' AND nacionalidade = 'Brasil' AND nome LIKE 'J%';

-- Exercise 05: List with name and nationality of all men who have Silva in their name, were born in Brazil and weigh less than 100kg
SELECT nome, nacionalidade FROM gafanhotos
WHERE
	sexo = 'M' AND
	nome LIKE '%_Silva%' AND
    nacionalidade = 'Brasil' AND
    peso < '100';

-- Exercise 06: What is the tallest among male students living in Brazil?
SELECT MAX(altura) FROM gafanhotos
WHERE sexo = 'M' AND nacionalidade = 'Brasil';

-- Exercise 07: What is the average weight of registered students?
SELECT AVG(peso) FROM gafanhotos;

-- Exercise 08: What is the lowest weight among female students who were born outside Brazil and between 1990/01/01 and 2000/12/31
SELECT MIN(peso) FROM gafanhotos
WHERE
	sexo = 'f' AND
    nacionalidade != 'Brasil' AND
    nascimento BETWEEN '1990-01-01' AND '2000-12-31';
    
-- Exercise 09: 9) 9) How many female students are over 1.90cm tall?
SELECT COUNT(*) FROM gafanhotos
WHERE sexo = 'f' AND altura > '1.9';