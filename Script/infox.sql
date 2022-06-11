-- Comentários
-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o bando de dados
use dbinfox;
-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);
-- o comando abaixo descreve a tabela
describe tbusuarios;
-- a linha abaixo insere dados na tabela (CRUD)
-- CREAT - > INSERT
insert into tbusuarios(iduser, usuario, fone, login, senha)
values(1,'Walmir Pacheco','419999-9999','walmirpacheco','123456');
-- a linha abaixo exibe as linhas da tabela (CRUD)
-- read -> select
select * from tbusuarios;
insert into tbusuarios(iduser, usuario, fone, login, senha)
values(2,'Administrador','419999-9999','admin','admin');
insert into tbusuarios(iduser, usuario, fone, login, senha)
values(3,'Bill Gates','419999-9999','bill','123456');

-- a linha abaixo modifica dados na tabela (CRUD)
-- ipdate -> update
update tbusuarios set fone='8888-8888' where iduser=2;
-- a linha abaixo apaga a linhas da tabela (CRUD)
-- delete -> delete
delete from tbusuarios where iduser=3;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);
describe tbclientes;
insert into tbclientes(nomecli, endcli, fonecli, emailcli)
values('Linus Torvalds', 'Rua Tux, 2015', '419999-9999', 'linus@linus.com'); 
select * from tbclientes;
create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);
select * from tbos;
describe tbos;
insert into tbos(equipamento, defeito, servico, tecnico, valor, idcli)
values('Notebook','Não liga','Troca da fonte','Zé',87.50,1);
-- o código abaixo traz informações de duas tabelas
select
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);

select * from tbusuarios;
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Leandro Ramos','415555-5555','leandro','123');