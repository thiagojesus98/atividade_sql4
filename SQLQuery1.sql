create database LocadoraDB;
exec sp_helpdb LocadoraDB;

use LocadoraDB;


create table Cliente (
IDCliente int primary key,
Nome varchar(100) not null,
Email varchar(100),
Telefone varchar(20),
DataNascimento date
);

create table Categoria (
IDCategoria int primary key,
NomeCategoria varchar(50) not null
);

create table Filmes (
IDFilmes int primary key,
Titulo varchar(100) not null,
AnoLancamento int,
IDCategoria int,
foreign key (IDCategoria) references Categoria(IDCategoria)
);

CREATE TABLE Locacao (
    IdLocacao INT PRIMARY KEY,
    IdCliente INT,
    IdFilme INT,
    DataLocacao DATE,
    DataDevolucao DATE,
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(IdFilmes)
);
GO


select * from Cliente

insert into Cliente Values
(1, 'João Silva', 'joao@email.com', '(14)99999-0000', '1990-01-05'),
(2, 'Maria Souza', 'maria@email.com', '(14)98888-2222', '1985-05-22');

insert into Categoria values
(1, 'Ação'),
(2, 'Comédia'),
(3, 'Drama');

select * from Cliente


insert into Filmes values
(1, 'Missão Impossivel', 2018, 1),
(2, 'Se beber, Não case', 2009, 2),
(3, 'A Espera de Um Milagre', 1999, 3);

insert into Locacao values
(1,1,1, '2025-06-01', '2025-07-02'),
(2,2,2, '2025-07-02', '2025-08-09');

select * from Locacao;


select * from Cliente;

update Cliente
set Telefone = '(14)98812-0000'
where IDCliente = 1;

select Titulo
from Filmes;


select distinct idCategoria
from Filmes;

select * from ClienteSenaiBrotas

--criar tabela com dados de outra
select Nome, Email
into ClienteSenaiBrotas
from Cliente;

-- atividade 4

select Titulo,AnoLancamento,IDFilme
from filmes,

SELECT Nome
FROM Cliente;


SELECT NomeCategoria
FROM Categoria;

SELECT Titulo, IDFilmes
FROM Filmes;

SELECT DISTINCT IDCategoria
FROM Filmes;


SELECT *
INTO FilmesAcao
FROM Filmes
WHERE IDCategoria = 1;

select * from Cliente;

-- Aula 20/08/25
INSERT INTO Cliente (IDCliente, Nome, Email, Telefone, DataNascimento, CPF) VALUES
(4, 'Bruno Costa', 'bruno.costa@email.com', '(21) 99765-4321', '1985-03-22', '23456789012'),
(5, 'Carla Souza', 'carla.souza@email.com', '(31) 98811-2233', '1992-11-08', '34567890123'),
(6, 'Diego Pereira', 'diego.pereira@email.com', '(41) 99988-1122', '1988-07-19', '45678901234'),
(7, 'Eduarda Lima', 'eduarda.lima@email.com', '(51) 99123-4455', '1995-09-30', '56789012345'),
(8, 'Felipe Almeida', 'felipe.almeida@email.com', '(61) 99321-5566', '1983-12-05', '67890123456'),
(9, 'Gabriela Rocha', 'gabriela.rocha@email.com', '(71) 98765-7788', '1998-01-17', '78901234567'),
(10, 'Henrique Santos', 'henrique.santos@email.com', '(81) 99654-8899', '1991-04-25', '89012345678'),
(11, 'Isabela Martins', 'isabela.martins@email.com', '(91) 99543-6677', '1986-10-02', '90123456789'),
(12, 'João Oliveira', 'joao.oliveira@email.com', '(11) 98456-3322', '1993-02-14', '11223344556'),
(13, 'Karen Ribeiro', 'karen.ribeiro@email.com', '(21) 98322-9988', '1989-06-09', '22334455667'),
(14, 'Lucas Fernandes', 'lucas.fernandes@email.com', '(31) 98111-3344', '1994-08-21', '33445566778'),
(15, 'Mariana Dias', 'mariana.dias@email.com', '(41) 98665-4455', '1997-03-11', '44556677889'),
(16, 'Nicolas Teixeira', 'nicolas.teixeira@email.com', '(51) 98234-5566', '1987-12-29', '55667788990'),
(17, 'Olivia Castro', 'olivia.castro@email.com', '(61) 98123-6677', '1999-09-07', '66778899001'),
(18, 'Paulo Mendes', 'paulo.mendes@email.com', '(71) 98987-7788', '1984-05-03', '77889900112'),
(19, 'Renata Gomes', 'renata.gomes@email.com', '(81) 98876-8899', '1996-07-15', '88990011223'),
(20, 'Thiago Araujo', 'thiago.araujo@email.com', '(91) 99754-9900', '1990-11-28', '99001122334');




insert into Categoria values 
(4, 'Romance'),
(5, 'Suspense'),
(6, 'Terror'),
(7, 'Ficção Científica'),
(8, 'Fantasia'),
(9, 'Aventura'),
(10, 'Animação'),
(11, 'Musical'),
(12, 'Documentário'),
(13, 'Guerra'),
(14, 'Mistério'),
(15, 'Policial');

select * from Filmes

exec sp_rename 'Filmes.AnoLancamente', 'AnoLancamento', 'COLUMN';

iNSERT INTO Filmes (IDFilme, Titulo, AnoLancamento, IDCategoria) VALUES
(5, 'O Resgate Impossível', 2020, 1),   
(6, 'Risos em Família', 2018, 2),       
(7, 'Além das Estrelas', 2021, 7),      
(8, 'A Lenda do Dragão', 2019, 8),      
(9, 'Noites de Terror', 2017, 6),       
(10, 'Corações em Chamas', 2016, 4),    
(11, 'Mistério na Floresta', 2022, 14),  
(12, 'O Último Soldado', 2015, 13),      
(13, 'Viagem Sem Volta', 2019, 9),       
(14, 'A Vida de Einstein', 2014, 12),   
(15, 'Cidade Sob Pressão', 2020, 15),   
(16, 'O Grande Espetáculo', 2018, 11),  
(17, 'Sombras do Passado', 2021, 5),    
(18, 'O Reino Perdido', 2017, 8),       
(19, 'Operação Relâmpago', 2016, 1),    
(20, 'Rindo à Toa', 2022, 2);  

INSERT INTO Locacao VALUES
(3,3,5,  '2025-06-03', '2025-06-06'),
(4,4,3,  '2025-06-04', '2025-06-10'),
(5,5,7,  '2025-06-05', '2025-06-09'),
(6,6,8,  '2025-06-06', '2025-06-12'),
(7,7,4,  '2025-06-07', '2025-06-11'),
(8,8,10, '2025-06-08', '2025-06-13'),
(9,9,6,  '2025-06-09', '2025-06-14'),
(10,10,9, '2025-06-10', '2025-06-15'),
(11,11,11,'2025-06-11', '2025-06-16'),
(12,12,12,'2025-06-12', '2025-06-17'),
(13,13,13,'2025-06-13', '2025-06-18'),
(14,14,14,'2025-06-14', '2025-06-19'),
(15,15,15,'2025-06-15', '2025-06-20'),
(16,16,16,'2025-06-16', '2025-06-21'),
(17,17,2, '2025-06-17', '2025-06-22'),
(18,18,1, '2025-06-18', '2025-06-23');

select * from Filmes

alter table Filmes 
add PrecoFilmes decimal(10,2);

select PrecoFilmes
from Filmes;


update Filmes
set PrecoFilmes = 60.50
where IDFilme = 2;

update Filmes
set PrecoFilmes = 35.00
where IDFilme = 3;

update Filmes
set PrecoFilmes = 42.75
where IDFilme = 4;

update Filmes
set PrecoFilmes = 18.90
where IDFilme = 5;

update Filmes
set PrecoFilmes = 50.00
where IDFilme = 6;

update Filmes
set PrecoFilmes = 27.30
where IDFilme = 7;

update Filmes
set PrecoFilmes = 65.20
where IDFilme = 8;

update Filmes
set PrecoFilmes = 31.40
where IDFilme = 9;

update Filmes
set PrecoFilmes = 40.00
where IDFilme = 10;

update Filmes
set PrecoFilmes = 22.50
where IDFilme = 11;

update Filmes
set PrecoFilmes = 75.90
where IDFilme = 12;

update Filmes
set PrecoFilmes = 28.70
where IDFilme = 13;

update Filmes
set PrecoFilmes = 34.80
where IDFilme = 14;

update Filmes
set PrecoFilmes = 55.00
where IDFilme = 15;

update Filmes
set PrecoFilmes = 19.90
where IDFilme = 16;

update Filmes
set PrecoFilmes = 46.50
where IDFilme = 17;

update Filmes
set PrecoFilmes = 63.40
where IDFilme = 18;

update Filmes
set PrecoFilmes = 30.00
where IDFilme = 19;

update Filmes
set PrecoFilmes = 59.99
where IDFilme = 20;

--consulta para retornar valores em um intervalo de tempo
select * from Filmes
where AnoLancamento between 2006 and 2015;

--comando para usado para ordenar os resultado de uma consulta com base em uma ou mais colunas.
select Titulo, PrecoFilmes
from Filmes
order by PrecoFilmes desc;

select Titulo, PrecoFilmes
from Filmes
order by PrecoFilmes asc;

--comando que busca por padrões em textos (com % com coringa)
select * from Filmes
where Titulo like '0%';

--comando para filtra registros que correspondem a uma lista de valores.
select * from Filmes
where AnoLancamento in ('2016', '2020');

--comando que retorna resultados somente se todas as condições forem verdadeiras.
select * from Filmes
where AnoLancamento = '2020' and PrecoFilmes ='9.99';

--comando que retorna resultados somente se todas as condições for verdadeira.
select * from Filmes
where AnoLancamento = '2014' or AnoLancamento = '2020';

--comando que inverte o resultado de uma condição.
select * from Filmes
where not AnoLancamento = '2020';

--EXERCICIOS DA ATIVIDADE 5

--retornar os títulos dos filmes e o ano de lançamento apenas dos filmes da categoria Ação.
select Titulo, AnoLancamento
from Filmes
where IDCategoria = 1;

select * from Categoria

--mostrar apenas os nomes dos clientes em ordem alfabética crescente.
select Nome
from Cliente
order by Nome asc;

--listar os filmes lançados entre os anos de 2018 e 2021, incluindo os dois anos (intervalo fechado).
select Titulo, AnoLancamento
from Filmes
where AnoLancamento BETWEEN 2018 AND 2021;

--mostrar os títulos dos filmes cujo nome começa com a letra "O".
select Titulo
from Filmes
where Titulo LIKE 'O%';

--exibir os clientes que nasceram entre 1990 e 1995.
select Nome, DataNascimento
from Cliente
where year(DataNascimento) between 1990 and 1995;

-- retornar os títulos dos filmes das categorias Comédia, Drama e Suspense.
select Titulo
from Filmes
where IDCategoria IN (2, 3, 4); 

-- mostrar os clientes que possuem o nome contendo a palavra "Silva".
SELECT Nome
FROM Cliente
WHERE Nome like 'Silva';

-- exibir os filmes que não pertencem à categoria Terror (IDCategoria = 6).
select Titulo
from Filmes
where not IDCategoria = 6;

--Listar os filmes lançados após 2018 que sejam de Ação ou Ficção Científica.
select Titulo , AnoLancamento
from Filmes
where AnoLancamento > 2018 and (IDCategoria = 1 or IDCategoria = 7);

select * from Categoria

-- mostrar o título e o ano de lançamento dos filmes de Aventura (IDCategoria = 9), em ordem do mais recente para o mais antigo.
select Titulo, AnoLancamento
from Filmes
where IDCategoria = 9
order by AnoLancamento asc;




