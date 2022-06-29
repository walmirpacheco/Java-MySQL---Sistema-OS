use dbinfox;
select * from tbusuarios;
describe tbusuarios; 
describe tbclientes;
select * from tbclientes;
-- a linha abaixo busa todos os nomes que começam com a letra jo
select * from tbclientes where nomecli like 'jo%';
-- na linha abaixo o as cria um apelido para os campos da tabela
select idcli as id, nomecli as nome, endcli as endereço, fonecli as telefone, emailcli as email from tbclientes;
-- a linha abaixo, busca os nomes que começa com as letras jo, mostrando o idcli, nomecli e fonecli
select idcli,nomecli,fonecli from tbclientes where nomecli like 'jo%';
-- a linha abaixo cria um apelido aos campos da tabela
select idcli as Id,nomecli as Nome, fonecli as Fone from tbclientes where nomecli like 'jo%';


