create database axmotors;
use axmotors;

create table usuarios (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100), 
email VARCHAR(100), 
login VARCHAR(100), 
senha VARCHAR(100), 
dtCadastro DATE,
dtUltAlteracao DATE
); 

select * from usuarios;

INSERT INTO `usuarios` (`nome`,`email`,`login`,`senha`,`dtCadastro`,`dtUltAlteracao`)
VALUES
("Alex Souza da Silva","alexsouza8045@gmail.com","alex","123",STR_TO_DATE("03/03/2001", "%m/%d/%Y"),STR_TO_DATE("08/03/2019", "%m/%d/%Y"));

update usuarios set dtCadastro = STR_TO_DATE( "03/03/2001", "%m/%d/%Y" ) where id = 1;
update usuarios set dtUltAlteracao = STR_TO_DATE( "08/03/2019", "%m/%d/%Y" ) where id = 1;

select * from usuarios;

create table carro (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
marca VARCHAR(100),
modelo VARCHAR(100),
cor VARCHAR(100),
anoFab VARCHAR(100)
);

drop table carro;

select * from carro;

insert carro(marca,modelo,cor,anofab) values ('Volkswagens','Polo Hatch 1.6','Vermelha','2001');
insert carro(marca,modelo,cor,anofab) values ('Fiat','Idea Attractive 1.4','Prata','2014');
insert carro(marca,modelo,cor,anofab) values ('Chevrolet','Onix Hatch 1.4','Preto','2020');
insert carro(marca,modelo,cor,anofab) values ('KIA','Sorento','Prata','2019');
insert carro(marca,modelo,cor,anofab) values ('Honda','Honda Civic 10','Preto','2020');

insert carro(marca,modelo,cor,anofab) values ('Honda','Honda CRV','Vinho','2019');
insert carro(marca,modelo,cor,anofab) values ('Fiat','Argo Hatch 1.4','Prata','2019');

update carro set anoFab = STR_TO_DATE( "2019", "%Y" ) where id = 6;

commit;


insert carro(marca,modelo,cor,anofab) values ('KIA','KiaSoul','Vermelha','2010');

insert carro(marca,modelo,cor,anofab) values ('Chevrolet','Camaro Sport','Amarelo Sport','2014');
insert carro(marca,modelo,cor,anofab) values ('Chevrolet','Chevette Hatch 2P Manual','Bege','1993');

select * from carro;

select * from carro order by 1 desc;

