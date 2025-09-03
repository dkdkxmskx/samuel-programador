/*1.Crie a tabela alunos (id, nome, idade) e adicione a coluna matricula. */

create database escola
default character set utf8mb4
default collate utf8mb4_general_ci;

use escola;

create table alunos(
id int not null auto_increment,
nome varchar(30) not null,
idade varchar(30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;

alter table alunos
add column  matricula varchar(30);

/*2.Crie a tabela alunos (id, nome, idade) e adicione a coluna email.*/

alter table alunos
add column email varchar(30);

/*3.Crie a tabela alunos (id, nome, idade, matricula, email) e remova a coluna 
email. */

alter table alunos
drop column email;

/*4.Crie a tabela professores (id, nome, disciplina) e adicione a coluna 
formacao.*/

create table professores(
id int not null auto_increment,
nome varchar(30) not null,
disciplina varchar(30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;

alter table professores
add column formacao varchar(30);

/*5.Crie a tabela professores (id, nome, disciplina, formacao) e adicione a 
coluna registro. */

alter table professores
add column registros varchar(30);

/*6.Crie a tabela professores (id, nome, disciplina, formacao, registro) e 
remova a coluna formacao.*/

alter table professores
drop column formacao;

/*7.Crie a tabela cursos (id, nome, duracao) e adicione a coluna modalidade.*/

create table cursos(
id int not null auto_increment,
nome varchar(30) not null,
duracao varchar(30) not null, 
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;
 
alter table cursos
add column modalidade varchar(30);

/*8.Crie a tabela cursos (id, nome, duracao, modalidade) e adicione a coluna 
turno.*/

alter table cursos
add column turno varchar(30);

/*9.Crie a tabela cursos (id, nome, duracao, modalidade, turno) e remova a 
coluna modalidade. */

alter table cursos
drop column modalidade;

 /*10.Crie a tabela disciplinas (id, nome, codigo) e adicione a coluna 
carga_horaria. */

create table diciplina(
id int not null auto_increment,
nome varchar (30) not null,
codigo varchar (30) not null,
primary key (id)
)default charset utf8mb4
collate = utf8mb4_general_ci;

alter table diciplina
add column carga_horario varchar (30);

/*11. Crie a tabela disciplinas (id, nome, codigo, carga_horaria) e adicione a 
coluna ementa. */

alter table cursos
add column ementa varchar(30);

 /*12.Crie a tabela disciplinas (id, nome, codigo, carga_horaria, ementa) e 
remova a coluna ementa.*/

alter table diciplina
drop column ementa;

 /*13.Crie a tabela turmas (id, nome, ano) e adicione a coluna semestre. */
 
 create table turmas(
 id int not null auto_increment,
 nome varchar(30) not null,
 ano varchar (30) not null,
 primary key (id)
 )default charset utf8mb4
 collate = utf8mb4_general_ci;
 
 alter table semestre
add column carga_horario varchar (30);
 
  /*14.Crie a tabela turmas (id, nome, ano, semestre) e adicione a coluna turno. */
  
  alter table turmas
  add column turno varchar(30);
  
/*15.Crie a tabela turmas (id, nome, ano, semestre, turno) e remova a coluna 
turno.*/

  alter table turmas
  drop column turno;
  
/*16.Crie a tabela notas (id, aluno_id, disciplina_id) e adicione a coluna nota1.*/

create table notas(
 id int not null auto_increment,
 aluno_id varchar(30) not null,
 disciplina_id varchar (30) not null,
 primary key (id)
 )default charset utf8mb4
 collate = utf8mb4_general_ci;
 
 alter table notas
 add column nota1 int;
 
/*17.Crie a tabela notas (id, aluno_id, disciplina_id, nota1) e adicione a coluna 
nota2. */

alter table notas2;
 
/*18.Crie a tabela notas (id, aluno_id, disciplina_id, nota1, nota2) e remova a 
coluna nota1.*/

 alter table notas
  drop column nota1;

/*19.Crie a tabela frequencias (id, aluno_id, disciplina_id) e adicione a coluna 
presencas/*/

create table fraquencias(
 id int not null auto_increment,
 aluno_id varchar(30) not null,
 diciplina_id varchar (30) not null,
 primary key (id)
 )default charset utf8mb4
 collate = utf8mb4_general_ci;
 
/*20.Crie a tabela frequencias (id, aluno_id, disciplina_id, presencas) e remova 
a coluna presencas.*/

alter table frequencias
  drop column presencas;

