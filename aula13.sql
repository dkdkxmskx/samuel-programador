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
set nome = 'João Silva'
where id = '1';

UPDATE cursos
set nome = 'Introdução à Programação'
where id = '1';

UPDATE matricula
set idaluno = '0000119888'
where id = '1';

#3. Comando SELECT 

select nome,ano 
from cursos;

select distinct totaulas
from cursos;

select count(distinct nome)
from cursos;

#1. Selecione todos os cursos ordenados pelo campo ano. 

SELECT * FROM cursos
ORDER BY ano;

#2. Liste os cursos ordenados por totaulas de forma crescente.

SELECT * FROM cursos
ORDER BY totaulas ASC;

#3. Liste os cursos ordenados por nome de forma decrescente.

SELECT * FROM cursos
ORDER BY nome DESC; 

#4. Liste os cursos ordenados por preco (do mais barato ao mais caro). 

SELECT * FROM cursos
ORDER BY carga asc;

#5. Liste os cursos ordenados por categoria e depois por nome.

SELECT * FROM cursos
ORDER BY carga, nome;

#6. Selecione os cursos ordenados por nivel de forma decrescente. 

SELECT * FROM cursos
ORDER BY totaulas asc;

#7. Mostre os cursos ordenados por ano mais recente primeiro.

SELECT * FROM cursos
ORDER BY ano asc;

#8. Liste os cursos ordenados por totaulas, e em caso de empate, por nome. 

SELECT * FROM cursos
ORDER BY totaulas asc, nome asc;

 #9.Liste os cursos com mais aulas primeiro.
 
 SELECT * FROM cursos
ORDER BY totaulas asc;

#8.Selecione os cursos com menor preço primeiro. 

SELECT * FROM cursos
ORDER BY carga ASC;

#11. Selecione cursos com totaulas entre 10 e 30.

SELECT * FROM cursos
WHERE totaulas BETWEEN 10 AND 30;

#12. Mostre os cursos com ano entre 2010 e 2020. 

SELECT * FROM cursos
WHERE ano BETWEEN 2010 AND 2020;

#13.Liste cursos com preco entre 100 e 300. 

SELECT * FROM cursos
WHERE carga BETWEEN 10 AND 25
ORDER BY nome ASC;

#14. Selecione cursos com totaulas entre 15 e 25, ordenados por nome. 

SELECT * FROM cursos
WHERE totaulas BETWEEN 15 AND 25
ORDER BY nome ASC;

#15. Liste cursos com ano entre 2015 e 2025, ordenados por ano desc. 

SELECT * FROM cursos
WHERE ano BETWEEN 2015 AND 2025
ORDER BY ano DESC;

#16. Mostre cursos com preco entre 50 e 150, ordenados por preço. 

SELECT * FROM cursos
WHERE carga BETWEEN 50 AND 150
ORDER BY carga ASC;

#17. Selecione cursos com totaulas entre 5 e 10. 

SELECT * FROM cursos
WHERE totaulas BETWEEN 5 AND 10
ORDER BY nome ASC;

#18. Liste cursos com ano entre 2020 e 2022, ordenados por nome.

SELECT * FROM cursos
WHERE ano BETWEEN 2020 AND 2022
ORDER BY nome ASC;


#19. Liste os cursos com preco entre 200 e 500. 

SELECT * FROM cursos
WHERE carga BETWEEN 200 AND 500;

#20. Selecione cursos com totaulas entre 20 e 40 e preco entre 100 e 400. 

SELECT * FROM cursos
WHERE totaulas BETWEEN 20 AND 40
  AND carga BETWEEN 100 AND 400;

#21. Selecione cursos com ano em (2018, 2019, 2020). 

SELECT * FROM cursos
WHERE ano IN (2018, 2019, 2020);

#22. Mostre cursos com categoria em ('Programação', 'Design').

SELECT * FROM cursos
WHERE nome IN ('Introdução à Programação', 'desing');

 
#23. Liste cursos com nivel em ('Básico', 'Intermediário').

select * FROM cursos
WHERE nome IN ('Básico', 'Intermediário');

#24. Mostre cursos com preco em (100, 150, 200). 

SELECT * FROM cursos
WHERE carga IN (100, 150, 200);

#25. Selecione cursos com nome em ('MySQL Básico', 'HTML5', 'Python 
#Intermediário'). 

SELECT * FROM cursos
WHERE nome IN ('MySQL Básico', 'HTML5', 'Python Intermediário');

#26. Liste cursos com ano em ('2010', '2015', '2020'), ordenados por ano.

SELECT * FROM cursos
WHERE ano IN (2010, 2015, 2020)
ORDER BY ano ASC;

#27. Mostre cursos com nivel em ('Avançado') e categoria em ('Banco de Dados', 
#'Desenvolvimento').

SELECT * FROM cursos
WHERE grau = 'Avançado'
AND nome = ('Introdução à Programação');

#28. Liste cursos com totaulas em (15, 20, 25). 

SELECT * FROM cursos
WHERE totaulas IN (15, 20, 25);

#29. Selecione cursos com preco em (99.90, 199.90, 299.90). 

SELECT * FROM cursos
WHERE carga IN (99.90, 199.90, 299.90);

#30. Liste cursos com categoria em ('Administração', 'Gestão') e ordene por nome.

SELECT * FROM cursos
WHERE nome IN ('Administração', 'Gestão')
ORDER BY nome ASC;