create database GAMES;
use Games;

create table tb_usuario(
id_usuario int primary key auto_increment,
senha_usuario varchar(30),
cd_login varchar(30)
);


create table tb_empresa(
id_empresa int primary key auto_increment,
nome varchar(30),
dt_fund date,
nr_vendas int
);

create table tb_jogos(
id_jogo int primary key auto_increment,
nome varchar(30),
dt_lancamento date,
genero varchar(30),
fk_empresa int,
foreign key (fk_empresa) references tb_empresa (id_empresa)
);