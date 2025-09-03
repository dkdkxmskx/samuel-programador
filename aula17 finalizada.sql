/*1. Relacionamento entre Clientes e Pedidos 
• Crie duas tabelas: clientes e pedidos. A tabela clientes deve ter os campos 
id_cliente, nome e email. A tabela pedidos deve ter os campos id_pedido, 
id_cliente, data_pedido e valor_total. Faça uma consulta que liste todos 
os pedidos com o nome do cliente.*/

create database ex21
default character set utf8mb4
default collate utf8mb4_general_ci;

use ex21;

CREATE TABLE clientes (
    id_cliente INT auto_increment PRIMARY KEY,
    nome VARCHAR(30),
    email VARCHAR(30)
);

CREATE TABLE pedidos (
    id_pedido INT auto_increment PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);



/*2. Produtos e Categorias 
• Crie duas tabelas: produtos e categorias. A tabela produtos deve ter 
id_produto, nome, preco, id_categoria. A tabela categorias deve ter 
id_categoria e nome_categoria. Crie uma consulta que mostre os produtos 
junto com o nome da categoria.*/



CREATE TABLE produtos (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(30)
);

CREATE TABLE categorias (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30),
    preco DECIMAL(10, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

/*3. Vendas e Produtos 
• Crie duas tabelas: vendas e produtos. A tabela vendas deve conter id_venda, 
id_produto, quantidade e data_venda. A tabela produtos deve ter 
id_produto e nome_produto. Realize uma consulta que mostre a quantidade de 
cada produto vendido.*/

CREATE TABLE vendas (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(30)
);

CREATE TABLE produtoos (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    quantidade INT,
    data_venda DATE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

/*4. Relacionamento de Funcionários e Departamentos 
• Crie duas tabelas: funcionarios e departamentos. A tabela funcionarios 
deve ter id_funcionario, nome_funcionario, id_departamento. A tabela 
departamentos deve ter id_departamento e nome_departamento. Crie uma 
consulta para mostrar os funcionários e seus respectivos departamentos.*/

CREATE TABLE departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome_departamento VARCHAR(30)
);

CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario VARCHAR(30),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

/*5. Estudantes e Cursos 
• Crie duas tabelas: estudantes e cursos. A tabela estudantes deve ter 
id_estudante, nome_estudante e email. A tabela cursos deve ter id_curso 
e nome_curso. Crie uma tabela intermediária chamada matriculas que 
relacione estudantes e cursos com os campos id_estudante, id_curso e 
data_matricula.*/


CREATE TABLE estudantes (
    id_estudante INT AUTO_INCREMENT PRIMARY KEY,
    nome_estudante VARCHAR(30),
    email VARCHAR(30)
);


CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(30)
);


CREATE TABLE matriculas (
    id_estudante INT,
    id_curso INT,
    data_matricula DATE,
    PRIMARY KEY (id_estudante, id_curso),
    FOREIGN KEY (id_estudante) REFERENCES estudantes(id_estudante),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

/*6. Livros e Autores 
• Crie duas tabelas: livros e autores. A tabela livros deve ter id_livro, 
titulo e id_autor. A tabela autores deve ter id_autor e nome_autor. Crie 
uma consulta que mostre todos os livros e seus respectivos autores.*/

CREATE TABLE autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome_autor VARCHAR(30)
);

CREATE TABLE livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30),
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

/*7. Alunos, Professores e Disciplinas 
• Crie três tabelas: alunos, professores e disciplinas. A tabela alunos deve 
ter id_aluno, nome, id_disciplina. A tabela professores deve ter 
id_professor e nome_professor. A tabela disciplinas deve ter 
id_disciplina e nome_disciplina. Realize uma consulta que mostre os 
alunos e seus respectivos professores e disciplinas.*/


CREATE TABLE professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome_professor VARCHAR(30)
);


CREATE TABLE disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(30),
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);


CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30),
    id_disciplina INT,
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

/*8. Funcionários e Projetos 
• Crie duas tabelas: funcionarios e projetos. A tabela funcionarios deve ter 
id_funcionario, nome_funcionario, id_projeto. A tabela projetos deve 
ter id_projeto e nome_projeto. Crie uma consulta para listar os funcionários e 
os projetos que eles estão alocados.*/


CREATE TABLE projetos (
    id_projeto INT AUTO_INCREMENT PRIMARY KEY,
    nome_projeto VARCHAR(30)
);


CREATE TABLE funcionarioos (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario VARCHAR(30),
    id_projeto INT,
    FOREIGN KEY (id_projeto) REFERENCES projetos(id_projeto)
);

/*9. Pedidos e Itens de Pedido 
• Crie duas tabelas: pedidos e itens_pedido. A tabela pedidos deve ter 
id_pedido, id_cliente, data_pedido. A tabela itens_pedido deve ter 
id_item, id_pedido, id_produto, quantidade e preco_unitario. Crie uma 
consulta que mostre todos os itens de cada pedido.*/


CREATE TABLE pediidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE
);

-- Tabela de itens do pedido
CREATE TABLE itens_pedido (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);

/*10. Cursos e Matrículas 
• Crie duas tabelas: cursos e matriculas. A tabela cursos deve ter id_curso e 
nome_curso. A tabela matriculas deve ter id_matricula, id_curso, 
id_estudante. Realize uma consulta que mostre todos os cursos e quantos 
alunos estão matriculados em cada um.*/


CREATE TABLE cursoss (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(-- Tabela de filmes
CREATE TABLE filmes (
    id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30)
);

-- Tabela de atores
CREATE TABLE atores (
    id_ator INT AUTO_INCREMENT PRIMARY KEY,
    nome_ator VARCHAR(30)
);

-- Tabela intermediária: filmes_atores
CREATE TABLE filmes_atores (
    id_filme INT,
    id_ator INT,
    PRIMARY KEY (id_filme, id_ator),
    FOREIGN KEY (id_filme) REFERENCES filmes(id_filme),
    FOREIGN KEY (id_ator) REFERENCES atores(id_ator)
);
)
);


CREATE TABLE matriculass (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT,
    id_estudante INT,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

/*11. Autores e Livros (Muitos para Muitos) 
• Crie uma tabela intermediária chamada livros_autores que relaciona livros 
e autores. A tabela livros deve ter id_livro e titulo. A tabela autores 
deve ter id_autor e nome_autor. A tabela livros_autores deve ter id_livro 
e id_autor. Crie uma consulta que mostre todos os livros com seus respectivos 
autores. */


CREATE TABLE autoress (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome_autor VARCHAR(30)
);

-- Tabela de livros
CREATE TABLE livross (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30)
);

-- Tabela intermediária: livros_autores
CREATE TABLE livros_autores (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro),
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

/*12. Filmes e Atores 
• Crie duas tabelas: filmes e atores. A tabela filmes deve ter id_filme e 
titulo. A tabela atores deve ter id_ator e nome_ator. Crie uma tabela 
intermediária filmes_atores para relacionar atores a filmes. Realize uma 
consulta que liste todos os filmes e seus respectivos atores.*/


CREATE TABLE filmes (
    id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30)
);


CREATE TABLE atores (
    id_ator INT AUTO_INCREMENT PRIMARY KEY,
    nome_ator VARCHAR(30)
);



CREATE TABLE filmes_atores (
    id_filme INT,
    id_ator INT,
    PRIMARY KEY (id_filme, id_ator),
    FOREIGN KEY (id_filme) REFERENCES filmes(id_filme),
    FOREIGN KEY (id_ator) REFERENCES atores(id_ator)
);

/*13. Categorias de Produtos e Subcategorias 
• Crie duas tabelas: categorias e subcategorias. A tabela categorias deve ter 
id_categoria e nome_categoria. A tabela subcategorias deve ter 
id_subcategoria, id_categoria e nome_subcategoria. Realize uma 
consulta que mostre todas as subcategorias e suas categorias associadas. */


CREATE TABLE categoriass (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(30)
);


CREATE TABLE subcategorias (
    id_subcategoria INT AUTO_INCREMENT PRIMARY KEY,
    id_categoria INT,
    nome_subcategoria VARCHAR(30),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

/*14. Artigos e Tags 
• Crie duas tabelas: artigos e tags. A tabela artigos deve ter id_artigo, 
titulo, e data_publicacao. A tabela tags deve ter id_tag e nome_tag. Crie 
uma tabela intermediária artigos_tags para associar múltiplas tags a cada 
artigo. Crie uma consulta que mostre os artigos e as tags associadas a eles.*/


CREATE TABLE artigos (
    id_artigo INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30),
    data_publicacao DATE
);


CREATE TABLE tags (
    id_tag INT AUTO_INCREMENT PRIMARY KEY,
    nome_tag VARCHAR(30)
);


CREATE TABLE artigos_tags (
    id_artigo INT,
    id_tag INT,
    PRIMARY KEY (id_artigo, id_tag),
    FOREIGN KEY (id_artigo) REFERENCES artigos(id_artigo),
    FOREIGN KEY (id_tag) REFERENCES tags(id_tag)
);


/*15. Pedidos e Clientes 
• Crie uma tabela pedidos com os campos id_pedido, id_cliente, 
data_pedido, valor_total. Crie uma consulta que mostre os pedidos de um 
cliente específico, utilizando uma cláusula JOIN com a tabela clientes para 
mostrar o nome do cliente. */

CREATE TABLE pedidoss (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE clientess (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(30),
    email VARCHAR(30)
);


/*16. Funcionários e Salários 
• Crie uma tabela salarios para armazenar o id_funcionario, salario, 
data_pagamento. Crie uma consulta para mostrar os salários de cada 
funcionário junto com seu nome. */


CREATE TABLE funcionarioss (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario VARCHAR(30)
);

-- Tabela de salários
CREATE TABLE salarios (
    id_salario INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT,
    salario DECIMAL(10, 2),
    data_pagamento DATE,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);

/*17. Pedidos e Pagamentos 
• Crie duas tabelas: pedidos e pagamentos. A tabela pedidos deve ter 
id_pedido, id_cliente, data_pedido e valor_total. A tabela pagamentos 
deve ter id_pagamento, id_pedido, data_pagamento e valor_pago. Realize 
uma consulta que mostre os pedidos e os pagamentos relacionados.*/


CREATE TABLE pedidoos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    valor_total DECIMAL(10, 2)
);


CREATE TABLE pagamentoss (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    data_pagamento DATE,
    valor_pago DECIMAL(10, 2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);



/*18. Estudantes e Notas 
• Crie duas tabelas: estudantes e notas. A tabela estudantes deve ter 
id_estudante, nome_estudante, email. A tabela notas deve ter id_nota, 
id_estudante, id_disciplina, nota. Realize uma consulta que mostre as 
notas dos estudantes em cada disciplina.*/


CREATE TABLE estudantees (
    id_estudante INT AUTO_INCREMENT PRIMARY KEY,
    nome_estudante VARCHAR(100),
    email VARCHAR(100)
);


CREATE TABLE notaas (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_estudante INT,
    id_disciplina INT,
    nota DECIMAL(4,2),
    FOREIGN KEY (id_estudante) REFERENCES estudantes(id_estudante)
);



/*19. Clientes e Endereços 
• Crie duas tabelas: clientes e enderecos. A tabela clientes deve ter 
id_cliente, nome_cliente, email. A tabela enderecos deve ter 
id_endereco, id_cliente, logradouro, cidade. Crie uma consulta que 
mostre todos os clientes com seus respectivos endereços.*/


CREATE TABLE clienntes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100),
    email VARCHAR(100)
);


CREATE TABLE enderecos (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    logradouro VARCHAR(150),
    cidade VARCHAR(100),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);



/*20. Clientes e Pedidos (Histórico de Pedidos) 
• Crie uma tabela pedidos que armazene id_pedido, id_cliente, data_pedido, 
valor_total. Crie uma consulta para listar todos os pedidos de um cliente, 
ordenando-os pela data de pedido. */


CREATE TABLE cliieentes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100),
    email VARCHAR(100)
);


CREATE TABLE peddidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);



/*21. Usuarios e Permissões 
• Crie duas tabelas: usuarios e permissoes. A tabela usuarios deve ter 
id_usuario, nome_usuario e email. A tabela permissoes deve ter 
id_permissao, nome_permissao. Crie uma tabela intermediária 
usuarios_permissoes que relacione usuários com permissões. Crie uma 
consulta para listar os usuários e suas permissões.*/


CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(100),
    email VARCHAR(100)
);


CREATE TABLE permissoes (
    id_permissao INT AUTO_INCREMENT PRIMARY KEY,
    nome_permissao VARCHAR(100)
);


CREATE TABLE usuarios_permissoes (
    id_usuario INT,
    id_permissao INT,
    PRIMARY KEY (id_usuario, id_permissao),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_permissao) REFERENCES permissoes(id_permissao)
);



/*22. Eventos e Participantes 
• Crie duas tabelas: eventos e participantes. A tabela eventos deve ter 
id_evento, nome_evento, data_evento. A tabela participantes deve ter 
id_participante, nome_participante, `id_event*/

CREATE TABLE eventos (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,
    nome_evento VARCHAR(100),
    data_evento DATE
);


CREATE TABLE participantes (
    id_participante INT AUTO_INCREMENT PRIMARY KEY,
    nome_participante VARCHAR(100),
    id_evento INT,
    FOREIGN KEY (id_evento) REFERENCES eventos(id_evento)
);



