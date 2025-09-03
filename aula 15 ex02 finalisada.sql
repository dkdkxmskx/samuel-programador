#31. Crie uma view com os nomes e pesos das pessoas com peso maior que 85kg. 

CREATE VIEW mostrar31 AS
SELECT nome, peso
FROM pessoas
WHERE peso > 85;

SELECT * FROM mostrar31;

#32. Crie uma view com nome, nacionalidade e um campo adicional chamado 
#eh_brasileiro que mostra 'Sim' se a nacionalidade for 'Brasil' e 'Não' 
#caso contrário.

CREATE VIEW mostrar32 AS
SELECT 
    nome,
    nacionalidade,
    CASE 
        WHEN nacionalidade = 'Brasil' THEN 'Sim'
        ELSE 'Não'
    END AS eh_brasileiro
FROM pessoas;

SELECT * FROM mostrar32;

#33. Crie uma view com pessoas do sexo masculino com altura acima de 1.80. 

CREATE VIEW mostrar33 AS
SELECT *
FROM pessoas
WHERE sexo = 'Masculino' AND altura > 1.80;

SELECT * FROM mostrar33;

#34. Crie uma view que mostre apenas os nomes e datas de nascimento das pessoas 
#nascidas em anos pares. 

CREATE VIEW mostrar34 AS
SELECT nome, nascimento
FROM pessoas
WHERE (nascimento) %2 = 0;

SELECT * FROM mostrar34;

#35. Crie uma view com os nomes em ordem decrescente. 

CREATE VIEW mostrar35 AS
SELECT nome
FROM pessoas
ORDER BY nome DESC;

SELECT * FROM mostrar35;

#36. Crie uma view com pessoas cujo nome termina com a letra 'a'.

CREATE VIEW mostrar36 AS
SELECT *
FROM pessoas
WHERE nome LIKE '%a';

SELECT * FROM mostrar36;

#37. Crie uma view com nome e idade, e filtre apenas pessoas com menos de 30 
#anos. 

CREATE VIEW mostrar37 AS
SELECT nome, nascimento
FROM pessoas
WHERE nascimento >'1995-1-1';

select * from mostrar37;

#38. Crie uma view com pessoas que têm altura exata de 1.70.

CREATE VIEW mostrar38 AS
SELECT *
FROM pessoas
WHERE altura = 1.70;

select * from mostrar38;

#39. Crie uma view que mostra nome e ano de nascimento (extraído da data).

CREATE VIEW mostrar39 AS
SELECT*from   nome, nascimento, sexo, peso, altura, nacionalidade
where data_nascimento (ano_nascimento);

select * from mostrar39;

#40. Crie uma view com pessoas que têm a palavra “Silva” no nome.

CREATE VIEW mostrar40 AS
SELECT *
FROM pessoas
WHERE nome LIKE '%Silva%';

select * from mostrar40;

#41. Crie uma view com id, nome, e um campo faixa_etaria com valores como: 
#• 'Jovem' se < 30 anos 
#• 'Adulto' se entre 30 e 59 
#• 'Idoso' se 60+
create view mostrar41 as
SELECT 
    id,
    nome,
    TIMESTAMPDIFF(YEAR, nascimento, CURDATE()) AS idade
FROM pessoas;

select * from mostrar41;

#42. Crie uma view com o nome e a quantidade de letras do nome.

CREATE VIEW mostrar42 AS
SELECT 
    nome,
    CHAR_LENGTH(nome) AS quantidade_letras
FROM 
    pessoas;
    
    select * from mostrar42;

#43. Crie uma view com pessoas com nome que contém a letra "e" duas ou mais 
#vezes.

CREATE VIEW mostrar43 AS
SELECT *
FROM pessoas
WHERE (LENGTH(nome) - LENGTH(REPLACE(nome, 'e', ''))) >= 2;

 select * from mostrar43;

#44. Crie uma view com pessoas nascidas entre 1985 e 1995.

CREATE VIEW mostrar44 AS
SELECT *
FROM pessoas
WHERE YEAR(nascimento) BETWEEN 1985 AND 1995;

select * from mostrar44;

#45. Crie uma view com nome e peso, e adicione uma coluna peso_classificacao: 
#• 'Leve' se < 60 
#• 'Médio' se entre 60 e 80 
#• 'Pesado' se > 80 

CREATE VIEW mostrar45 AS
SELECT 
    nome,
    peso,
    CASE
        WHEN peso < 60 THEN 'Leve'
        WHEN peso BETWEEN 60 AND 80 THEN 'Médio'
        ELSE 'Pesado'
    END AS peso_classificacao
FROM pessoas;

select * from mostrar45;

#46. Crie uma view com os nomes abreviados (apenas primeiro nome).

CREATE VIEW mostrar46 AS
SELECT 
    SUBSTRING_INDEX(nome, ' ', 1) AS primeiro_nome
FROM pessoas;

select * from mostrar46;

#47. Crie uma view que agrupa pessoas pela nacionalidade e mostra quantas pessoas 
#há de cada país.

CREATE VIEW mostrar47 AS
SELECT 
    nacionalidade,
    COUNT(*) AS quantidade_pessoas
FROM 
    pessoas
GROUP BY 
    nacionalidade;
    
select * from mostrar47;

#48. Crie uma view que mostra a média de altura das pessoas do sexo feminino.

CREATE VIEW mostrar48 AS
SELECT 
    AVG(altura) AS media_altura
FROM 
    pessoas
WHERE 
    sexo = 'F';
    
select * from mostrar48;

#49. Crie uma view com nome e dia da semana de nascimento (ex: segunda-feira).

CREATE VIEW mostrar49 AS
SELECT 
    nome,
    DAYNAME(nascimento) AS dia_semana_nascimento
FROM 
    pessoas;
    
select * from mostrar49;

#50. Crie uma view que mostra o total de pessoas cadastradas.

CREATE VIEW mostrar50 AS
SELECT 
    COUNT(*) AS total
FROM 
    pessoas;
    
select * from mostrar50;










