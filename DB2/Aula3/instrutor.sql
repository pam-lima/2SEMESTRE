create database instrutor;
use instrutor;

CREATE TABLE professor (
    id_professor SERIAL PRIMARY KEY NOT NULL,
    nome_professor VARCHAR(100),
    logadouro VARCHAR(100),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(10),
    tel_residencial INT,
    tel_celular INT,
    email VARCHAR(100)
);

 -- ============================================
-- Usando o INSERT
-- ============================================

INSERT INTO professor(id_professor, nome_professor, logadouro, bairro,  cidade, estado, tel_residencial, tel_celular, email) values
(1, "Emanuela viera", "Rua Afonso Monteiro, 125", "Santa Maria", "Diadema", "SP", 45678912, 11963852741, "emanoela@mail.com"),
(2, "Viviane sheila", "Rua Rafael Moises, 111", "Santa Maria", "Diadema", "SP", 36251478, 11985742365, "viviane@mail.com"),
(3, "CLeiton de Andrade", "Rua Antonio Serafim, 22", "Cooperativa", "São Bernardo do Campo", "SP", 65832147 , 11985263254, "cleiton@mail.com"),
(4, "ALice Viera", "Rua Angela Marçon, 54", "Jd. Nazareth", "São Bernardo do Campo", "SP", 74589632, 11952236478, "alice@mail.com"),
(5, "Vania Lúcia", "Rua Jose Bonifacio, 2654", "Conceição", "Diadema", "SP", 25786369, 11999805475, "vania@mail.com");

SELECT * FROM professor;

create database Produto;
use Produto;

Create table Produtos(
cod_prod int,
Nome_prod varchar(40),
Tipo_prod varchar(20),
Qtd_prod int,
val_prod decimal(10,2)
);
 
Insert into Produtos values
(1,'Câmera Digital','Digitais',300,400.00),
(2,'DVD Player','Eletrônicos',250,500.00),
(3,'Monitor','Informática',400,900.00),
(4,'Televisor','Eletrônicos',350,650.00),
(5,'Filmadora Digital','Digitais',500,750.00),
(6,'Celular','Telefone',450,850.00),
(7,'Teclado','Informática',300,450.00),
(8,'Videogame','Eletrônicos',1500,350.00),
(9,'Mouse','Informática',400,60.00),
(10,'impressora', "Informática",200,600.00);

-- ============================================
-- Usando o UPDATE
-- ============================================

-- AUMENTANDO O PREÇO DOS PRODUTOS IGUAIS OU MENORES QUE 300 REAIS.
SELECT * FROM Produtos         -- MOSTRA TUDO DO TIPO DE INFORMATICA 
WHERE Tipo_prod='informática';

UPDATE Produtos                 -- MUDA PERMANENTEMENTE  
SET Qtd_prod = Qtd_prod + 50
where Qtd_prod <= 300;

SELECT * FROM Produtos
WHERE Qtd_prod;

-- ============================================
-- Usando o DELETE
-- ============================================

DELETE FROM Produtos
WHERE Tipo_prod = "Telefone";

-- ========================================
-- OPERADORES LOGICOS EM MySQL
-- =======================================

-- AND ...............................................................................

UPDATE produtos
SET Val_prod = Val_prod * 1.1 
WHERE Tipo_prod='informática' 
AND Val_prod <=750;

-- OR (ATENDE A UMA CONDIÇÃO OU A OUTRA)..................................................................................

SELECT * FROM produtos
WHERE Tipo_prod = 'Eletrônicos' OR
Tipo_prod='informática';

 UPDATE produtos
 SET Val_prod = Val_prod * 1.1
 WHERE Tipo_prod = 'Eletrônicos'
 OR Val_prod >= 700;

-- IN (OPÇÃO DO OR, PARA BUSCAR EM DOIS VALORES OU MAIS)  .....................................................................

SELECT * FROM produtos
WHERE Tipo_prod IN ('Eletrônicos','informática');

-- BETWEEN (BUSCA ENTRE VALORES)  ...............................................................................

SELECT * FROM produtos
WHERE Val_prod BETWEEN 300 AND 500;

-- NOT BETWEEN (BUSCA FORA DOS INTERVALOS)   ................................................................................

SELECT * FROM produtos
WHERE Val_prod NOT BETWEEN 300 AND 500;

-- lIKE (BUSCA ITENS QUE INICIEM OU TENHAM)

SELECT * FROM produtos
WHERE Nome_prod LIKE 'M%'; -- (% = QUALQUER COISA, LOGO M% = LETRA M E QUALQUER COISA DPS) ...............................................................

-- NOT LIKE (QUE NÃO TENHAM OS ITENS)

SELECT Nome_prod NOT LIKE 'T';

create table COLABORADORES(
cod_colab int not null, 
nome_colab varchar(40) not null,
rg_colab varchar(15) not null,
sexo_colab char(1) not null,
sal_colab decimal(10.2) null default 1631.00,
constraint PK_colab Primary Key (cod_colab),
constraint Um_colab Unique (rg_colab),
constraint Ch_colab1 Check (sexo_colab in ('F','M')),
constraint Ch_colab2 Check (sal_colab > 0)
);

iNSERT INTO COLABORADORES values
(1, 'Rita Junqueira', '23.456.789', 'F', 1900.00),
(2, 'Zoroilson Almeida', '98.765.432', 'M', 2100.00),
(3, 'Marisléia da Silva', '12.987.345', 'F', 2500.00);

select * from COLABORADORES;

create table DEPENDENTES
(cod_dep int not null primary key,
cod_colab int not null, 
nome_dep varchar(40) not null,
nasc_dep date not null,
sexo_dep char(1) not null default 'F',
paren_dep varchar(20) not null,
constraint fk_dep foreign key (cod_colab) references COLABORADORES (cod_colab),
constraint ch_dep check (sexo_dep in ('F', 'M'))
);

iNSERT INTO DEPENDENTES values
(1, 1, 'Mariana Junqueira', '2005-02-02', 'F', 'Filha'),
(2, 2, 'Juliana Almeida', '1978-11-12', 'F', 'Esposa'),
(3, 1, 'João Junqueira', '2004-03-28', 'M', 'Filho'),
(4, 3, 'Isabela da Silva', '2008-09-15', 'F', 'Filha'),
(5, 3, 'José da Silva', '2005-07-04', 'M', 'Filho');
