/*A Escola Criativa está organizando suas informações em um sistema digital. Eles 
possuem duas tabelas principais: uma com os alunos cadastrados e outra com 
as disciplinas oferecidas e os alunos matriculados nelas. 
Recentemente, o diretor pediu algumas listas para melhorar o planejamento: 
Alunos com disciplinas: ele quer ver o nome de cada aluno que está matriculado 
em alguma disciplina e quais disciplinas são essas. 
Todos os alunos: ele também quer uma lista completa de todos os alunos da 
escola, incluindo as disciplinas que estão cursando, e deixar claro quando algum 
aluno ainda não se matriculou em nenhuma disciplina. 
Disciplinas e alunos: por fim, ele quer ver todas as disciplinas oferecidas e os 
alunos que estão matriculados em cada uma. Caso alguma disciplina ainda não 
tenha alunos matriculados, isso deve ficar evidente. 
Utilize as tabelas disponíveis para gerar essas informações.*/

create database escolacriativa
default character set utf8mb4
default collate utf8mb4_general_ci ;

use escolacriativa;

create table alunos(
id_aluno int auto_increment primary key,
nome varchar(225) not null
);

create table disciplinas (
id_disciplina int auto_increment primary key,
nome varchar(225) not null
);

CREATE TABLE matriculas (
    id_aluno INT,
    id_disciplina INT,
    PRIMARY KEY (id_aluno, id_disciplina),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

insert into alunos (nome) values
('joao silva'),
('maria oliveira'),
('carlos santos'),
('ana costa');

insert into disciplinas (nome) values
('matematica'),
('portugues'),
('historia'),
('geografia');

INSERT INTO matriculas (id_aluno, id_disciplina) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 1),
(4, 4);

insert into alunos (nome) values
("joao");

insert into disciplinas (nome) values
("ingles");

SELECT a.nome AS Nome_Aluno,d.nome AS Nome_Disciplina
FROM alunos a
JOIN matriculas m ON a.id_aluno = m.id_aluno
JOIN disciplinas d ON m.id_disciplina = d.id_disciplina
ORDER BY a.nome;

