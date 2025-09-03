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

insert into clientes
(nome, telefone)
values ('Carlos Silva', '(11) 91234-5678') , ('Juliana Oliveira', '(11) 91234-5678') , ('Ricardo Souza', '(21) 99876-5432');

insert into veiculo
(clientes, veiculos)
values ('Carlos', 'Fusca') , ('Juliana', 'Civic') , ('Ricardo', 'Celta');

insert into serviços
(cliente, veiculos, serviço)
values ('Carlos', 'Fusca', 'troca de óleo') , ('Juliana', 'Civic', 'troca de pneus') , ('Ricardo', 'Celta', 'alinhamento');

/*•  Restaurante 
• Pratos: Cadastre 3 pratos, como "Feijoada" (40,00), "Lasanha" (35,00) e 
"Brigadeiro" (10,00). 
• Clientes: Insira 3 clientes com nome e telefone, como Ana Costa, Roberto Lima 
e Marcela Pereira. 
• Pedidos: Registre 3 pedidos com prato e cliente, como Ana pedindo Feijoada, 
Roberto Lasanha e Marcela Brigadeiro. */

create database restaurante
default character set utf8mb4
default collate utf8mb4_general_ci;

use restaurante;

create table pratos(
id int not null auto_increment,
prato varchar(30) not null,
preco varchar(30) not null,
primary key (id)
) default charset utf8mb4
collate = utf8mb4_general_ci;

create table clientes(
id int not null auto_increment,
nome varchar(30) not null, 
telefone varchar(30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;


create table pedidos(
id int not null auto_increment,
prato varchar(30) not null,
cliente varchar(30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;


insert into pratos
(prato, preco)
values ('Feijoada', '40,00') , ('Lasanha', '35,00') , ('Brigadeiro', '10,00');

insert into clientes
(nome, telefone)
values ('Ana Costa', '(11) 98765-4321') , ('Roberto Lima', '(21) 99876-5432') , ('Marcela Pereira', '(31) 93456-7890');

insert into pedidos
(prato, cliente)
values ('Feijoada', 'Ana Costa') , ('Lasanha', 'Roberto Lima') , ('Brigadeiro', 'Marcela Pereira');

 /*Escola de Música 
• Alunos: Registre 3 alunos com nome e instrumento, como Lucas Almeida 
(guitarra), Fernanda Silva (piano) e Ricardo Costa (bateria). 
• Professores: Adicione 3 professores com nome e instrumento, como Maria 
Souza (guitarra), João Santos (piano) e Carlos Oliveira (bateria). 
• Aulas: Insira 3 aulas com aluno, professor e data, como Lucas com Maria em 
28/07, Fernanda com João em 28/07, e Ricardo com Carlos em 28/07.*/

create database musica
default character set utf8mb4
default collate utf8mb4_general_ci;

create table alunos(
id int not null auto_increment,
nome varchar (30) not null,
instrumento varchar(30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;


create table professor(
id int not null auto_increment,
nome varchar(30) not null,
instrumento varchar(30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;


create table aulas(
id int not null auto_increment,
aluno varchar(30) not null,
professor varchar (30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;


insert into alunos
(nome, instrumento)
values ('Lucas Almeida' , 'guitarra') , ('Fernanda Silva' , 'piano') , ('Ricardo Costa', 'bateria');

insert into professor
(nome, instrumento)
values ('Maria Souza', 'guitarra') , ('João Santos', 'piano') , ('Carlos Oliveira', 'bateria');

insert into aulas
(aluno, professor)
values ('Lucas', 'Maria') , (' Fernanda', 'João') , ('Ricardo', 'Carlos');

 /*Agência de Viagem 
• Destinos: Registre 3 destinos turísticos, como Paris (5000,00), Nova York 
(4000,00) e Tokyo (6000,00). 
• Clientes: Insira 3 clientes com nome e telefone, como Beatriz Lima, Carlos 
Marques e Patrícia Rocha. 
• Reservas: Registre 3 reservas, como Beatriz para Paris, Carlos para Nova York 
e Patrícia para Tokyo.*/

create database viagem
default character set utf8mb4
default collate utf8mb4_general_ci;

create table destinos(
id int not null auto_increment,
paris varchar(30) not null,
novayork varchar (30)  not null,
tokyo varchar(30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;


create table clientes(
id int not null auto_increment,
nome varchar(30) not null,
telefone varchar (30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;


create table reservas(
id int not null auto_increment,
paris varchar (30) not null, 
novayork varchar (30) not null,
tokyo  varchar (30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;
