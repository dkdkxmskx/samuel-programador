/*•  Cinema 
• Diretores: Insira 3 diretores com o nome e nacionalidade, como Christopher 
Nolan (britânico), Greta Gerwig (americana) e Bong Joon-ho (sul-coreano). 
• Filmes: Registre 3 filmes com título, gênero, duração e o diretor. Exemplos: 
"Oppenheimer" (c), "Barbie" (comédia, 120 min) e "Parasita" 
(suspense, 132 min). 
• Sessões: Adicione 3 sessões de filmes com horário e sala. Exemplos: 
"Oppenheimer" na Sala 1 às 19h, "Barbie" na Sala 2 às 20h, e "Parasita" na Sala 
3 às 21:30h.*/

create database cinema
default character set utf8mb4
default collate utf8mb4_general_ci;

use cinema;

create table diretores(
id int not null auto_increment,
nome varchar(30) not null,
nacionalidade varchar(30) not null,
primary key (id)
) default charset = utf8mb4
collate = utf8mb4_general_ci;

create table filmes(
id int not null auto_increment,
titulo varchar(30) not null,
genero varchar(30) not null,
duracao varchar(30) not null,
diretor varchar(30) not null,
primary key (id)
) default charset = utf8mb4
collate = utf8mb4_general_ci;

create table sessoes(
id int not null auto_increment,
filmes varchar(30) not null,
horario varchar(30) not null,
primary key (id)
) default charset = utf8mb4
collate = utf8mb4_general_ci;

insert into diretores
(nome,nacionalidade)
values ('Christopher Nolan', 'britânico') , ('Greta Gerwig','americana') , ('Bong Joon-ho', 'sul-coreano');

insert into filmes
(titulo, genero, duracao, diretor)
values ('Oppenheimer', 'drama' , '180 min', 'Christopher Nolan') , ('Barbie' , 'comédia' , '120 min', 'Greta Gerwig') , ('Parasita' , 'suspense' , '132 min', 'Bong Joon-ho');

insert into sessoes
(filmes, horario)
values ('Oppenheimer', '19h') , ('Barbie', '120 min') , ('Parasita', '21:30h');

/*•  Oficina Mecânica 
• Clientes: Registre 3 clientes com nome e telefone, como Carlos Silva, Juliana 
Oliveira e Ricardo Souza. 
• Veículos: Insira 3 veículos para os clientes, como um Fusca 1995 para Carlos, 
um Civic 2020 para Juliana e um Celta 2010 para Ricardo. 
• Serviços: Adicione 3 serviços, como troca de óleo para o Fusca, troca de pneus 
para o Civic e alinhamento para o Celta.*/

 create database mecanica
default character set utf8mb4
default collate utf8mb4_general_ci;

use mecanica;

create table clientes(
id int not null auto_increment,
nome varchar(30) not null,
telefone varchar(30) not null,
primary key (id)
) default charset = utf8mb4
collate = utf8mb4_general_ci;

create table veiculo(
id int not null auto_increment,
clientes varchar(30) not null,
veiculos varchar(30) not null,
primary key (id)
) default charset = utf8mb4
collate = utf8mb4_general_ci;

create table serviços(
id int not null auto_increment,
cliente varchar(30) not null,
veiculos varchar(30) not null,
serviço varchar(30) not null,
primary key (id)
) default charset = utf8mb4
collate = utf8mb4_general_ci;

insert into cliente
(nome, telefone)
values ('Carlos Silva', '(11) 91234-5678')