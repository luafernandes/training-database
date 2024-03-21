-- TEMA AULA: Chaves Estrangeiras e JOIN

/* Quando uma tabela é criada no MySQL, é necessário escolher uma 'engine' de armazenamento, cada uma com suas próprias características e funcionalidades específicas, como suporte a transações ou chaves estrangeiras, exemplos de engine:
 - MyISAN (mais antiga e não suporta ACID)
 - InnoDB (principal característica: suporta chave estrangeira / suporta ACID)
 - XtraDB (mais recente e suporta ACID)
 Para definir qual será a engine usado na criação da tabela é necessário colocar, ao final do CREATE TABLE, engine = engine que você quer utilizar
 Por padrão, se não determinar qual será a engine, o MySQL coloca InnoDB.
 
 Transação: toda ação que um banco de dados possa executar.
 
ACID - quatro principais regras de uma boa transação
Atomicidade: não pode ser dividida em subtarefas
Consistência: se antes da transação o BD estava funcionando perfeitamente, após a transação ele também precisa estar.
Isolanento: se duas transações estão acontecendo em paralelo, elas precisam acontecer de forma isolada (uma não pode interferir na outra)
Durabilidade: uma transação precisa ser durável
*/

-- Relacionando as tabelas
-- Adicionando a Foreign Key
USE cadastro;

ALTER TABLE gafanhotos
ADD cursopreferido INT;

ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);

SELECT * FROM gafanhotos;
SELECT * FROM cursos;

UPDATE gafanhotos SET cursopreferido = '6' WHERE id = '1';

-- Integridade Referencial
DELETE FROM cursos WHERE idcurso = '6';
/* Apresenta um erro, visto que idcurso = '6' é uma chave estrangeira em outra tabela! */

-- Junções
/* Tipos JOIN: INNER JOIN e OUTER JOIN
- Inner Join: trata apenas de dados relacionais, excluindo os que não possuem relação.
- Outer Join: trata os conceitos do Inner Join, junto com os dados que não possuem relação.
 Existem dois tipos de OUTER JOIN: o LEFT JOIN e o RIGHT JOIN, ele mostrará os dados sem relação de acordo com o que solicitarmos, exemplo:
- Se eu utilizar LEFT JOIN, ele mostrará apenas os dados da tabela a esquerda, ou seja, a tabela do FROM
- Se eu utilizar RIGHT JOIN, ele mostrará apenas os dados da tabela a direita, ou seja, a tabela do JOIN
*/

-- Usando o JOIN (INNER JOIN)
SELECT gafanhotos.nome, cursos.nome, cursos.ano
FROM gafanhotos JOIN cursos
ON cursos.idcurso =  gafanhotos.cursopreferido #Sempre que usar JOIN é preciso usar o ON, que será onde eles se relacionam.
ORDER BY gafanhotos.nome;

/* Se eu uso o JOIN, estou fazendo um INNER JOIN, que é uma junção apenas com relações, no exemplo acima, só apareceram aqueles que possuem um curso preferido
Também pode ser escrito o comando como INNER JOIN. */

SELECT gafanhotos.nome, cursos.nome, cursos.ano
FROM gafanhotos INNER JOIN cursos
ON cursos.idcurso =  gafanhotos.cursopreferido
ORDER BY gafanhotos.nome;

-- Usando OUTER JOIN
SELECT gafanhotos.nome, cursos.nome, cursos.ano
FROM gafanhotos LEFT JOIN cursos
ON cursos.idcurso =  gafanhotos.cursopreferido
ORDER BY gafanhotos.nome;

SELECT gafanhotos.nome, cursos.nome, cursos.ano
FROM gafanhotos RIGHT JOIN cursos
ON cursos.idcurso =  gafanhotos.cursopreferido
ORDER BY gafanhotos.nome;

-- Podemos aplicar um apelido usando o comando AS
SELECT g.nome, c.nome, c.ano
FROM gafanhotos AS g JOIN cursos AS c
ON c.idcurso =  g.cursopreferido
ORDER BY g.nome;