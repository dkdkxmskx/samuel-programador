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