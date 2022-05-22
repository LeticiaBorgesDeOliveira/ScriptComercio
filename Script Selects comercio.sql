--Exercicios praticos

--Quem vendeu menos
--ORDENANDO PELO MENOR VALOR VENDIDO EM MARÇO
select nome, marco
from vendedores
order by marco;

--SUBQUERY SELECIONANDO O MENOR VALOR DAS VENDAS DE MARCO E OS DADOS DO VENDEDOR
select nome,marco 
from vendedores
where marco = (select min(marco)from vendedores);

--SUBQUERY SELECIONANDO A MEDIA DO VALOR DAS VENDAS 

select nome, marco
from vendedores
where marco > (select avg(marco)from vendedores);

select nome, fevereiro
from vendedores
where fevereiro > (select avg(fevereiro)from vendedores);

select nome, janeiro
from vendedores
where janeiro > (select avg(janeiro)from vendedores);