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

use viagem;

create table destinos(
id int not null auto_increment,
lugar varchar(30) not null,
preco varchar (30)  not null,
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
	nome varchar (30) not null, 
	lugar varchar (30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;

insert into destino (lugar, preco)
values('Paris', '5000') , 
	  ('Nova York ', '4000') , 
	  ('Tokyo', '6000');

insert into clientes  (nome, telefone)
values('Beatriz Lima', '(11) 98345-6721') , 
	  ('Carlos Marques', '(21) 99612-4830') , 
	  ('Patrícia Rocha' , 'Patrícia Rocha');

insert into reservas (nome, lugar)
values ('Beatriz', 'Paris') , 
	   ('Carlos', 'Nova York') ,
	   ('Patrícia', 'Tokyo');
       
     /* Loja de Informática 
• Produtos: Registre 3 produtos, como Laptop Dell (3000,00), Smartphone 
Samsung (2000,00) e Mouse Logitech (Mouse LogitechMouse Logitech). 
• Fornecedores: Cadastre 3 fornecedores, como c, Smart World e 
Electro Solutions. 
• Entradas de Estoque: Adicione 3 entradas de estoque, como 50 unidades de 
Laptop Dell, 30 de Smartphone Samsung e 100 de Mouse Logitech.  */ 

create database informatica
default character set utf8mb4
default collate utf8mb4_general_ci;

use informatica;
 
create table produtos(
id int not null auto_increment,
 nome varchar(30) not null,
 preco varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;

 create table fornecedores(
id int not null auto_increment,
 nome varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 
 create table entradas(
id int not null auto_increment,
unidade varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;

 insert into produtos (nome, preco)
values ('Laptop Dell', 'Paris') , 
	   ('Smartphone Samsung' , 'Nova York') ,
	   ('Mouse Logitech', 'Mouse Logitech');
        
insert into fornecedores (nome)
values ('Tech Supply') , 
	   ('Electro Solutions');
       
insert into entradas (unidade)
values ('50'), 
	   ('30') ,
	   ('100');   
       
/*Clínica Veterinária 
• Animais: Registre 3 animais com nome e espécie, como Rex (cachorro), Luna 
(gato) e Mel (cachorro). 
• Veterinários: Adicione 3 veterinários com nome e especialidade, como Dr. João 
Costa (cirurgia), Dra. Mariana Silva (dermatologia) e Dr. Pedro Lima (clínico 
geral). 
• Consultas: Insira 3 consultas, como Rex com Dr. João, Luna com Dra. Mariana 
e Mel com Dr. Pedro, em datas diferentes.*/

create database veterinaria
default character set utf8mb4
default collate utf8mb4_general_ci;

 create table animais(
id int not null auto_increment,
nome varchar(30) not null,
especie varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 
 create table veterinarios(
id int not null auto_increment,
JoãoCosta varchar(30) not null,
cirurgia varchar(30) not null,
MarianaSilva varchar(30) not null,
dermatologia varchar(30) not null,
PedroLima varchar(30) not null,
clínicogeral varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 
 create table consultas(
id int not null auto_increment,
paciente varchar(30) not null,
veterinario varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 
 insert into animais (nome, especie)
values ('Rex', 'cachorro'), 
	   ('Luna', 'gato');
       
/*Empresa de Recursos Humanos 
• Funcionários: Registre 3 funcionários com nome, cargo e departamento, como 
Ana Costa (Gerente, Vendas), Roberto Lima (Assistente, RH) e Mariana Souza 
(Analista, TI). 
• Departamentos: Adicione 3 departamentos, como Vendas, RH e TI, com o 
nome do gerente. 
• Avaliações: Insira 3 avaliações de desempenho para os funcionários, com nota e 
data.*/ 
       
create database humanos
default character set utf8mb4
default collate utf8mb4_general_ci;

create table funcionarios(
id int not null auto_increment,
nome  varchar(30) not null,
cargo varchar(30) not null,
departamento varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 
 create table departamento(
id int not null auto_increment,
nome  varchar(30) not null,
cargo varchar(30) not null,
departamento varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;

 
 create table avaliacoes(
id int not null auto_increment,
nome varchar(30) not null,
nota varchar(30) not null,
data varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 drop table avaliacoes
 
 insert into funcionarios (nome, cargo, departamento)
values ('Ana Costa', 'Gerente', 'Vendas'), 
	   ('Roberto Lima', 'Assistente', 'RH'),
       ('Mariana Souza', 'Analista', 'TI');
       
insert into departamento (nome, cargo, departamento)
values ('Ana Costa', 'vendas', 'ana costa'), 
	   ('roberto lima', 'rh', 'fernando augusto'),
       ('mariana souza', 'ti', 'jonas silva');
       
insert into avaliacoes (nome, nota, data)
values ('Carlos Oliveira', 8, '2023-07-15'),
	   ('Ana Souza', 9, '2023-06-10'),
	   ('Fernanda Lima', 7, '2023-08-01');
       
/* Universidade 
• Estudantes: Registre 3 estudantes com nome e curso, como Lucas Almeida 
(Engenharia), Fernanda Silva (Medicina) e Roberto Costa (Arquitetura). 
• Professores: Adicione 3 professores com nome e departamento, como Prof. 
João Santos (Engenharia), Prof. Maria Oliveira (Medicina) e Prof. Carlos Lima 
(Arquitetura). 
• Disciplinas: Registre 3 disciplinas com nome e professor, como Cálculo com 
Prof. João, Anatomia com Prof. Maria e Desenho com Prof. Carlos. */

create database universidade
default character set utf8mb4
default collate utf8mb4_general_ci;
 
create table estudantes(
id int not null auto_increment,
nome  varchar(30) not null,
recurso varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 
create table professores(
id int not null auto_increment,
nome  varchar(30) not null,
departamento varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 
 create table diciplina(
id int not null auto_increment,
nome  varchar(30) not null,
professor varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 
 insert into estudantes (nome, recurso)
values ('Lucas Almeida ', 'Engenharia'),
	   ('Fernanda Silva', 'Medicina'),
	   ('Roberto Costa', 'Arquitetura');
       
insert into professores (nome, departamento)
values ('João Santos ', 'Engenharia'),
	   ('Maria Oliveira', 'Medicina'),
	   ('Carlos Lima', 'Arquitetura');
       
insert into diciplina (nome, professor)
values ('Cálculo ', 'João'),
	   ('Anatomia', 'Maria'),
	   ('Desenho ', 'Carlos');
       
/*Studio Fotográfico 
• Clientes: Registre 3 clientes com nome e telefone, como Ana Souza, Roberto 
Silva e c. 
• Serviços: Adicione 3 serviços fotográficos, como Book fotográfico, Casamento 
e Aniversário. 
• Agendamentos: Registre 3 agendamentos de clientes, como Ana para Book 
fotográfico, Roberto para Casamento e Juliana para Aniversário.*/

create database fotografico
default character set utf8mb4
default collate utf8mb4_general_ci;

use fotografia;

create table clientes(
id int not null auto_increment,
nome  varchar(30) not null,
telefone varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 
 create table servico(
id int not null auto_increment,
servico varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 drop table servico;
 create table agendamento(
id int not null auto_increment,
cliente  varchar(30) not null,
servico varchar(30) not null,
 primary key (id)
 )default charset utf8mb4;
 
 insert into clientes (nome, telefone)
values ('Ana Souza ', '(11) 98765-4321'),
	   ('Roberto Silva', '(21) 95547-3698'),
	   ('Juliana Costa ', '(31) 96428-1579');
       
 insert into servico (servico)
values ('Book fotográfico'),
	   ('Casamento'),
	   ('Aniversário')