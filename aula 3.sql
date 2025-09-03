Criando o banco de dados livraria 
create database livraria 
 DEFAULT CHARACTER SET utf8mb4
 DEFAULT COLLATE utf8mb4_general_ci;
 
 
 #selecionando o banco de dados livraria 
 use livraria ;
 
 #criando tabela de livros 
 create table livros(
  id int not null auto_increment , 
  livro varchar (100),
  titulo varchar (30),
  preço decimal (5,2),
  autor varchar (30),
  editora varchar (30), 
  primary key (id)
  )default charset =utf8mb4;
	
  
create table autores(
id int not null auto_increment,
autor varchar(30) not null
 nome varchar (30) not null,
 nacionalidade varchar (30)
)default charset = utf8mb4;

create table  autores(
  autor varchar (30),
  nome varchar (30) not null,
  nacionalidade varchar (30) not null
) default charset utf8mb

create table editora(
  editora varchar (30),
  nome varchar (30)
  telefone varchar (30)
) default charset utf8mb4;

#Criando dados petshop(
create database petshop
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;
  
  use petshop;
  
  
   create table animais(
   animal varchar (30),
   nome varchar (30) not null,
   especie varchar (30),
   idade int,
   cliente varchar (30)
) default charset utf8mb4;


#criando tabela de serviços
 create table serviços(
  id int not null auto_increment,
  servico varchar (30),
  descrição varchar (30) not null,
  preço float,
  primary key (id)
)default charset utf8mb4;

create database escolaldiomas 
  default character set utf8mb4
  default collate utf8mb4_general_ci;
  
  use escolaldiomas;
  
create table aluno(
    id int not null auto_increment,
    aluno varchar (30),
    nome varchar (30) not null,
    email varchar (30),
    primary key (id)
) default charset utf8mb4;
  
  create table professores(
   professor varchar (30),
   nome varchar (30) not null,
   especialidade varchar (30),
   genero enum ('M' , 'F')
) default charset utf8mb4;

#Criando dados hospital
create database hospital;

use hospital;

create table pacientes(
  paciente varchar (30),
  nome varchar (30)
  dataAniversario date
  
  
  
  


  
