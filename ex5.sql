/*1.Crie a tabela salas (id, nome, bloco) e adicione a coluna andar. */

create database salas
default character set utf8mb4
default collate utf8mb4_general_ci;

use salas;

create table sala(
id int not null auto_increment,
nome varchar (30) not null,
bloco varchar (30) not null,
primary key (id)
)default charset utf8mb4;

alter table sala
add column andar varchar(30) after nome;

/*2.Crie a tabela salas (id, nome, bloco, andar) e adicione a coluna tipo. */

alter table salas
add column tipo varchar (30) after nome;

/*3.Crie a tabela salas (id, nome, bloco, andar, tipo) e remova a coluna tipo.*/

alter table salas
drop column tipo;

 /*4.Crie a tabela livros (id, titulo, autor) e adicione a coluna ano.*/
 
 

alter table livros
add column ano varchar(30) after autor;

/*5.Crie a tabela livros (id, titulo, autor, ano) e adicione a coluna editora.*/

alter table livros
add column editora varchar(30) not null after autor;

/*6.Crie a tabela livros (id, titulo, autor, ano, editora) e remova a coluna ano.*/

 alter table livros
drop column ano;

/*7.Crie a tabela bibliotecas (id, nome, local) e adicione a coluna responsavel.*/

create table biblioteca(
id int not null auto_increment,
nome varchar (30) not null,
local varchar (30) not null,
primary key (id)
)default charset utf8mb4;

alter table biblioteca
add column responsavel varchar(30) after nome;

/*8.Crie a tabela bibliotecas (id, nome, local, responsavel) e remova a coluna 
responsavel. */

alter table biblioteca
drop column responsavel;

/*9.Crie a tabela eventos (id, nome, data) e adicione a coluna local. */

create table eventos(
id int not null auto_increment,
nome varchar (30) not null,
data varchar (30) not null,
primary key (id)
)default charset utf8mb4;

alter table eventos
add column local varchar(30) after nome;

 /*10.Crie a tabela eventos (id, nome, data, local) e remova a coluna local.*/
 
 alter table eventos
drop column local;

 /*11.Crie a tabela usuarios (id, login, senha) e adicione a coluna perfil.*/
 
 create table usuarios(
id int not null auto_increment,
login varchar (30) not null,
senha varchar (30) not null,
primary key (id)
)default charset utf8mb4;

alter table usuarios
add column perfil varchar(30) after login;

/*12. Crie a tabela usuarios (id, login, senha, perfil) e remova a coluna perfil. */

alter table usuarios
drop column perfil;

/*13. Crie a tabela pedidos (id, cliente_id, data) e adicione a coluna status */

create table pedidos(
id int not null auto_increment,
cliente_id varchar (30) not null,
data varchar (30) not null,
primary key (id)
)default charset utf8mb4;

alter table pedidos
add column status varchar(30) after data;

 /*14.Crie a tabela pedidos (id, cliente_id, data, status) e adicione a coluna 
valor_total. */

alter table pedidos
add column valor_total varchar(30) after data;

 /*15.Crie a tabela pedidos (id, cliente_id, data, status, valor_total) e remova a 
coluna status.*/

alter table pedidos
drop column status;

/*16.Crie a tabela estoque (id, produto_id, quantidade) e adicione a coluna 
validade.*/

create table estoque(
id int not null auto_increment,
produto_id varchar (30) not null,
quantidade varchar (30) not null,
primary key (id)
)default charset utf8mb4;

alter table estoque
add column validade varchar(30) after quantidade;

/*17.Crie a tabela estoque (id, produto_id, quantidade, validade) e remova a 
coluna validade. */

alter table estoques
drop column validade;

 /*18.Crie a tabela fornecedores (id, nome, contato) e adicione a coluna cnpj. */
 
 create table fornecedor(
id int not null auto_increment,
nome varchar (30) not null,
contato varchar (30) not null,
primary key (id)
)default charset utf8mb4;

alter table fornecedor
add column cnpj varchar(30) after contato;

/*19. Crie a tabela fornecedores (id, nome, contato, cnpj) e remova a coluna 
contato.*/

alter table fornecedor
drop column contato;

 /*20.Crie a tabela pagamentos (id, pedido_id, valor) e adicione a coluna 
data_pagamento.*/

create table pagamento(
id int not null auto_increment,
pedido_id varchar (30) not null,
valor varchar (30) not null,
primary key (id)
)default charset utf8mb4;

alter table pagamento
add column data_pagamento varchar(30) after valor;
