/*Tabela de referência: clientes 
CREATE TABLE clientes ( 
id INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(100), 
idade INT, 
cidade VARCHAR(100)*/

create database exercicio11
default character set utf8mb4
default collate utf8mb4_general_ci;

use exercicio11;

CREATE TABLE clientes ( 
id INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(100), 
idade INT, 
cidade VARCHAR(100), 
estado VARCHAR(2) 
);
    
    select * from clientes
    where nome = "maria" and idade = "22";
    
INSERT INTO clientes (nome, idade, cidade, estado) VALUES
('Maria', 22, 'Belo Horizonte', 'MG'),
('João', 45, 'São Paulo', 'SP'),
('Ana', 17, 'Campinas', 'SP'),
('Pedro', 25, 'Natal', 'RN'),
('Lucas', 28, 'Salvador', 'BA'),
('Carla', 33, 'Belém', 'PA'),
('Fernanda', 29, 'Fortaleza', 'CE'),
('Paulo', 33, 'Porto Alegre', 'RS'),
('Marcos', 60, 'Curitiba', 'PR'),
('Luciana', 40, 'Manaus', 'AM'),
('Rodrigo', 19, 'Uberlândia', 'MG'),
('Camila', 35, 'Campinas', 'SP'),
('Gustavo', 50, 'João Pessoa', 'PB'),
('Aline', 21, 'Maceió', 'AL'),
('Thiago', 38, 'Salvador', 'BA'),
('Juliana', 24, 'Recife', 'PE'),
('Renata', 27, 'São Paulo', 'SP'),
('Sérgio', 42, 'Fortaleza', 'CE'),
('Elaine', 60, 'Porto Alegre', 'RS'),
('Roberta', 20, 'João Pessoa', 'PB'),
('Igor', 18, 'Belo Horizonte', 'MG'),
('Vanessa', 26, 'Campinas', 'SP'),
('Fábio', 45, 'Curitiba', 'PR'),
('Simone', 25, 'Salvador', 'BA'),
('Douglas', 39, 'Maceió', 'AL');

#1. Selecione todos os dados dos clientes que moram na cidade de 'São Paulo'.

select * from clientes
where estado = "sp";

#2. Liste os clientes que moram no estado 'SP' e na cidade 'Campinas'

select * from clientes
where estado = "sp" and cidade = "campinas";

#3. Mostre os dados dos clientes com idade maior que 18 e menor que 30. 

select * from clientes
where idade >18 and idade < 30;

#4. Encontre os clientes com o nome 'Maria' e que moram em 'Belo 
#Horizonte'.

 select * from clientes
where nome = "maria" and cidade = "belo hizonta";

 #5. Selecione os clientes que têm 25 anos e são do estado 'RJ'. 

 select * from clientes
where idade = "25" and cidade = "rj";


#6. Liste os clientes com o nome 'João' e idade maior que 40. 

 select * from clientes
where nome = "joao" and cidade = "40";

#7. Mostre os dados dos clientes que moram na cidade 'Fortaleza' e têm idade 
#menor que 20. 

 select * from clientes
where cidade = "Fortaleza" and idade < "20";

#8. Selecione os clientes do estado 'MG' e da cidade 'Uberlândia'.


 select * from clientes
where estado = "mg" and cidade = "Urbelandia";

#9. Mostre os clientes que têm 30 anos e moram em 'Salvador'.

  select * from clientes
where idade = "30" and cidade = "salvador";

#10. Encontre os clientes com idade igual a 50 e que moram no estado 'PR'. 

  select * from clientes
where idade = "50" and estado = "pr";

#11. Liste os dados dos clientes com nome 'Ana' e idade menor que 18. 

  select * from clientes
where nome = "Ana" and idade < "18";

#12. Mostre os clientes da cidade 'Recife' e com idade entre 20 e 40 (use > 20 AND 
#idade < 40). 


  select * from clientes
where cidade = "Recife" and 20 > idade < "18";

#13. Selecione os clientes com nome 'Pedro' e cidade 'Natal'.

   select * from clientes
where nome = "Pedro" and cidade = "Natal";

#14. Liste os clientes com idade igual a 60 e estado 'RS'. 

   select * from clientes
where idade = "60" and estado = "RS";

#15. Mostre os dados dos clientes da cidade 'Curitiba' e estado 'PR'.

   select * from clientes
where cidade = "Curitiba" and estado = "PR";

#16. Selecione os clientes com idade maior que 35 e menor que 50. 

   select * from clientes
where  35 >  idade < 50;

#17. Encontre os clientes com nome 'Lucas' e idade 28. 

   select * from clientes
where nome=  "lucas" and  idade = "28";

#18. Mostre os clientes que moram em 'Manaus' e têm mais de 40 anos.

   select * from clientes
where cidade=  "manaus" and  idade > "40";

#19. Liste os clientes com nome 'Carla' e cidade 'Belém'.

   select * from clientes
where nome=  "Carla" and  cidade > "Belém";

#20. Selecione os clientes com idade menor que 25 e estado 'PE'. 

   select * from clientes
where 25 >  estado > "pe";

#21. Mostre os dados dos clientes com nome 'Paulo' e idade igual a 33. 

   select * from clientes
where nome=  "Paulo" and  idade = 33;

#22. Liste os clientes da cidade 'João Pessoa' e com idade maior que 50. 

   select * from clientes
where cidade =  "Joao pessoa" and  idade > 50;

#23. Selecione os clientes do estado 'BA' e idade igual a 45. 

   select * from clientes
where estado =  "BA " and  idade = 45;


#24. Mostre os clientes com idade entre 30 e 40 e cidade 'Maceió'. 

select * from clientes
where cidade = "Maceio" and 30 > idade < "40";

#25. Liste os clientes com nome 'Fernanda' e idade menor que 30. 

   select * from clientes
where nome =  "Fernanda " and  idade < 30;

