/*Comentário de
várias 
linhas*/

-- Comentário de linha única

/*Questão 2*/
/*Criação da tabela cidade*/
CREATE TABLE cidade (
    codigocidade DECIMAL(4),
    nomecidade VARCHAR(40),
    constraint pk_cidade primary key(codigocidade)
);
/*Descrição da tabela*/
desc cidade;

/*Questão 3*/
/*Tabela aeronave*/
alter table aeronave change fabricante nomefabricante varchar(20),
add capacidade int;

/*Tabela assento*/
desc assento;
alter table assento alter classe set default 'Econômica';
/*ou*/
alter table assento change classe classe varchar(20) default 'Econômica';
/*ou*/
alter table assento modify classe varchar(20) default 'Econômica';

/*Tabela cidade*/
alter table cidade modify nomecidade varchar(40) not null;
/*ou*/
alter table cidade change nomecidade nomecidade varchar(40) not null;
desc cidade;

/*Tabela cliente*/
desc cliente;
alter table cliente add constraint uk_cpf unique(cpf);
/*Eliminando a chave candidata*/
alter table cliente drop index uk_cpf;
alter table cliente modify endereco varchar(45);

/*Tabela reserva*/
desc reserva;
alter table reserva modify codigocliente decimal(5) not null;

/*Tabela voo*/
alter table voo change numerovoo numerovoo varchar(6) not null,
add status varchar(15);
desc voo;

/*Questão 4*/
insert into cidade values
(1234,'Rio de Janeiro'),
(2345,'São Paulo'),
(3456,'Belo Horizonte'),
(4567,'Brasília'),
(5678,'Juiz de Fora');

/*Questão 5*/
alter table voo add foreign key(cidadeorigem) references cidade(codigocidade)
on delete cascade on update cascade,
add foreign key(cidadedestino) references cidade(codigocidade) 
on delete cascade on update cascade;

/*Retirar o modo seguro do mysql*/
set sql_safe_updates = 0;

delete from cidade where codigocidade=1234;




