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

INSERT INTO clientes (nome, email) VALUES ('Ana Souza', 'ana.souza@email.com');
INSERT INTO clientes (nome, email) VALUES ('Bruno Lima', 'bruno.lima@email.com');
INSERT INTO clientes (nome, email) VALUES ('Carla Mendes', 'carla.mendes@email.com');
INSERT INTO clientes (nome, email) VALUES ('Diego Rocha', 'diego.rocha@email.com');
INSERT INTO clientes (nome, email) VALUES ('Elaine Costa', 'elaine.costa@email.com');

INSERT INTO pedidos (id_cliente, data_pedido, valor_total) VALUES (1, '2025-09-01', 250.50);
INSERT INTO pedidos (id_cliente, data_pedido, valor_total) VALUES (2, '2025-09-02', 120.00);
INSERT INTO pedidos (id_cliente, data_pedido, valor_total) VALUES (3, '2025-09-03', 89.99);
INSERT INTO pedidos (id_cliente, data_pedido, valor_total) VALUES (4, '2025-09-03', 300.00);
INSERT INTO pedidos (id_cliente, data_pedido, valor_total) VALUES (5, '2025-09-04', 45.75);

SELECT clientes.nome, pedidos.valor_total
FROM clientes
JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;


/*2. SELECT clientes.nome, pedidos.valor_total
FROM clientes
JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;
.*/

CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50)
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(10, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

INSERT INTO categorias (nome_categoria) VALUES
('Eletrônicos'),
('Roupas'),
('Alimentos'),
('Livros'),
('Móveis');


INSERT INTO produtos (nome, preco, id_categoria) VALUES
('Notebook Lenovo', 3500.00, 1),
('Smartphone Samsung', 2200.00, 1),
('Camiseta Branca', 49.90, 2),
('Arroz 5kg', 23.50, 3),
('Cadeira de Escritório', 599.99, 5),
('Livro de SQL', 89.00, 4);

SELECT produtos.id_produto,produtos.nome AS nome_produto,produtos.preco,categorias.nome_categoria
FROM produtos
JOIN categorias ON produtos.id_categoria = categorias.id_categoria;



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

INSERT INTO vendas (nome_produto) VALUES
('Notebook Dell'),
('Smartphone Xiaomi'),
('Camiseta Nike'),
('Fones de ouvido JBL'),
('Teclado Logitech');

INSERT INTO produtoos (id_produto, quantidade, data_venda) VALUES
(1, 2, '2025-09-01'),  
(2, 5, '2025-09-02'),  
(3, 10, '2025-09-03'), 
(1, 1, '2025-09-04'),  
(4, 3, '2025-09-05');  

SELECT vendas.nome_produto,produtoos.quantidade,produtoos.data_venda
FROM produtoos
JOIN 
vendas ON produtoos.id_produto = vendas.id_produto;


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

INSERT INTO departamentos (nome_departamento) VALUES
('Recursos Humanos'),
('Tecnologia da Informação'),
('Marketing'),
('Vendas'),
('Financeiro');

INSERT INTO funcionarios (nome_funcionario, id_departamento) VALUES
('João Silva', 1), 
('Maria Souza', 2),
('Carlos Lima', 3),
('Ana Oliveira', 4), 
('Roberto Costa', 5); 

SELECT funcionarios.id_funcionario,funcionarios.nome_funcionario,departamentos.nome_departamento
FROM funcionarios
JOIN departamentos ON funcionarios.id_departamento = departamentos.id_departamento;



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

INSERT INTO estudantes (nome_estudante, email) VALUES
('Carlos Silva', 'carlos.silva@email.com'),
('Maria Oliveira', 'maria.oliveira@email.com'),
('João Souza', 'joao.souza@email.com'),
('Ana Costa', 'ana.costa@email.com'),
('Roberto Lima', 'roberto.lima@email.com');

INSERT INTO cursos (nome_curso) VALUES
('Matemática'),
('Física'),
('Química'),
('Programação'),
('História');

SELECT estudantes.nome_estudante,cursos.nome_curso,matriculas.data_matricula
FROM matriculas
JOIN estudantes ON matriculas.id_estudante = estudantes.id_estudante
JOIN cursos ON matriculas.id_curso = cursos.id_curso;



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

INSERT INTO autores (nome_autor) VALUES
('J.K. Rowling'),
('George R.R. Martin'),
('J.R.R. Tolkien'),
('Agatha Christie'),
('Isaac Asimov');

INSERT INTO livros (titulo, id_autor) VALUES
('Harry Potter e a Pedra Filosofal', 1),
('Game of Thrones', 2),
('O Senhor dos Anéis', 3),
('Assassinato no Expresso do Oriente', 4),
('Fundação', 5);

SELECT livros.titulo,autores.nome_autor
FROM livros
JOIN autores ON livros.id_autor = autores.id_autor;
                    
drop table autores;

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

INSERT INTO professores (nome_professor) VALUES
('Dr. João Silva'),
('Profa. Maria Oliveira'),
('Dr. Carlos Pereira'),
('Profa. Ana Costa'),
('Dr. Roberto Lima');

INSERT INTO disciplinas (nome_disciplina, id_professor) VALUES
('Matemática', 1), 
('Física', 2),    
('Química', 3),     
('Programação', 4), 
('História', 5);    


INSERT INTO alunos (nome, id_disciplina) VALUES
('Carlos Souza', 1), 
('Maria Lima', 2),   
('João Santos', 3), 
('Ana Oliveira', 4), 
('Roberto Costa', 5); 

SELECT alunos.nome AS aluno,disciplinas.nome_disciplina AS disciplina,professores.nome_professor AS professor
FROM alunos
JOIN disciplinas ON alunos.id_disciplina = disciplinas.id_disciplina
JOIN professores ON disciplinas.id_professor = professores.id_professor;


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

INSERT INTO projetos (nome_projeto) VALUES
('Projeto A'),
('Projeto B'),
('Projeto C'),
('Projeto D'),
('Projeto E');

INSERT INTO funcionarioos (nome_funcionario, id_projeto) VALUES
('João Silva', 1),  
('Maria Oliveira', 2),
('Carlos Souza', 3), 
('Ana Costa', 4),
('Roberto Lima', 5); 

SELECT funcionarioos.nome_funcionario,projetos.nome_projeto
FROM funcionarioos
JOIN projetos ON funcionarioos.id_projeto = projetos.id_projeto;


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


CREATE TABLE itens_pedido (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);

INSERT INTO pedidos (id_cliente, data_pedido) VALUES
(1, '2025-09-01'),
(2, '2025-09-02'),
(3, '2025-09-03'),
(4, '2025-09-04'),
(5, '2025-09-05');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 101, 2, 15.50), 
(1, 102, 1, 25.00),  
(2, 103, 3, 10.00),  
(3, 104, 1, 40.00),  
(4, 105, 5, 5.00),  
(5, 106, 2, 12.00); 

SELECT pedidos.id_pedido,pedidos.id_cliente,pedidos.data_pedido,itens_pedido.id_produto,itens_pedido.quantidade,itens_pedido.preco_unitario
FROM pedidos
JOIN itens_pedido ON pedidos.id_pedido = itens_pedido.id_pedido;


/*10. Cursos e Matrículas 
• Crie duas tabelas: cursos e matriculas. A tabela cursos deve ter id_curso e 
nome_curso. A tabela matriculas deve ter id_matricula, id_curso, 
id_estudante. Realize uma consulta que mostre todos os cursos e quantos 
alunos estão matriculados em cada um.*/


CREATE TABLE cursoss (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(30)
    );
    
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


CREATE TABLE matriculass (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT,
    id_estudante INT,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

INSERT INTO cursoss (nome_curso) VALUES
('Matemática'),
('Física'),
('Química'),
('História'),
('Programação');

INSERT INTO filmes (titulo) VALUES
('O Senhor dos Anéis'),
('Vingadores: Ultimato'),
('O Rei Leão'),
('Star Wars: Império'),
('Matrix');


INSERT INTO atores (nome_ator) VALUES
('Elijah Wood'),
('Robert Downey Jr.'),
('Scarlett Johansson'),
('Harrison Ford'),
('Keanu Reeves');

INSERT INTO matriculass (id_curso, id_estudante) VALUES
(1, 101), 
(2, 102), 
(3, 103), 
(4, 104), 
(5, 105); 

SELECT cursoss.nome_curso,matriculass.id_estudante
FROM matriculass
JOIN cursoss ON matriculass.id_curso = cursoss.id_curso;



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


CREATE TABLE livross (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30)
);


CREATE TABLE livros_autores (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro),
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

INSERT INTO autoress (nome_autor) VALUES
('J.K. Rowling'),
('George R.R. Martin'),
('J.R.R. Tolkien'),
('Agatha Christie'),
('Isaac Asimov');

INSERT INTO livross (titulo) VALUES
('Harry Potter 1'),
('Game of Thrones'),
('Senhor dos Anéis'),
('Assassinato Expresso'),
('Fundação');


INSERT INTO autoress (nome_autor) VALUES
('J.K. Rowling'),
('George R.R. Martin'),
('J.R.R. Tolkien'),
('Agatha Christie'),
('Isaac Asimov');

SELECT livross.titulo AS livro,autoress.nome_autor AS autor
FROM livros_autores
JOIN livross ON livros_autores.id_livro = livross.id_livro
JOIN autoress ON livros_autores.id_autor = autoress.id_autor;


/*12. Filmes e Atores 
• Crie duas tabelas: filmes e atores. A tabela filmes deve ter id_filme e 
titulo. A tabela atores deve ter id_ator e nome_ator. Crie uma tabela 
intermediária filmes_atores para relacionar atores a filmes. Realize uma 
consulta que liste todos os filmes e seus respectivos atores.*/


CREATE TABLE filmees (
    id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30)
);


CREATE TABLE atorees (
    id_ator INT AUTO_INCREMENT PRIMARY KEY,
    nome_ator VARCHAR(30)
);



CREATE TABLE filmes_atorees (
    id_filme INT,
    id_ator INT,
    PRIMARY KEY (id_filme, id_ator),
    FOREIGN KEY (id_filme) REFERENCES filmes(id_filme),
    FOREIGN KEY (id_ator) REFERENCES atores(id_ator)
);

INSERT INTO filmees (titulo) VALUES
('O Senhor dos Anéis'),
('Vingadores: Ultimato'),
('O Rei Leão'),
('Matrix'),
('Star Wars: Império');

INSERT INTO atorees (nome_ator) VALUES
('Elijah Wood'),
('Robert Downey Jr.'),
('Matthew Broderick'),
('Keanu Reeves'),
('Mark Hamill');

INSERT INTO filmes_atorees (id_filme, id_ator) VALUES
(1, 1),   
(2, 2),   
(3, 3),   
(4, 4),  
(5, 5);   

SELECT f.titulo AS Filme, a.nome_ator AS Ator
FROM filmees f
JOIN filmes_atorees fa ON f.id_filme = fa.id_filme
JOIN atorees a ON fa.id_ator = a.id_ator;


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

INSERT INTO categoriass (nome_categoria) VALUES
('Tecnologia'),
('Moda'),
('Saúde'),
('Educação'),
('Entretenimento');

INSERT INTO subcategorias (id_categoria, nome_subcategoria) VALUES
(1, 'Computadores'),
(1, 'Smartphones'),
(2, 'Roupas Femininas'),
(2, 'Acessórios'),
(3, 'Nutrição'),
(3, 'Exercícios'),
(4, 'Ensino Infantil'),
(4, 'Ensino Superior'),
(5, 'Filmes'),
(5, 'Música');

SELECT c.nome_categoria AS Categoria, s.nome_subcategoria AS Subcategoria
FROM categoriass c
JOIN subcategorias s ON c.id_categoria = s.id_categoria;


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

ALTER TABLE artigos MODIFY titulo VARCHAR(100);

INSERT INTO artigos (titulo, data_publicacao) VALUES
('Como aprender SQL', '2025-08-01'),
('Introdução à Programação', '2025-08-05'),
('Desenvolvimento Web', '2025-08-10'),
('Banco de Dados Relacional', '2025-08-12'),
('Algoritmos e Estruturas de Dados', '2025-08-15');


INSERT INTO tags (nome_tag) VALUES
('SQL'),
('Programação'),
('Web'),
('Banco de Dados'),
('Algoritmos');

INSERT INTO artigos_tags (id_artigo, id_tag) VALUES
(1, 1),  -- "Como aprender SQL" com a tag "SQL"
(1, 2),  -- "Como aprender SQL" com a tag "Programação"
(2, 2),  -- "Introdução à Programação" com a tag "Programação"
(3, 3),  -- "Desenvolvimento Web" com a tag "Web"
(3, 4),  -- "Desenvolvimento Web" com a tag "Banco de Dados"
(4, 4),  -- "Banco de Dados Relacional" com a tag "Banco de Dados"
(5, 5);  -- "Algoritmos e Estruturas de Dados" com a tag "Algoritmos"

SELECT a.titulo AS Artigo, t.nome_tag AS Tag
FROM artigos a
JOIN artigos_tags at ON a.id_artigo = at.id_artigo
JOIN tags t ON at.id_tag = t.id_tag;



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

INSERT INTO clientess (nome_cliente, email) VALUES
('João Silva', 'joao.silva@email.com'),
('Maria Oliveira', 'maria.oliveira@email.com'),
('Carlos Souza', 'carlos.souza@email.com'),
('Ana Costa', 'ana.costa@email.com'),
('Lucas Almeida', 'lucas.almeida@email.com');

INSERT INTO pedidoss (id_cliente, data_pedido, valor_total) VALUES
(1, '2025-09-01', 150.00),
(2, '2025-09-05', 250.50),
(3, '2025-09-07', 320.75),
(4, '2025-09-10', 180.25),
(5, '2025-09-15', 400.00);

SELECT c.nome_cliente, c.email, p.id_pedido, p.data_pedido, p.valor_total
FROM clientess c
JOIN pedidoss p ON c.id_cliente = p.id_cliente;



/*16. Funcionários e Salários 
• Crie uma tabela salarios para armazenar o id_funcionario, salario, 
data_pagamento. Crie uma consulta para mostrar os salários de cada 
funcionário junto com seu nome. */


CREATE TABLE funcionarioss (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario VARCHAR(30)
);


CREATE TABLE salarios (
    id_salario INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT,
    salario DECIMAL(10, 2),
    data_pagamento DATE,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);

INSERT INTO funcionarioss (nome_funcionario) VALUES
('João Silva'),
('Maria Oliveira'),
('Carlos Souza'),
('Ana Costa'),
('Lucas Almeida');

INSERT INTO salarios (id_funcionario, salario, data_pagamento) VALUES
(1, 2500.00, '2025-09-01'),
(2, 3000.50, '2025-09-01'),
(3, 2700.00, '2025-09-01'),
(4, 3200.75, '2025-09-01'),
(5, 2900.25, '2025-09-01');

SELECT f.nome_funcionario, s.salario, s.data_pagamento
FROM funcionarioss f
JOIN salarios s ON f.id_funcionario = s.id_funcionario;


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

INSERT INTO pedidos (id_cliente, data_pedido, valor_total) VALUES
(1, '2025-09-01', 150.75),
(2, '2025-09-02', 300.50),
(3, '2025-09-03', 500.00),
(4, '2025-09-04', 100.25),
(5, '2025-09-05', 200.00);

INSERT INTO pagamentoss (id_pedido, data_pagamento, valor_pago) VALUES
(1, '2025-09-02', 150.75),
(2, '2025-09-03', 300.50),
(3, '2025-09-04', 500.00),
(4, '2025-09-06', 100.25),
(5, '2025-09-07', 200.00);

SELECT p.id_pedido, p.id_cliente, p.data_pedido, p.valor_total, pg.data_pagamento, pg.valor_pago
FROM pedidos p
JOIN pagamentoss pg ON p.id_pedido = pg.id_pedido;


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

INSERT INTO estudantes (nome_estudante, email) VALUES
('Ana Souza', 'ana.souza@email.com'),
('Carlos Pereira', 'carlos.pereira@email.com'),
('Maria Oliveira', 'maria.oliveira@email.com'),
('João Silva', 'joao.silva@email.com'),
('Lucia Costa', 'lucia.costa@email.com');

INSERT INTO disciplinas (nome_disciplina) VALUES
('Matemática'),
('Física'),
('Química'),
('Biologia'),
('Literatura');

SELECT e.nome_estudante, d.nome_disciplina, n.nota
FROM notaas n
JOIN estudantes e ON n.id_estudante = e.id_estudante
JOIN disciplinas d ON n.id_disciplina = d.id_disciplina;


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

INSERT INTO clienntes (nome_cliente, email) VALUES
('Carlos Silva', 'carlos.silva@email.com'),
('Maria Santos', 'maria.santos@email.com'),
('João Oliveira', 'joao.oliveira@email.com'),
('Ana Costa', 'ana.costa@email.com'),
('Lucas Pereira', 'lucas.pereira@email.com');



INSERT INTO enderecos (id_cliente, logradouro, cidade) VALUES
(1, 'Rua A, 123', 'São Paulo'),
(2, 'Avenida B, 456', 'Rio de Janeiro'),
(3, 'Rua C, 789', 'Belo Horizonte'),
(4, 'Travessa D, 321', 'Curitiba'),
(5, 'Rua E, 654', 'Porto Alegre');

SELECT c.nome_cliente, c.email, e.logradouro, e.cidade
FROM clientes c
JOIN enderecos e ON c.id_cliente = e.id_cliente;



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

INSERT INTO cliieentes (nome_cliente, email) VALUES
('Carlos Silva', 'carlos.silva@email.com'),
('Maria Santos', 'maria.santos@email.com'),
('João Oliveira', 'joao.oliveira@email.com'),
('Ana Costa', 'ana.costa@email.com'),
('Lucas Pereira', 'lucas.pereira@email.com');

INSERT INTO peddidos (id_cliente, data_pedido, valor_total) VALUES
(1, '2025-08-01', 250.50),
(2, '2025-08-03', 180.75),
(3, '2025-08-04', 320.00),
(4, '2025-08-05', 150.40),
(5, '2025-08-06', 500.00);

SELECT p.id_pedido, c.nome_cliente, p.data_pedido, p.valor_total
FROM peddidos p
JOIN cliieentes c ON p.id_cliente = c.id_cliente;


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

INSERT INTO usuarios (nome_usuario, email) VALUES
('Carlos Silva', 'carlos.silva@email.com'),
('Maria Santos', 'maria.santos@email.com'),
('João Oliveira', 'joao.oliveira@email.com'),
('Ana Costa', 'ana.costa@email.com'),
('Lucas Pereira', 'lucas.pereira@email.com');

INSERT INTO permissoes (nome_permissao) VALUES
('Administração'),
('Edição'),
('Visualização'),
('Exclusão'),
('Criação');

INSERT INTO usuarios_permissoes (id_usuario, id_permissao) VALUES
(1, 1),  
(1, 2),  
(2, 3),  
(3, 4), 
(4, 5),  
(5, 3);  

SELECT u.nome_usuario, p.nome_permissao
FROM usuarios u
JOIN usuarios_permissoes up ON u.id_usuario = up.id_usuario
JOIN permissoes p ON up.id_permissao = p.id_permissao;


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

INSERT INTO eventos (nome_evento, data_evento) VALUES
('Congresso de Tecnologia', '2025-10-15'),
('Workshop de SQL', '2025-11-05'),
('Seminário de Marketing Digital', '2025-11-20'),
('Festa de Aniversário da Empresa', '2025-12-10'),
('Café com Empreendedores', '2025-12-20');


INSERT INTO participantes (nome_participante, id_evento) VALUES
('Carlos Silva', 1),  
('Maria Santos', 1),  
('João Oliveira', 2),  
('Ana Costa', 3),  
('Lucas Pereira', 4), 
('Fernanda Souza', 5); 

SELECT p.nome_participante, e.nome_evento, e.data_evento
FROM participantes p
JOIN eventos e ON p.id_evento = e.id_evento;
