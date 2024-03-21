-- TEMA AULA: Modelo Relacional

/*
Diagrama entidade-relacionamento ou DER

Entidade: como se fosse um container que armazenará os dados.
Atributos: Cada entidade é caracterizada por uma coleção definida de atributos, os quais formam os dados que compõem cada elemento contido dentro dessa entidade.

A partir dos exemplos criados em aula, temos as entidades GAFANHOTOS e CURSOS, e cada uma possui atributos relacionados apenas a elas.

Dados são representados em forma de atributos, esses conjuntos de atributos vão identificar tuplas(registros) que estão armazenados dentro de entidades.
O conjuntos de atributos diferencia um registro de outro.

Chave primária: atributos específicos de cada registro, funciona como identificador de um registro.
A partir das chaves é possível criar uma relação entre as entidades.
A relação entre as entidades é chamado de RELACIONAMENTO.

Chave estrangeira: é a chave primária de outra tabela que cria o relacionamento com a tabela atual.
 - não precisa ter o mesmo nome presente na tabela original, mas precisa sempre ter o mesmo tipo (INT, VARCHAR...)
 
Entidade dominante (normalmente à esquerda no diagrama): Uma entidade forte é uma entidade que pode existir por si só, ou seja, não precisa depender de outra entidade para existir. Ela tem um identificador único (chave primária) que permite distinguir cada instância da entidade de todas as outras.
Entidade fraca: Uma entidade fraca é aquela que não pode existir sem uma entidade dominante, ou seja, sua existência depende de outra entidade. Elas não têm um identificador único por si só e precisam de uma chave estrangeira, além de seu próprio identificador parcial, para formar uma chave primária.
Entidade associativa:  Usadas principalmente para implementar relacionamentos muitos-para-muitos entre entidades fortes. Embora não sejam classificadas estritamente sob o mesmo critério de força ou fraqueza, elas são essenciais para resolver certas complexidades de modelagem.

Cardinaliade: define o tipo de relacionamento existente entre duas entidades, especificando o número mínimo e máximo de ocorrências de uma entidade para uma única ocorrência da outra entidade no contexto do relacionamento.
 I. Um para Um (1:1): Cada entidade no relacionamento está associada a no máximo uma entidade do outro lado. Por exemplo, em um banco de dados de empregados, cada empregado tem um único número de seguro social, e cada número de seguro social está associado a apenas um empregado. 
	- Em um relacionamento 1:1, uma das entidades pode armazenar a chave primária da outra como chave estrangeira para estabelecer a relação.
 II. Um para Muitos (1:N): Uma entidade no lado "um" do relacionamento pode estar associada a zero, uma ou várias entidades no lado "muitos", mas cada entidade no lado "muitos" está associada a no máximo uma entidade no lado "um". Um exemplo clássico é o relacionamento entre Departamentos e Empregados em uma empresa; um departamento pode ter muitos empregados, mas cada empregado trabalha em apenas um departamento.
	- A chave primária do lado 1 será a chave estrangeira do lado N.
III. Muitos para Um (N:1): É basicamente o inverso do 1:N, onde muitas entidades de um lado estão associadas a uma única entidade do outro lado. Na prática, 1:N e N:1 são frequentemente vistos sob a mesma luz, dependendo de qual lado do relacionamento você está analisando.
IV. Muitos para Muitos (N:N): Entidades de ambos os lados do relacionamento podem estar associadas a várias entidades do outro lado. Por exemplo, em um sistema de biblioteca, um Livro pode ser emprestado a vários Estudantes, e cada Estudante pode emprestar vários Livros ao mesmo tempo. Este tipo de relacionamento geralmente requer uma tabela associativa (ou tabela de junção) para gerenciar as associações entre as entidades.
	- o relacionamento será uma entidade associativa que terá os seus atributos e sua chave primária
    - será criado um novo relacionamento entre a entidade associativa e as entidades, sendo 1:N e N:1, assim seguirá a regra anterior. */