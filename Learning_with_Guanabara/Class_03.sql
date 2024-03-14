/* TEMA DA AULA: Inserindo Dados na Tabela (INSERT INTO)

Relembrando as colunas que temos:
(id_pessoa, nome, nascimento, sexo, peso, altura, nacionalidade)

Inserindo dados
O que está entre as aspas é considerado DADOS, o que não está é considerado CONSTRAINT */
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

-- Visualizando todos os dados da tabela 'pessoas'
SELECT * FROM pessoas;

-- Continuando a inserção dos dados
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

-- Inserindo um novo dado, utilizando uma constraint
INSERT INTO pessoas
(id_pessoa, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', DEFAULT);

-- Se vai ser colocado dados na mesma ordem dos campos do banco, não é necessário informar o campos antecipadamente
INSERT INTO pessoas VALUES
(DEFAULT, 'Adalgiza', '1930-11-2', 'F', '53.2', '1.75', 'Irlanda');

-- Inserindo mais de um registro de uma única vez
INSERT INTO pessoas VALUES
(DEFAULT, 'Cláudio', '1975-4-22', 'M', '99.0', '2.15', DEFAULT),
(DEFAULT, 'Pedro', '1999-12-3', 'M', '87', '2', DEFAULT),
(DEFAULT, 'Janaina', '1987-11-12', 'F', '75.4', '1.66', 'EUA');