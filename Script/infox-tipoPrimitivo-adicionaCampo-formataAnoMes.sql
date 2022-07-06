use dbinfox;
describe tbos;
-- a linha abaixo altera a tabela adicionando um campo em uma determinada posição (nesse caso, depois da data_os)
alter table tbos add tipo varchar(15) not null after data_os;
alter table tbos add situacao varchar(20) not null after tipo;
select * from tbos;
select * from tbclientes;
select * from tbusuarios;
-- a linha abaixo modifiquei o tipo primitivo
alter table tbos modify column situacao varchar(30);
-- a linha abaixo formata a ordem certa do dia, mês, ano e coloca a hora sem os segundos 
select os,date_format(data_os,'%d/%m/%Y - %H:%i'),tipo,situacao,equipamento,defeito,servico,tecnico,valor,idcli from tbos where os = 2;