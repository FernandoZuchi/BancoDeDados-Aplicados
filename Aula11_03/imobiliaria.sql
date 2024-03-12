select nome_cliente, cidade from imobiliaria.cliente;

select cpf, rg from imobiliaria.cliente where bairro="Centro";

select nome_cliente, rua from imobiliaria.cliente where cidade="São Paulo" or  datanasc>'1990-01-01';

select codigo_cliente from imobiliaria.cliente where telefone is not null and datanasc is null;

select codigo_imovel from imobiliaria.imovel where codigo_tipo is not null;

select codigo_imovel, descricao from imobiliaria.imovel	where bairro="Centro";

select codigo_imovel, descricao from imobiliaria.imovel where cidade="Rio de Janeiro" or cidade="Petropolis";

select nome_proprietario, cpf from imobiliaria.proprietario where nome_proprietario="João" and sobrenome="da Silva";

select * from imobiliaria.tipo_imovel where codigo_tipo=1;

select * from imobiliaria.locacao where valor_locacao > 2000;

select * from imobiliaria.imovel where situacao="disponível";




