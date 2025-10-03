create database bd_crud_mundo;

-- Iniciando utilização do Banco de Dados "bd_crud_mundo"
use bd_crud_mundo;

-- Criando Tabelas

-- Criando a Tabela de Continentes
create table continentes(
	id_continente int primary key auto_increment not null,
    nome varchar(50) not null
);

-- Criando a Tabela de Países
create table paises(
	id_pais int primary key auto_increment not null,
    id_continente int not null,
	nome varchar(60) not null,
	populacao int not null,
    idioma varchar(50) not null,
    foreign key (id_continente) references continentes (id_continente)
);

-- Criando a Tabela de Cidades
create table cidades(
	id_cidades int primary key auto_increment not null,
    id_pais int not null,
    nome varchar(60) not null,
    populacao int not null,
    foreign key (id_pais) references paises (id_pais)
);

-- Inserindo Dados na Tabela Continentes
insert into continentes (nome) values
('América'),
('Europa'),
('Ásia'),
('África'),
('Oceânia');

-- Inserindo Dados na Tabela Países

-- Países da América
insert into paises (nome,id_continente,populacao,idioma) values
('Brasil', 1, 203000000, 'Português'),
('Estados Unidos', 1, 335000000, 'Inglês'),
('Canadá', 1, 39000000, 'Inglês/Francês'),
('Argentina', 1, 46000000, 'Espanhol'),
('México', 1, 128000000, 'Espanhol');

-- Países da Europa
insert into paises (nome,id_continente,populacao,idioma) values
('Alemanha', 2, 84000000, 'Alemão'),
('França', 2, 68000000, 'Francês'),
('Espanha', 2, 48000000, 'Espanhol'),
('Itália', 2, 59000000, 'Italiano'),
('Portugal', 2, 10500000, 'Português');

-- Países da Ásia
insert into paises (nome,id_continente,populacao,idioma) values
('China', 3, 1410000000, 'Mandarim'),
('Índia', 3, 1420000000, 'Hindi'),
('Japão', 3, 124000000, 'Japonês'),
('Coreia do Sul', 3, 52000000, 'Coreano'),
('Arábia Saudita', 3, 36000000, 'Árabe');

-- Países da África
insert into paises (nome,id_continente,populacao,idioma) values
('Nigéria', 4, 223000000, 'Inglês'),
('Egito', 4, 112000000, 'Árabe'),
('África do Sul', 4, 61000000, 'Inglês'),
('Quênia', 4, 55000000, 'Suaíli/Inglês'),
('Marrocos', 4, 38000000, 'Árabe/Francês');

-- Países da Oceânia
insert into paises (nome,id_continente,populacao,idioma) values
('Austrália', 5, 26000000, 'Inglês'),
('Nova Zelândia', 5, 5200000, 'Inglês/Maori'),
('Fiji', 5, 930000, 'Inglês/Fijiano'),
('Papua-Nova Guiné', 5, 10000000, 'Inglês/Tok Pisin'),
('Samoa', 5, 225000, 'Samoano/Inglês');

-- Inserindo Dados na Tabela Cidades

-- Cidades de Países da América

-- Cidades do Brasil
insert into cidades (nome,id_pais,populacao) values
('São Paulo', 1, 123000000),
('Rio de Janeiro', 1, 6748000),
('Brasília', 1, 3100000),
('Salvador', 1, 2900000),
('Fortaleza', 1, 2700000);

-- Cidades dos Estados Unidos
insert into cidades (nome,id_pais,populacao) values
('Nova York', 2, 8400000),
('Los Angeles', 2, 3900000),
('Chicago', 2, 2700000),
('Houston', 2, 2300000),
('Phoenix', 2, 1700000);

-- Cidades do Canadá
insert into cidades (nome,id_pais,populacao) values
('Toronto', 3, 2800000),
('Montreal', 3, 1800000),
('Vancouver', 3, 675000),
('Calgary', 3, 1300000),
('Ottawa', 3, 1050000);

-- Cidades da Argentina
insert into cidades (nome,id_pais,populacao) values
('Buenos Aires', 4, 3100000),
('Córdoba', 4, 1400000),
('Rosario', 4, 1200000),
('Mendoza', 4, 1150000),
('La Plata', 4, 900000);

-- Cidades do México
insert into cidades (nome,id_pais,populacao) values
('Cidade do México', 5, 9200000),
('Guadalajara', 5, 1500000),
('Monterrey', 5, 1100000),
('Puebla', 5, 1500000),
('Tijuana', 5, 2000000);

-- Cidades de Países da Europa

-- Cidades da Alemanha
insert into cidades (nome,id_pais,populacao) values
('Berlim', 6, 3600000),
('Hamburgo', 6, 1800000),
('Munique', 6, 1500000),
('Colônia', 6, 1100000),
('Frankfurt', 6, 770000);

-- Cidades da França
insert into cidades (nome,id_pais,populacao) values
('Paris', 7, 2160000),
('Marselha', 7, 870000),
('Lyon', 7, 520000),
('Toulouse', 7, 500000),
('Nice', 7, 340000);

-- Cidades da Espanha
insert into cidades (nome,id_pais,populacao) values
('Madri', 8, 3300000),
('Barcelona', 8, 1600000),
('Valência', 8, 800000),
('Sevilha', 8, 680000),
('Zaragoza', 8, 675000);

-- Cidades da Itália
insert into cidades (nome,id_pais,populacao) values
('Roma', 9, 2800000),
('Milão', 9, 1400000),
('Nápoles', 9, 950000),
('Turim', 9, 850000),
('Palermo', 9, 650000);

-- Cidades de Portugal
insert into cidades (nome,id_pais,populacao) values
('Lisboa', 10, 545000),
('Porto', 10, 230000),
('Vila Nova de Gaia', 10, 300000),
('Amadora', 10, 175000),
('Braga', 10, 190000);

-- Cidades de Países da Ásia

-- Cidades da China
insert into cidades (nome, id_pais, populacao) values
('Pequim', 11, 21500000),
('Xangai', 11, 24800000),
('Chongqing', 11, 32000000),
('Guangzhou', 11, 15000000),
('Shenzhen', 11, 13000000);

-- Cidades da Índia
insert into cidades (nome, id_pais, populacao) values
('Mumbai', 12, 20400000),
('Delhi', 12, 19000000),
('Bangalore', 12, 11000000),
('Hyderabad', 12, 10000000),
('Chennai', 12, 9500000);

-- Cidades do Japão
insert into cidades (nome, id_pais, populacao) values
('Tóquio', 13, 14000000),
('Yokohama', 13, 3700000),
('Osaka', 13, 2700000),
('Nagoya', 13, 2300000),
('Sapporo', 13, 1900000);

-- Cidades da Coreia do Sul
insert into cidades (nome, id_pais, populacao) values
('Seul', 14, 9800000),
('Busan', 14, 3400000),
('Incheon', 14, 2900000),
('Daegu', 14, 2400000),
('Daejeon', 14, 1500000);

-- Cidades da Arábia Saudíta
insert into cidades (nome, id_pais, populacao) values
('Riade', 15, 7700000),
('Jidá', 15, 4000000),
('Meca', 15, 2000000),
('Medina', 15, 1300000),
('Dammam', 15, 1200000);

-- Cidades de Países da África

-- Cidades da Nigéria
insert into cidades (nome, id_pais, populacao) values
('Lagos', 16, 15000000),
('Abuja', 16, 3800000),
('Kano', 16, 4000000),
('Ibadan', 16, 3500000),
('Port Harcourt', 16, 1900000);

-- Cidades do Egito
insert into cidades (nome, id_pais, populacao) values
('Cairo', 17, 10000000),
('Alexandria', 17, 5200000),
('Giza', 17, 4400000),
('Shubra El Kheima', 17, 1100000),
('Port Said', 17, 750000);

-- Cidades da África do Sul
insert into cidades (nome, id_pais, populacao) values
('Joanesburgo', 18, 5900000),
('Cidade do Cabo', 18, 4600000),
('Durban', 18, 3900000),
('Pretória', 18, 2400000),
('Port Elizabeth', 18, 1200000);

-- Cidades da Quênia
insert into cidades (nome, id_pais, populacao) values
('Nairóbi', 19, 4700000),
('Mombaça', 19, 1200000),
('Kisumu', 19, 610000),
('Nakuru', 19, 570000),
('Eldoret', 19, 475000);

-- Cidades de Marrocos
insert into cidades (nome, id_pais, populacao) values
('Casablanca', 20, 3500000),
('Rabat', 20, 580000),
('Fez', 20, 1100000),
('Tânger', 20, 950000),
('Marrakech', 20, 930000);

-- Cidades de Países da Oceânia

-- Cidades da Austrália
insert into cidades (nome, id_pais, populacao) values
('Sydney', 21, 5400000),
('Melbourne', 21, 5100000),
('Brisbane', 21, 2500000),
('Perth', 21, 2100000),
('Adelaide', 21, 1350000);

-- Cidades da Nova Zelândia
insert into cidades (nome, id_pais, populacao) values
('Auckland', 22, 1650000),
('Wellington', 22, 215000),
('Christchurch', 22, 380000),
('Hamilton', 22, 175000),
('Tauranga', 22, 155000);

-- Cidades de Fiji
insert into cidades (nome, id_pais, populacao) values
('Suva', 23, 94000),
('Nadi', 23, 42000),
('Lautoka', 23, 72000),
('Labasa', 23, 28000),
('Ba', 23, 18000);

-- Cidades de Papua-Nova Guiné
insert into cidades (nome, id_pais, populacao) values
('Port Moresby', 24, 400000),
('Lae', 24, 100000),
('Mount Hagen', 24, 45000),
('Madang', 24, 30000),
('Kokopo', 24, 21000);

-- Cidades de Samoa
insert into cidades (nome, id_pais, populacao) values
('Apia', 25, 37000),
('Vaitele', 25, 7000),
('Faleasiu', 25, 2500),
('Leulumoega', 25, 4000),
('Salelologa', 25, 3000);