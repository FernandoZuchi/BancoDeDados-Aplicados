/*Achar a soma dos salários, o salário máximo, o salário minimo e 
a média salarial de todos os funcionários*/
select sum(salario) as soma_salarial, max(salario) as valor_maximo,
min(salario) as valor_minimo, round(avg(salario),2) as media_salarial
from funcionario;

/*Achar a média dos salários de acordo com o departamento 
do funcionário. Sendo a média de pelo menos 31000*/
select dnr, avg(salario) as media_salarial
from funcionario
group by dnr
having avg(salario)>=31000;

/*Recupere as informações do funcionário que possui o minimo
salário*/
select *
from funcionario
where salario = (select min(salario) from funcionario);

/*Recupere as informações do funcionário que possui o maior
salário*/
select *
from funcionario
where salario = (select max(salario) from funcionario);

/*Recupere as informações do funcionário mais velho*/
select *
from funcionario
where datanasc = (select min(datanasc) from funcionario);

/*Recupere as informações do funcionário mais novo*/
select *
from funcionario
where datanasc = (select max(datanasc) from funcionario);

/*Recupere a quantidade de funcionários que existem na empresa*/
select count(*) as qdade_funcionarios
from funcionario;

/*Recupere a quantidade de salários cadastrados*/
select count(salario) as qdade_funcionarios
from funcionario;

/*Recupere a quantidade de salários. Elimine valores repetidos */
select count(distinct salario) as qdade_funcionarios
from funcionario;

/*Traga os nome e sobrenome dos funcionários, juntamente com
suas idades*/
select pnome, unome, timestampdiff(year, datanasc, curdate()) as idade
from funcionario;

/*Traga a média de idade dos funcionários*/
select avg(idade)
from (select pnome, unome, 
timestampdiff(year, datanasc, curdate()) as idade
from funcionario) as nova_tabela;

/*Traga o nome do departamento e a quantidade de funcionários 
que ele possui, caso o departamento não tenha nenhum funcionário
associado, exiba 0 na contagem*/
select dnome, count(cpf) as qdade_func
from departamento left join funcionario on dnr = dnumero
group by dnumero;

/*Recupere o nome e sobrenome dos funcionários e a quantidade de
dependentes que eles tem, caso o funcionario não tenha nenhum
dependente, exiba 0 na contagem*/
select pnome, unome, count(fcpf) as qdade_dependentes
from funcionario left join dependente on cpf = fcpf
group by cpf;