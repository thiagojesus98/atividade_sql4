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

-- atividade--

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

select * from FilmesAcao

