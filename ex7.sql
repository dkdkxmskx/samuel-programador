/*Exercício 1 
Tabela: pessoas 
Tarefa: Renomeie a tabela pessoas para clientes. */

create database exercicios7
default character set  utf8mb4 
default collate = utf8mb4_general_ci;

use  exercicios7;

create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
profissao varchar(30) not null,
idade varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table pessoas
rename to clientes;

/*Exercício 2 
Tabela: produtos 
Tarefa: Renomeie a tabela produtos para itens.*/

create table produtos(
id int not null auto_increment,
nome varchar(30) not null,
profissao varchar(30) not null,
idade varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table produtos
rename to itens;

/*Exercício 3 
Tabela: alunos 
Tarefa: Renomeie a tabela alunos para estudantes. */

create table alunos(
id int not null auto_increment,
nome varchar(30) not null,
profissao varchar(30) not null,
idade varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table alunos
rename to estudantes;

/*Exercício 4 
Tabela: funcionarios 
Tarefa: Renomeie a tabela funcionarios para colaboradores.*/

create table funcionarios(
id int not null auto_increment,
nome varchar(30) not null,
profissao varchar(30) not null,
idade varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table funcionarios
rename to colaboradores;

/*Exercício 5 
Tabela: vendas 
Tarefa: Renomeie a tabela vendas para transacoes.*/

create table vendas(
id int not null auto_increment,
nome varchar(30) not null,
profissao varchar(30) not null,
idade varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table vendas
rename to ctransacoes;

/*Exercício 6 
Tabela: livros 
Tarefa: Renomeie a tabela livros para obras.*/

 create table livros(
id int not null auto_increment,
nome varchar(30) not null,
profissao varchar(30) not null,
idade varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table livros
rename to obras;

/*Exercício 7 
Tabela: usuarios 
Tarefa: Renomeie a tabela usuarios para clientes_usuarios.*/

 create table usuarios(
id int not null auto_increment,
nome varchar(30) not null,
profissao varchar(30) not null,
idade varchar(30) not null,
primary key (id)
)default charset utf8mb4;

alter table usuarios
rename to clientes_usuarios;

/*Exercício 8 
Tabela: pacientes 
Tarefa: Renomeie a tabela pacientes para usuarios_saude.*/

