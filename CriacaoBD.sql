create database BancoCentraldeFinanciamentos
default character set utf8
default collate utf8_general_ci;

use BancoCentraldeFinanciamentos;

create table CONTRATOS(
	ID int not null,
    VALOR_PARCELA decimal (10,2) not null,
    PARCELAS int,
    primary key(ID)
)default charset = utf8;

create table PESSOAS(
	ID int not null,
	NOME varchar(30) not null,
    CONTRATO_ID int not null,
    INADIMPLENTE enum('S','N') not null,
    DT_COMPLETO date,
    foreign key(CONTRATO_ID) references CONTRATOS(ID),
    primary key(ID)
)default charset = utf8;

create table PAGAMENTOS(
ID int not null,
PESSOA_ID int not null,
DT_PAGAMENTO date,
foreign key(ID) references CONTRATOS(ID),
foreign key(PESSOA_ID) references PESSOAS(ID)
)default charset = utf8;
