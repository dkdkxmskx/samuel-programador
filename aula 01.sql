/*1-Crie um banco de dados chamado Livraria. Dentro dele, crie três tabelas: 
Livros (livro, titulo, preco, autor, editora), Autores (autor, nome, 
nacionalidade) e Editoras (editora, nome, telefone).*/


#Criando banco de dados livraria
create database livraria
	default character set utf8mb4
    default collate utf8mb8_general_ci;
    
#Selecionando o banco de dados livraria
use livraria;

#Criando a tabela livro
create table livros(
id int not null auto_increment,
    livro varchar(100),
    titulo varchar(30),
    preco decimal (5,2),
    autor varchar(30),
    primary key (id)
)default charset=UTF8;

/*2-Crie um banco de dados chamado PetShop. Crie três tabelas: 
Animais (animal, nome, especie, idade, cliente), 
Clientes (cliente, nome, telefone) 
e Servicos (servico, descricao, preco).*/

#Criando banco de dados PetShop
create database PetShop
	default character set utf8mb4
    default collate utf8mb4_general_ci;
    
#Selecionando o banco de dados PetShop
use PetShop;

#Criando a tabela animais
create table animais (
id int not null auto_increment,
animal varchar(30) not null,
nome varchar(30) not null,
especie varchar(30) not null,
idade date,
cliente varchar(30) not null,
primary key (id)
) default charset = utf8mb4
collate = utf8mb4_general_ci;



#Criando a tabela clientes
create table clientes(
cliente varchar(30),
nome varchar(30) not null,
telefone varchar(30) 
) default charset = utf8mb4
collate = utf8mb4_general_ci;

#Criando a tabela servicos
create table servicos(
  id int not null auto_increment,
  servico varchar(30),
  descricao varchar(30) not null,
  preco float,
  primary key (id)
) default charset utf8mb4
collate = utf8mb4_general_ci;

/*3-Crie um banco de dados chamado EscolaIdiomas. Crie três tabelas: 
Alunos (aluno, nome, email), Professores (professor, nome, 
especialidade) e Cursos (curso, nome, carga_horaria).*/

create database escolaidiomas
 default character set utf8mb4
 default collate utf8mb4_general_ci;
 
 use escolaidiomas;
 
 create table alunos(
      id int not null auto_increment,
      aluno varchar(30),
      nome varchar(30) not null,
      email varchar (30),
      primary key (id)
 ) default charset utf8mb4;
 
create table professores(
      professor varchar(30),
      nome varchar(30) not null,
      especialidade varchar(30),
      genero enum ('M','F')
)default charset utf8mb4;

create table cursos(
	id_curso INT AUTO_INCREMENT,
    curso VARCHAR(30),
    nome VARCHAR(30),
    carga_horaria INT,
    PRIMARY KEY (id_curso)
      



    