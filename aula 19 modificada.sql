/*O Hospital São João está organizando suas informações em um sistema digital. 
O hospital possui cinco tabelas principais para gerenciar os dados dos pacientes, 
médicos, especialidades, atendimentos e prescrições. 
O diretor de TI do hospital solicitou algumas informações para melhorar o 
planejamento e o gerenciamento da unidade. Ele precisa das seguintes listas: 
1. Pacientes com Atendimentos: Ele quer saber o nome de cada paciente 
que passou por algum atendimento e quais médicos o atenderam. 
2. Todos os Pacientes: Ele quer uma lista completa de todos os pacientes, 
incluindo os atendimentos que receberam e deixar claro quando algum 
paciente não passou por nenhum atendimento. 
3. Médicos e Pacientes: Ele quer saber quais médicos atenderam quais 
pacientes. Caso algum médico não tenha realizado atendimentos, isso 
deve ser evidenciado. 
4. Pacientes e Prescrições: O diretor gostaria de ver a lista de todos os 
pacientes e as prescrições médicas feitas durante os atendimentos. 
5. Especialidades e Médicos: Ele quer saber quais médicos estão 
alocados em quais especialidades.*/

create database hospotal 
default character set utf8mb4
default collate utf8mb4_general_ci ;

use hospotal;

CREATE TABLE pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR(255)
);

CREATE TABLE medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome_medico VARCHAR(100) NOT NULL,
    id_especialidade INT
);


CREATE TABLE especialidades (
    id_especialidade INT AUTO_INCREMENT PRIMARY KEY,
    nome_especialidade VARCHAR(100) NOT NULL
);


CREATE TABLE atendimentos (
    id_atendimento INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    id_medico INT,
    data_atendimento DATE,
    tipo_atendimento VARCHAR(50),
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);


CREATE TABLE prescricoes (
    id_prescricao INT AUTO_INCREMENT PRIMARY KEY,
    id_atendimento INT,
    medicamento VARCHAR(100),
    dosagem VARCHAR(50),
    FOREIGN KEY (id_atendimento) REFERENCES atendimentos(id_atendimento)
);


/*1. Pacientes 
Tabela contendo informações sobre os pacientes do hospital. 
id_paciente nome data_nascimento endereco 
1 João Silva 1985-03-20 Rua A, 123, São Paulo 
2 Maria Oliveira 1990-07-15 Rua B, 456, Rio de Janeiro 
3 Pedro Santos 1982-11-05 Rua C, 789, Belo Horizonte 
4 Ana Costa 1995-02-28 Rua D, 101, Curitiba */

INSERT INTO pacientes (nome, data_nascimento, endereco) VALUES
('João Silva', '1985-03-20', 'Rua A, 123, São Paulo'),
('Maria Oliveira', '1990-07-15', 'Rua B, 456, Rio de Janeiro'),
('Pedro Santos', '1982-11-05', 'Rua C, 789, Belo Horizonte'),
('Ana Costa', '1995-02-28', 'Rua D, 101, Curitiba');

/*2. Médicos 
Tabela contendo informações sobre os médicos do hospital. 
id_medico nome_medico id_especialidade 
1 Dr. Marcos Pereira 1 
2 Dr. Ana Souza 2 
3 Dr. Beatriz Lima 3 
4 Dr. Carlos Silva 1 
5 Dr. Paula Fernandes 2 */


INSERT INTO medicos (nome_medico, id_especialidade) VALUES
('Dr. Marcos Pereira', 1),
('Dr. Ana Souza', 2),
('Dr. Beatriz Lima', 3),
('Dr. Carlos Silva', 1),
('Dr. Paula Fernandes', 2);

/*3. Atendimentos 
Tabela que registra os atendimentos realizados no hospital, com o paciente e o 
médico que o atendeu. 
id_atendiment
 o 
id_pacient
 e 
id_medic
 o 
data_atendiment
 o 
tipo_atendiment
 o 
1 1 1 2023-06-10 Emergência 
2 2 2 2023-07-01 Consulta 
3 3 3 2023-05-15 Emergência 
4 4 4 2023-08-20 Consulta*/

INSERT INTO atendimentos (id_paciente, id_medico, data_atendimento, tipo_atendimento) VALUES
(1, 1, '2023-06-10', 'Emergência'),
(2, 2, '2023-07-01', 'Consulta'),
(3, 3, '2023-05-15', 'Emergência'),
(4, 4, '2023-08-20', 'Consulta');

/*4. Prescricoes 
Tabela que contém as prescrições médicas feitas durante os atendimentos dos 
pacientes. 
id_prescricao id_atendimento medicamento dosagem 
1 
2 
3 
4 
1 
2 
3 
4 
5. Especialidades 
Paracetamol 500mg 
Amoxicilina 
Ibuprofeno 
Dipirona 
250mg 
400mg 
500mg */

INSERT INTO prescricoes (id_atendimento, medicamento, dosagem) VALUES
(1, 'Paracetamol', '500mg'),
(2, 'Amoxicilina', '250mg'),
(3, 'Ibuprofeno', '400mg'),
(4, 'Dipirona', '500mg');

/*5. Especialidades 
Paracetamol 500mg 
Amoxicilina 
Ibuprofeno 
Dipirona 
250mg 
400mg 
500mg 
Tabela contendo as especialidades médicas disponíveis no hospital. 
id_especialidade nome_especialidade 
1 
2 
3 
Cardiologia 
Pediatria 
Ortopedia */

INSERT INTO especialidades (nome_especialidade) VALUES
('Cardiologia'),
('Pediatria'),
('Ortopedia');

/*Tarefas para o Diretor: 
1. Pacientes com Atendimentos: 
o Objetivo: Listar o nome de cada paciente que passou por algum 
atendimento e quais médicos o atenderam. 
o Resultado Esperado: Nome dos pacientes junto com os médicos 
que realizaram os atendimentos.*/

SELECT p.nome AS Nome_Paciente,m.nome_medico AS Medico_Responsavel
FROM atendimentos a
JOIN pacientes p ON a.id_paciente = p.id_paciente
JOIN medicos m ON a.id_medico = m.id_medico
ORDER BY p.nome;

/*2. Todos os Pacientes: 
o Objetivo: Mostrar uma lista completa de todos os pacientes, 
incluindo os atendimentos que receberam. Caso algum paciente 
não tenha passado por nenhum atendimento, isso deve ser 
deixado claro. 
o Resultado Esperado: Lista completa de pacientes com os 
atendimentos registrados. Para os pacientes sem atendimento, 
mostrar "Nenhum atendimento" no campo. */

SELECT p.nome AS Nome_Paciente,
COALESCE(a.tipo_atendimento, 'Nenhum atendimento') AS Tipo_Atendimento,
COALESCE(m.nome_medico, 'Nenhum médico') AS Medico_Responsavel,a.data_atendimento
FROM pacientes p
LEFT JOIN atendimentos a ON p.id_paciente = a.id_paciente
LEFT JOIN medicos m ON a.id_medico = m.id_medico
ORDER BY p.nome;

/*3. Médicos e Pacientes: 
o Objetivo: Mostrar quais médicos atenderam quais pacientes. Caso 
algum médico não tenha realizado atendimentos, isso deve ser 
evidenciado. 
o Resultado Esperado: Nome dos médicos com a lista de pacientes 
atendidos. Se o médico não tiver atendimentos registrados, 
mostrar "Nenhum paciente atendido". */

SELECT m.nome_medico AS Nome_Medico,
COALESCE(p.nome, 'Nenhum paciente atendido') AS Nome_Paciente
FROM medicos m
LEFT JOIN atendimentos a ON m.id_medico = a.id_medico
LEFT JOIN pacientes p ON a.id_paciente = p.id_paciente
ORDER BY m.nome_medico;

/*4. Pacientes e Prescrições: 
o Objetivo: Mostrar a lista de todos os pacientes e as prescrições 
médicas feitas durante os atendimentos. 
o Resultado Esperado: Nome dos pacientes com as prescrições 
feitas para cada um durante o atendimento. Caso não tenha 
prescrições, o campo de medicamento deve ser deixado em 
branco ou mostrar "Sem prescrição". */

SELECT p.nome AS Nome_Paciente,
COALESCE(pr.medicamento, 'Sem prescrição') AS Medicamento,
COALESCE(pr.dosagem, '') AS Dosagem,a.data_atendimento
FROM pacientes p
LEFT JOIN atendimentos a ON p.id_paciente = a.id_paciente
LEFT JOIN prescricoes pr ON a.id_atendimento = pr.id_atendimento
ORDER BY p.nome, a.data_atendimento;


/*5. Especialidades e Médicos: 
o Objetivo: Mostrar quais médicos estão alocados em quais 
especialidades médicas. 
o Resultado Esperado: Nome das especialidades com os médicos 
que estão alocados nelas. Caso alguma especialidade não tenha 
médicos alocados, isso deve ser evidenciado.*/

SELECT e.nome_especialidade AS Especialidade,
COALESCE(m.nome_medico, 'Nenhum médico alocado') AS Medico
FROM especialidades e
LEFT JOIN medicos m ON e.id_especialidade = m.id_especialidade
ORDER BY e.nome_especialidade; 

/*Tarefas para o Diretor: 
1. Pacientes com Atendimentos*/
SELECT p.nome AS Nome_Paciente, m.nome_medico AS Medico_Responsavel
FROM pacientes p
CROSS JOIN medicos m;


/*2. Todos os Pacientes*/
SELECT 
  p.nome AS Nome_Paciente,
  a.tipo_atendimento AS Tipo_Atendimento,
  m.nome_medico AS Medico_Responsavel,
  a.data_atendimento
FROM pacientes p
CROSS JOIN atendimentos a
CROSS JOIN medicos m
ORDER BY p.nome;

/*3. Médicos e Pacientes*/
SELECT 
  m.nome_medico AS Nome_Medico,
  p.nome AS Nome_Paciente
FROM medicos m
CROSS JOIN pacientes p
ORDER BY m.nome_medico;

/*4. Pacientes e Prescrições*/
SELECT p.nome AS Nome_Paciente, pr.medicamento
FROM pacientes p
CROSS JOIN prescricoes pr;

/*5. Especialidades e Médicos*/
SELECT 
  e.nome_especialidade AS Especialidade,
  m.nome_medico AS Medico
FROM especialidades e
CROSS JOIN medicos m
ORDER BY e.nome_especialidade;

/*1. Pacientes com Atendimentos*/
SELECT 
  p.nome AS Nome_Paciente,
  COALESCE(m.nome_medico, 'Nenhum médico') AS Medico_Responsavel,
  COALESCE(a.data_atendimento, 'Sem atendimento') AS Data_Atendimento
FROM pacientes p
LEFT JOIN atendimentos a ON p.id_paciente = a.id_paciente
LEFT JOIN medicos m ON a.id_medico = m.id_medico
ORDER BY p.nome;


/*2. Todos os Pacientes*/
SELECT 
  p.nome AS Nome_Paciente,
  COALESCE(a.tipo_atendimento, 'Nenhum atendimento') AS Tipo_Atendimento,
  COALESCE(m.nome_medico, 'Nenhum médico') AS Medico_Responsavel,
  COALESCE(a.data_atendimento, 'Sem data') AS Data_Atendimento
FROM pacientes p
LEFT JOIN atendimentos a ON p.id_paciente = a.id_paciente
LEFT JOIN medicos m ON a.id_medico = m.id_medico
ORDER BY p.nome;

/*3. Médicos e Pacientes*/
SELECT 
  m.nome_medico AS Nome_Medico,
  COALESCE(p.nome, 'Nenhum paciente atendido') AS Nome_Paciente,
  COALESCE(a.tipo_atendimento, 'Sem tipo definido') AS Tipo_Atendimento,
  COALESCE(a.data_atendimento, 'Sem data') AS Data_Atendimento
FROM medicos m
LEFT JOIN atendimentos a ON m.id_medico = a.id_medico
LEFT JOIN pacientes p ON a.id_paciente = p.id_paciente
ORDER BY m.nome_medico;

/*4. Pacientes e Prescrições*/
SELECT 
  p.nome AS Nome_Paciente,
  COALESCE(pr.medicamento, 'Sem prescrição') AS Medicamento,
  COALESCE(pr.dosagem, 'Dosagem não informada') AS Dosagem,
  COALESCE(a.data_atendimento, 'Sem atendimento') AS Data_Atendimento
FROM pacientes p
LEFT JOIN atendimentos a ON p.id_paciente = a.id_paciente
LEFT JOIN prescricoes pr ON a.id_atendimento = pr.id_atendimento
ORDER BY p.nome, a.data_atendimento;

/*5. Especialidades e Médicos*/






