/* TEMA DA AULA: Alterando a Estrutura da Tabela (ALTER TABLE e DROP TABLE)

Comando para alterar a estrutura da tabela */
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10); -- Adicionando uma nova coluna (coluna = campo) - irá para a última posição

-- Excluindo uma coluna
ALTER TABLE pessoas
DROP COLUMN profissao;

-- Adicionando coluna em um local específico antes de uma coluna existente
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

-- Adicionando coluna nova como sendo a primeira coluna da tabela
ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST; -- pode ser simplificado para: ADD codigo INT FIRST

-- Modificando estrutura da definição (tipo / constraint)
ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20);

-- Alterando nome de coluna
ALTER TABLE pessoas
CHANGE COLUMN codigo cod INT; -- change column nomeantigo nomenovo tipos contraint

-- Renomeando a tabela
ALTER TABLE pessoas
RENAME TO assinantes;

-- Criando uma tabela se ela ainda não existir
CREATE TABLE IF NOT EXISTS cursos(
	nome VARCHAR(30) NOT NULL UNIQUE, -- unique não deixar ter dois registros com o mesmo dado, neste caso, mesmo nome
    descricao TEXT,
    carga INT UNSIGNED, -- sem sinal
    totaulas INT,
    ano YEAR DEFAULT '2024'
) DEFAULT CHARSET = utf8mb4;

ALTER TABLE cursos
ADD id_curso INT FIRST;

-- Adicionando uma chave primária a uma tabela já existente
ALTER TABLE cursos
ADD PRIMARY KEY (id_curso);

DESC cursos;

ALTER TABLE assinantes
DROP COLUMN cod;