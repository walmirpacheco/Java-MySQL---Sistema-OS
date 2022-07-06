use dbinfox;
select * from tbclientes;
-- a linha abaixo seleciona e ordena todos os clientes cadastrados
select * from tbclientes order by nomecli;
describe tbclientes;
-- o bloco de instruções abaixo faz a união de dados de duas tabelas
-- OSER é uma variável que contém os campos desejados da tabela
-- CLI é outra variável que contém os campos desejados da tabela clientes
select
OSER.os,data_os,tipo,situacao,equipamento,valor,
CLI.nomecli,fonecli
from tbos as OSER
inner join tbclientes as CLI
on (CLI.idcli = OSER.idcli);
select * from tbos;
select * from tbos where os = 8;
select * from tbusuarios;
-- a linha abaixo mostra o ultimo número gerado na OS auto_incremento
select max(os) from tbos;