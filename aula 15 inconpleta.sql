#Criar o banco de dados 
create database escola;

#selecionar o banco de dados 
use escola;

#Criar a tabela 
create table livraria( 
id int not null auto_increment, 
livro varchar(50) not null , 
titulo varchar(50) not null , 
preco float unsigned, 
autor varchar(30), 
editora varchar(30), 
primary key(id) 
)default charset = utf8mb4
collate = utf8mb4_general_ci;


INSERT INTO livraria (livro, titulo, preco, autor, editora) VALUES
	('Livro1', 'O Senhor dos Anéis', 79.90, 'J.R.R. Tolkien', 'HarperCollins'),
	('Livro2', '1984', 39.90, 'George Orwell', 'Companhia das Letras'),
	('Livro3', 'Dom Quixote', 49.90, 'Miguel de Cervantes', 'Editora Record'),
	('Livro4', 'O Pequeno Príncipe', 29.90, 'Antoine de Saint-Exupéry', 'Agir'),
	('Livro5', 'Moby Dick', 59.90, 'Herman Melville', 'L&PM'),
	('Livro6', 'Crime e Castigo', 89.90, 'Fiódor Dostoiévski', 'Editora 34'),
	('Livro7', 'Cem Anos de Solidão', 49.90, 'Gabriel García Márquez', 'Record'),
	('Livro8', 'A Revolução dos Bichos', 19.90, 'George Orwell', 'Companhia das Letras'),
	('Livro9', 'A Metamorfose', 25.90, 'Franz Kafka', 'Antofágica'),
	('Livro10', 'O Grande Gatsby', 34.90, 'F. Scott Fitzgerald', 'Intrínseca'),
	('Livro11', 'Harry Potter e a Pedra Filosofal', 79.90, 'J.K. Rowling', 'Rocco'),
	('Livro12', 'O Hobbit', 39.90, 'J.R.R. Tolkien', 'HarperCollins'),
	('Livro13', 'O Código Da Vinci', 89.90, 'Dan Brown', 'Sextante'),
	('Livro14', 'A Sangue Frio', 39.90, 'Truman Capote', 'Companhia das Letras'),
	('Livro15', 'O Nome da Rosa', 69.90, 'Umberto Eco', 'Record'),
	('Livro16', 'A Arte da Guerra', 29.90, 'Sun Tzu', 'Ed. Martin Claret'),
	('Livro17', 'O Falcão Maltês', 49.90, 'Dashiell Hammett', 'L&PM'),
	('Livro18', 'Orgulho e Preconceito', 19.90, 'Jane Austen', 'Editora Landmark'),
	('Livro19', 'O Senhor das Moscas', 24.90, 'William Golding', 'Editora Record'),
	('Livro20', 'O Príncipe', 15.90, 'Nicolau Maquiavel', 'Martin Claret'),
	('Livro21', 'A Menina que Roubava Livros', 49.90, 'Markus Zusak', 'Intrínseca'),
	('Livro22', 'O Diário de Anne Frank', 39.90, 'Anne Frank', 'Record'),
	('Livro23', 'A caverna', 59.90, 'José Saramago', 'Cia das Letras'),
	('Livro24', 'Fahrenheit 451', 34.90, 'Ray Bradbury', 'Aleph'),
	('Livro25', 'Vingança', 29.90, 'C.S. Lewis', 'Cultura'),
	('Livro26', 'Drácula', 69.90, 'Bram Stoker', 'L&PM'),
	('Livro27', 'O Retrato de Dorian Gray', 44.90, 'Oscar Wilde', 'Penguin'),
	('Livro28', 'Frankenstein', 54.90, 'Mary Shelley', 'L&PM'),
	('Livro29', 'O Morro dos Ventos Uivantes', 38.90, 'Emily Brontë', 'Cia. das Letras'),
	('Livro30', 'Laranja Mecânica', 49.90, 'Anthony Burgess', 'Aleph'),
	('Livro31', 'O Alienista', 19.90, 'Machado de Assis', 'L&PM'),
	('Livro32', 'O Lobo da Estepe', 59.90, 'Hermann Hesse', 'Cia. das Letras'),
	('Livro33', 'O Rei Leão', 69.90, 'Disney', 'Editora Abril'),
	('Livro34', 'O Conde de Monte Cristo', 89.90, 'Alexandre Dumas', 'L&PM'),
	('Livro35', 'A Insustentável Leveza do Ser', 49.90, 'Milan Kundera', 'Cia. das Letras'),
	('Livro36', 'O Conto da Aia', 34.90, 'Margaret Atwood', 'Rocco'),
	('Livro37', 'O Cavaleiro dos Sete Reinos', 39.90, 'George R. R. Martin', 'LeYa'),
	('Livro38', 'O Prisioneiro da Masmorras', 24.90, 'Augusto Cury', 'Sextante'),
	('Livro39', 'O Grande Gatsby', 34.90, 'F. Scott Fitzgerald', 'Intrínseca'),
	('Livro40', 'A Guerra dos Tronos', 89.90, 'George R. R. Martin', 'LeYa'),
	('Livro41', '1984', 39.90, 'George Orwell', 'Companhia das Letras'),
	('Livro42', 'A Mão Esquerda da Escuridão', 59.90, 'Ursula K. Le Guin', 'Companhia das Letras'),
	('Livro43', 'Eu Sou Malala', 39.90, 'Malala Yousafzai', 'Cia. das Letras'),
	('Livro44', 'O Senhor das Sombras', 29.90, 'Cassandra Clare', 'Record'),
	('Livro45', 'Os Miseráveis', 69.90, 'Victor Hugo', 'L&PM'),
	('Livro46', 'O Menino do Pijama Listrado', 39.90, 'John Boyne', 'Cia. das Letras'),
	('Livro47', 'O Labirinto do Fauno', 24.90, 'Guillermo del Toro', 'Planeta'),
	('Livro48', 'Ensaio Sobre a Cegueira', 59.90, 'José Saramago', 'Cia. das Letras'),
	('Livro49', 'A Crônica de Nárnia', 44.90, 'C.S. Lewis', 'Cultura'),
	('Livro50', 'A Culpa é das Estrelas', 49.90, 'John Green', 'Intrínseca'),
	('Livro51', 'O Silêncio dos Inocentes', 59.90, 'Thomas Harris', 'Record'),
	('Livro52', 'A Menina que Roubava Livros', 39.90, 'Markus Zusak', 'Intrínseca'),
	('Livro53', 'O Hobbit', 49.90, 'J.R.R. Tolkien', 'HarperCollins'),
	('Livro54', 'O Fim da Eternidade', 39.90, 'Isaac Asimov', 'Aleph'),
	('Livro55', 'O Conde de Monte Cristo', 79.90, 'Alexandre Dumas', 'L&PM'),
	('Livro56', 'O Grande Mentecapto', 39.90, 'Fernando Sabino', 'Companhia das Letras'),
	('Livro57', 'A Estrada', 69.90, 'Cormac McCarthy', 'Cia. das Letras'),
	('Livro58', 'A Volta ao Mundo em 80 Dias', 49.90, 'Jules Verne', 'L&PM'),
	('Livro59', 'A Ilha do Tesouro', 29.90, 'Robert Louis Stevenson', 'Editora Zahar'),
	('Livro60', 'O Mundo de Sofia', 59.90, 'Jostein Gaarder', 'Cia. das Letras'),
	('Livro61', 'Fahrenheit 451', 44.90, 'Ray Bradbury', 'Aleph'),
	('Livro62', 'O Caso dos Dez Negrinhos', 49.90, 'Agatha Christie', 'L&PM'),
	('Livro63', 'A Abadia de Northanger', 29.90, 'Jane Austen', 'Cultura'),
	('Livro64', 'O Anjo Perdido', 39.90, 'Nelson de Oliveira', 'Companhia das Letras'),
	('Livro65', 'O Homem Invisível', 34.90, 'H.G. Wells', 'L&PM'),
	('Livro66', 'O Lado Bom da Vida', 49.90, 'Matthew Quick', 'Intrínseca'),
	('Livro67', 'O Fantasma da Ópera', 59.90, 'Gaston Leroux', 'L&PM'),
	('Livro68', 'O Poder do Hábito', 29.90, 'Charles Duhigg', 'Objetiva'),
	('Livro69', 'O Poder da Ação', 39.90, 'Paulo Vieira', 'Gente'),
	('Livro70', 'O Monge e o Executivo', 39.90, 'James C. Hunter', 'Editora Thomas Nelson'),
	('Livro71', 'Como Fazer Amigos e Influenciar Pessoas', 59.90, 'Dale Carnegie', 'Editora Qualitymark');
    
#1. Mostre todos os livros cujo título começa com a letra "O".   

  SELECT * FROM livraria
WHERE titulo LIKE 'O%';

 
#2. Mostre todos os livros cujo título termina com a letra "e". 

SELECT * FROM livraria
WHERE titulo LIKE '%e';

#3. Liste os livros cujo título contém a letra "r" em qualquer posição. 

SELECT * FROM livraria
WHERE titulo LIKE '%r%';

#4. Selecione os livros cujo título começa com "C" e termina com "o". 

SELECT * FROM livraria
WHERE titulo LIKE 'c%o';

#5. Mostre os livros com título que possuem exatamente 10 caracteres. 

SELECT * FROM livraria
WHERE char_length(titulo) = 10;

#6. Liste os livros cujo nome do autor começa com "J". 

SELECT * FROM livraria
WHERE titulo LIKE 'J%';

#7. Mostre os livros cujo nome da editora termina com "s". 

SELECT * FROM livraria
WHERE titulo LIKE '%s';

#8. Encontre os livros com "dos" em qualquer parte do título. 

SELECT * FROM livraria
WHERE titulo LIKE '%dos%';

#9. Mostre todos os livros com título onde a segunda letra é "e". 

SELECT * FROM livraria
WHERE titulo LIKE '_e%';

#10. Mostre os livros com título onde a terceira letra é "m". 

SELECT * FROM livraria
WHERE titulo LIKE '__m%';

#11. Mostre os livros cujo título não começa com "O".

SELECT * FROM livraria
WHERE titulo NOT LIKE 'O%';

#12. Mostre os livros cujo título não contém a letra "a". 

SELECT * FROM livraria
WHERE titulo NOT LIKE '%a%';

#13. Mostre os livros cujo título não termina com a letra "o". 

SELECT * FROM livraria
WHERE titulo NOT LIKE '%o';

#14. Liste os livros cujo autor não contém a letra "e".

SELECT * FROM livraria
WHERE titulo NOT LIKE '%e%';

#15. Mostre os livros com título não iniciando por "A" e não contendo "e". 

SELECT * FROM livraria
WHERE titulo NOT LIKE 'A%' AND titulo NOT LIKE '%e%';

#16. Liste os livros cujo título tem "a" como segunda letra e "e" como quarta 
#letra. 

SELECT * FROM livraria
WHERE titulo LIKE '_a_e%';















