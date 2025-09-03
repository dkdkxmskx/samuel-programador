#1. alunos 
#Tabela responsável por armazenar os dados pessoais dos alunos, 
#incluindo: 
# id: Identificador único do aluno (chave primária). 
#o nome: Nome completo do aluno. 
#o nascimento: Data de nascimento do aluno. 
#o sexo: Gênero do aluno (M ou F). 
#o peso: Peso do aluno. 
#o altura: Altura do aluno. 
#o nacionalidade: Nacionalidade do aluno (padrão: 'Brasil').


create database alunos 
default character set utf8mb4
default collate utf8mb4_general_ci;

use alunos;

create table alunos(
id int not null auto_increment,
nome varchar(30) not null,
nascimento varchar(30) not null,
sexo varchar(30) not null,
peso varchar(30) not null,
altura varchar (30) not null,
nacionalidade varchar(30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;

/*2.curso 
Tabela para armazenar as informações sobre os cursos oferecidos, 
incluindo: 
o id: Identificador único do curso (chave primária). 
o nome: Nome do curso (único). 
o descricao: Descrição do curso. 
o carga: Carga horária total do curso. 
o totaulas: Número total de aulas do curso. 
o ano: Ano em que o curso está sendo oferecido (padrão: 2025).*/

create table cursos(
id int not null auto_increment,
nome varchar(30) not null,
descricao varchar(30) not null,
carga varchar(30) not null,
totaulas varchar(30) not null,
ano varchar (30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;

/*3. matriculas
Tabela que registra a matrícula dos alunos nos cursos, incluindo: 
o id: Identificador único da matrícula (chave primária). 
o idaluno: Identificador do aluno matriculado. 
o idcurso: Identificador do curso no qual o aluno está matriculado. 
o datamatricula: Data em que o aluno foi matriculado no curso.*/

create table matriculas(
id int not null auto_increment,
idaluno varchar (30) not null,
idcursos varchar (30) not null,
datamatricula varchar(30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;


create table alunos(
id int not null auto_increment,
nome varchar(30) not null,
nascimento varchar(30) not null,
sexo varchar(30) not null,
peso varchar(30) not null,
altura varchar (30) not null,
nacionalidade varchar(30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;

select * from alunos;

INSERT INTO alunos (nome, nacimento, sexo, peso, altura, nacionalidade)
VALUES 
('João Silva', '1990-02-02', 'm' , 72.5, 1.78, 'Brasileiro'),
('maria clara', '2009-10-30', 'f', 73.5, 1.70, 'brasileiro'),
('joao paulo', '1989-20-10', 'm', 60.3, 1.50, 'brasileiro');

INSERT INTO cursos (nome, descricao, carga, totaulas, ano)
VALUES 
('Introdução à Programação', 'Curso básico utilizando Python', 60, 30, 2025),
('Matemática Discreta', 'Estudo  para a computação', 45, 20, 2025),
('Desenvolvimento Web', 'Aprenda a criar sites', 80, 40, 2025);

INSERT INTO matriculas (idaluno, idcursos, datamatricula)
VALUES 
('0000119888', '09567506', 2025),
('5454523545', '23432423', 2025),
('8758878856', '46745674', 2025);

UPDATE alunos
SET nome = "python"
where nome = 'joao silva';

UPDATE cursos
SET nome = 'computação', carga = '60h'
where nome = 'Matemática Discreta';




