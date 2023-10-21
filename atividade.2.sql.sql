CREATE DATABASE empresa_xpto;

USE empresa_xpto;

CREATE TABLE funcionarios (
Nome VARCHAR(60),
CPF CHAR(12),
Cargo VARCHAR(60),
Salario float,
Nascimento date
);

drop table funcionarios;

select * from funcionarios;

insert into funcionarios values  
(100,'João Vitor Almeida','11111111111','TI',2000.00,'1998-09-04');
insert into funcionarios values  
(101,'Paulo Vitor Araújo','22222222222','Recursos Humanos',3000.00,'1999-03-12');
insert into funcionarios values  
(102,'Millena Silva','33333333333','Produção',5000.00,'2003-06-09');

select nome,nascimento from funcionarios;  

select *  from funcionarios;


select  nome, Cargo , Salario FROM funcionarios;

-- Consulte as colunas salario e cargo de todos os funcionários
select salario, cargo FROM funcionarios;

-- Consulte todas as colunas dos funcionários que são do cargo de Arquiteto de Software
select * from funcionarios WHERE cargo = "Arquiteto de Software";

-- Consulte as colunas nome, cargo e salario dos funcionários que são Gerente de projetos
select nome, cargo, salario FROM funcionarios WHERE cargo = "Gerente de projetos";

-- Consulte as colunas salario e cargo e salario dos funcionários que são Professor;
select cargo, salario from funcionarios WHERE cargo = "Professor";

-- Consulte nome cargo e salario de quem recebe acima de 10000 reais.
select nome,cargo,salario FROM funcionarios WHERE Salario > 10000;

-- Consulte nome de quem recebe abaixo do salário mínimo no estado do RJ
select nome from funcionarios where salario  < 1320;

-- Consulte os cargos que o salário é maior ou igual a 28 mil reais
select cargo, salario FROM  funcionarios WHERE Salario >= 28.000;

-- Procure no Sistema a funcionária Monica Yates
select * FROM funcionarios WHERE Nome ='Monica Yates';

-- Procure no Sistema o cargo e salario da funcionária Jennifer Gardner;
select cargo, salario FROM funcionarios WHERE nome='Jennifer Gardner';

-- Qual é a data de nascimento do Russell Cole?
select nome, nascimento FROM funcionarios WHERE nome= 'Russell Cole';

-- Qual o nome e o cargo do funcionário com CPF 84716339531?
select nome, cargo FROM funcionarios WHERE cpf='84716339531';

-- Retorne Nome Completo, Salário e Data de nascimento dos funcionários que nasceram de 1998 em diante
select nome as 'nome completo',salario as 'salário',nascimento as 'data de nascimento' FROM funcionarios WHERE nascimento > 1998 ;

-- Consulte todas as colunas de todos os funcionários com os funcionários em ordem alfabética
select * FROM funcionarios ORDER BY nome ASC;

-- Consulte somente as colunas nome, cargo e salário de todos os funcionários ordenado pelo salário do maior para menor;
select nome as 'nome completo', cargo, salario as 'salário' FROM funcionarios ORDER BY salario desc;

-- Consulte as colunas salario e cargo de todos os funcionários ordenado do mais velho até o mais novo.
select cargo, salario as 'salário' , nascimento as 'data de nascimento' from funcionarios ORDER BY nascimento asc;

-- Consulte o nome completo e cargo dos 5 funcionários com maior salário
select nome as 'nome completo', cargo from funcionarios ORDER BY salario DESC limit 5;

-- Qual o nome do funcionário mais velho da empresa?
select nome as 'nome completo' from funcionarios order by nascimento asc limit 1;

-- Quais são os 10 menores salários da empresa?
select salario from funcionarios order by salario asc limit 10;





-- Consulte nome, salario e cargo dos funcionarios que são do cargo professor em ordem alfabetica pelo nome do professor 
SELECT nome,salario, cargo FROM funcionarios WHERE cargo ='Professor' ORDER BY nome ASC;

-- Consulte o nome, salario e cargo de funcionarios dos medicos com os 5 maiores salarios
SELECT nome,salario,cargo FROM funcionarios WHERE cargo ='Medico' ORDER BY salario desc;

-- Consulte o nome e cpf dos funcionarios no cargo de recepcionista com menor salario
SELECT nome, CPF FROM funcionarios WHERE Cargo ='Recepcionista' ORDER BY salario asc limit 1;