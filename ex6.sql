/*Exercício 1 
Tabela: pessoas(id, nome, profissao, idade) 
Tarefa: Renomeie a coluna profissao para prof. 
*/

create database exercicios
default character set  utf8mb4 
default collate = utf8mb4_general_ci;

use  exercicios;

create table exercicios(
id int not null auto_increment,
nome varchar(30) not null,
profissao varchar(30) not null,
idade varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table exercicios
change column profissao prof varchar(30);

/*Exercício 2 
Tabela: clientes(id, nome, email, telefone) 
Tarefa: Renomeie a coluna telefone para contato_telefone. */

create table clientes(
id int not null auto_increment,
nome varchar(30) not null,
emeil varchar(30) not null,
telefone varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table clientes
change column telefone contato_telefone varchar(30);

/*Exercício 3 
Tabela: produtos(id, nome_produto, preco, estoque) 
Tarefa: Renomeie a coluna nome_produto para descricao.*/

create table produtos(
id int not null auto_increment,
nome_produto varchar(30) not null,
preco varchar(30) not null,
estoque varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table produtos
change column nome_produto descricao varchar(30); 

/*Exercício 4 
Tabela: alunos(id, nome, idade, genero) 
Tarefa: Renomeie a coluna genero para sexo.*/

create table alunos(
id int not null auto_increment,
nome varchar(30) not null,
idade varchar(30) not null,
genero varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table alunos 
change column genero sexo varchar(30);

/*Exercício 6 
Tabela: vendas(id, data_venda, valor_total) 
Tarefa: Renomeie a coluna valor_total para total_venda.*/

create table vendas(
id int not null auto_increment,
data_venda varchar(30) not null,
valor_total varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table vendas
change column valor_total total_venda varchar(30);

/*Exercício 7 
Tabela: livros(id, titulo, autor, ano_publicacao) 
Tarefa: Renomeie a coluna ano_publicacao para ano_lancamento.*/

create table livros(
id int not null auto_increment,
titulo varchar(30) not null,
autor varchar(30) not null,
ano_publicacao varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table livros
change column ano_publicacao ano_lancamento varchar(30);

/*Exercício 8 
Tabela: usuarios(id, usuario, senha, email) 
Tarefa: Renomeie a coluna usuario para login.*/

create table usuarios(
id int not null auto_increment,
usuarios varchar(30) not null,
senha varchar(30) not null,
emeil varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table usuarios
change column usuarios login varchar(30);

/*Exercício 9 
Tabela: pacientes(id, nome, nascimento, cpf) 
Tarefa: Renomeie a coluna nascimento para data_nascimento.*/

create table pacientes(
id int not null auto_increment,
nome varchar(30) not null,
nacimento varchar(30) not null,
cpf varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table pacientes
change column nacimento data_nacimento varchar(30);

/*Exercício 10 
Tabela: carros(id, modelo, cor, ano) 
Tarefa: Renomeie a coluna ano para ano_fabricacao. */

create table carros(
id int not null auto_increment,
modelo varchar(30) not null,
cor varchar(30) not null,
ano varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table carros
change column ano ano_fabricacao varchar(30);

/*Exercício 11 
Tabela: enderecos(id, rua, numero, cidade) 
Tarefa: Renomeie a coluna numero para num.*/

create table enderecos(
id int not null auto_increment,
rua varchar(30) not null,
numero varchar(30) not null,
cidade varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table enderecos
change column numero num varchar(30);

/*Exercício 12 
Tabela: pedidos(id, cliente_id, data, total) 
Tarefa: Renomeie a coluna data para data_pedido.*/

create table pedidos(
id int not null auto_increment,
cliente_id varchar(30) not null,
data varchar(30) not null,
total varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table pedidos
change column data data_pedido varchar(30);

/*Exercício 13 
Tabela: notas(id, aluno_id, disciplina, nota_final) 
Tarefa: Renomeie a coluna nota_final para media.*/

create table notas(
id int not null auto_increment,
aluno_id varchar(30) not null,
diciplina varchar(30) not null,
nota_final varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table notas
change column nota_final media varchar(30);

/*Exercício 14 
Tabela: turmas(id, nome_turma, ano_letivo) 
Tarefa: Renomeie a coluna nome_turma para turma.*/

create table turmas(
id int not null auto_increment,
nome_turma varchar(30) not null,
ano_letivo varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table turmas
change column nome_turma turma varchar(30);

/*Exercício 15 
Tabela: fornecedores(id, razao_social, cnpj) 
Tarefa: Renomeie a coluna razao_social para nome_empresa.*/

create table fornecedores(
id int not null auto_increment,
razao_social varchar(30) not null,
cnpj varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table fornecedores
change column razao_social nome_empresa varchar(30);

/*Exercício 16 
Tabela: pagamentos(id, valor, data_pagamento) 
Tarefa: Renomeie a coluna data_pagamento para pagamento_em.*/

create table pagamentos(
id int not null auto_increment,
valor varchar(30) not null,
data_pagamento varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table pagamentos
change column data_pagamento pagamento_em varchar(30);

/*Exercício 17 
Tabela: avaliacoes(id, comentario, nota) 
Tarefa: Renomeie a coluna nota para pontuacao.*/ 

create table avaliacoes(
id int not null auto_increment,
comentario varchar(30) not null,
nota varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table avaliacoes
change column nota pontuacao varchar(30);

/*Exercício 18 
Tabela: eventos(id, nome_evento, data_evento) 
Tarefa: Renomeie a coluna nome_evento para titulo. */

create table eventos(
id int not null auto_increment,
nome_evento varchar(30) not null,
data_evento varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table eventos
change column nome_evento titulo varchar(30);

/*Exercício 19 
Tabela: empresas(id, nome, setor, funcionarios) 
Tarefa: Renomeie a coluna funcionarios para num_funcionarios.*/

create table empresas(
id int not null auto_increment,
nome varchar(30) not null,
setor varchar(30) not null,
funcionarios varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table empresas
change column funcionarios num_funcionario varchar(30);

/*Exercício 20 
Tabela: disciplinas(id, nome_disciplina, professor) 
Tarefa: Renomeie a coluna nome_disciplina para disciplina.*/

create table diciplinas(
id int not null auto_increment,
nome_diciplina varchar(30) not null,
professor varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table diciplinas
change column nome_diciplina disciplina varchar(30);

/*Exercício 21 
Tabela: chamados(id, cliente, problema, status) 
Tarefa: Renomeie a coluna status para situacao.*/

create table chamados(
id int not null auto_increment,
cliente varchar(30) not null,
problema varchar(30) not null,
status varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table chamados
change column status situacao varchar(30);

/*Exercício 22 
Tabela: mensagens(id, remetente, destinatario, conteudo) 
Tarefa: Renomeie a coluna conteudo para mensagem.*/

 create table mesagens(
id int not null auto_increment,
remetente varchar(30) not null,
destinatario varchar(30) not null,
conteudo varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table mensagens
change column conteudo mensagem varchar(30);

/*Exercício 23 
Tabela: tarefas(id, titulo, descricao, concluida) 
Tarefa: Renomeie a coluna concluida para finalizada.*/

 create table tarefas(
id int not null auto_increment,
titulo varchar(30) not null,
descricao varchar(30) not null,
concluida varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table tarefas
change column concluida finalizada varchar(30);

/*Exercício 24 
Tabela: reunioes(id, data_reuniao, local) 
Tarefa: Renomeie a coluna local para sala. */

 create table reunioes(
id int not null auto_increment,
data_reuniao varchar(30) not null,
local varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table reunioes
change column local sala varchar(30);

/*Exercício 25 
Tabela: cadastros(id, nome, email, criado_em) 
Tarefa: Renomeie a coluna criado_em para data_criacao.*/

 create table cadastros(
id int not null auto_increment,
nome varchar(30) not null,
email varchar(30) not null,
criado_em varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table cadastros
change column criado_em data_criacao varchar(30);